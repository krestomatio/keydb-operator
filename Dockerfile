# Stage to install krestomatio collection
FROM quay.io/operator-framework/ansible-operator:v1.21.0 AS collection

## Install krestomatio collection
ARG COLLECTION_FILE="krestomatio-k8s-master.tar.gz"
ENV COLLECTION_FILE=$COLLECTION_FILE
USER 0
COPY $COLLECTION_FILE /tmp/$COLLECTION_FILE
RUN ansible-galaxy collection install /tmp/${COLLECTION_FILE}

# Stage to build operator container
FROM quay.io/operator-framework/ansible-operator:v1.21.0

## Install kubectl
ENV KUBECTL_VERSION="1.20.7"
USER 0
RUN echo "Installing kubectl version: ${KUBECTL_VERSION}..."  && \
    curl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl
USER 1001

COPY requirements.yml ${HOME}/requirements.yml
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
    && chmod -R ug+rwx ${HOME}/.ansible

COPY watches.yaml ${HOME}/watches.yaml
COPY playbooks/ ${HOME}/playbooks/
COPY inventory.yml ${HOME}/inventory.yml

ENV ANSIBLE_INVENTORY=${HOME}/inventory.yml \
    ANSIBLE_INVENTORY_ENABLED=auto,krestomatio.k8s.inventory

# Install krestomatio collection
COPY --from=collection --chown=1001:0 ${HOME}/.ansible/collections/ansible_collections/krestomatio ${HOME}/.ansible/collections/ansible_collections/krestomatio
RUN pip install --user -r ${HOME}/.ansible/collections/ansible_collections/krestomatio/k8s/requirements.txt
