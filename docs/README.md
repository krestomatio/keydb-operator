## Keydb Operator

This operator simplifies the deployment and management of KeyDB, a high-performance, multi-threaded in-memory data store, within Kubernetes environments. It leverages the KeyDB project (https://github.com/EQ-Alpha/KeyDB) and offers two deployment configurations:

* **Standalone Mode:**
    * Deploys a single KeyDB instance for basic use cases.
    * Suitable for scenarios where read/write performance is the primary concern.
* **Multi-Master Mode:**
    * Deploys a cluster with multiple KeyDB instances configured for high availability and fault tolerance.
    * Enables read/write operations on all masters, providing redundancy and improved data availability.

**Key Technologies:**

* Kubernetes
* Ansible Operator SDK
* Keydb

## Installation

**Important Note:** This Keydb Operator is currently in **Beta** stage. Proceed with caution in production deployments.

1. **Install Operator:**
```bash
# Ensure prerequisites are met
kubectl apply -k https://github.com/krestomatio/keydb-operator/config/default?ref=v0.3.4
```

2. **Configure Keydb Instance:**
- Download and modify [this sample](https://raw.githubusercontent.com/krestomatio/keydb-operator/v0.3.4/config/samples/keydb_v1alpha1_keydb.yaml) file to reflect your specific instance. This file defines the desired configuration for your KeyDB deployment, including the chosen mode (standalone or multi-master).
```bash
curl -sSL 'https://raw.githubusercontent.com/krestomatio/keydb-operator/v0.3.4/config/samples/keydb_v1alpha1_keydb.yaml' -o keydb_v1alpha1_keydb.yaml
# modify keydb_v1alpha1_keydb.yaml

# for multimaster mode, use:
# curl -sSL 'https://raw.githubusercontent.com/krestomatio/keydb-operator/v0.3.4/config/samples/keydb_v1alpha1_keydb_multimaster.yaml' -o keydb_v1alpha1_keydb.yaml
```

3. **Deploy Keydb:**
- Deploy a Keydb instance using the modified configuration:
```bash
kubectl apply -f keydb_v1alpha1_keydb.yaml
```

4. **Monitor Logs:**
- Track the Keydb Operator logs for insights into the deployment process:
```bash
kubectl -n keydb-operator-system logs -l control-plane=controller-manager -c manager -f
```

- Monitor the status of your deployed Keydb instance:
```bash
kubectl get -f keydb_v1alpha1_keydb.yaml -w
```

## Uninstall

1. **Delete Keydb Instance:**
```bash
# Caution: This step leads to data loss. Proceed with caution.
kubectl delete -f keydb_v1alpha1_keydb.yaml
```

2. **Uninstall Operator:**
```bash
kubectl delete -k https://github.com/krestomatio/keydb-operator/config/default?ref=v0.3.4
```

## Configuration

Keydb custom resource (CR) can be configure via its spec field. Keydb CR spec supports all the the variables in [v1alpha1.database.keydb ansible role](https://krestomatio.com/docs/krestomatio.k8s/roles/v1alpha1.database.keydb/defaults/main/keydb) as fields. These variables can be specified directly in the Keydb CR YAML manifest file, allowing for customization of the Keydb instance during deployment. Refer to the official [v1alpha1.database.keydb ansible role documentation](https://krestomatio.com/docs/krestomatio.k8s/roles/v1alpha1.database.keydb/) for a comprehensive list of supported fields.

## Contributing

* Report bugs, request enhancements, or propose new features using GitHub issues.
