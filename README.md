> The Kubernetes Operator in this project is in **Alpha** version. **Use at your own risk**

A [KeyDB (Drop-In Alternative to Redis)](https://github.com/EQ-Alpha/KeyDB) Operator for Kubernetes. Create a standalone (1 replica) or a multimaster (3 replicas) [KeyDB instance](https://github.com/EQ-Alpha/KeyDB)

## Install
Check out the [sample CR](config/samples/keydb_v1alpha1_keydb.yaml). Follow the next steps to first install the KeyDB Operatorn and then a KeyDB instance:
```bash
# install the operator
make deploy

# create KeyDB instance from sample
kubectl apply -f config/samples/keydb_v1alpha1_keydb.yaml

# follow/check KeyDB operator logs
kubectl -n keydb-operator-system logs -l control-plane=controller-manager -c manager  -f

# follow sample CR status
kubectl get keydb keydb-sample -o yaml -w
```

## Uninstall
Follow the next steps to uninstall it.
```bash
# delete the KeyDB object
# CAUTION with data loss
kubectl delete -f config/samples/keydb_v1alpha1_keydb.yaml

# uninstall the operator
make undeploy
```

### Advanced Options
For different or advanced configuration via the CR spec, take a look at the [variables available](https://github.com/krestomatio/ansible-collection-k8s/blob/master/roles/v1alpha1/database/keydb/defaults/main/keydb.yml)

## Want to contribute?
* Use github issues to report bugs, send enhancement, new feature requests and questions
