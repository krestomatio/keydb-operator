# Repository guidance

Follow this repository's documentation and any more specific instructions for
the files being changed.

## Repository scope

- This Ansible Operator SDK project reconciles KeyDB custom resources used by the
  LMS meta-operator. `watches.yaml`, `playbooks/`, the installed
  `krestomatio.k8s` collection, `config/crd/`, samples, and bundle metadata form
  the supported contract.
- Preserve the existing CRD group/kind, status/condition behavior, labels, and
  storage semantics. Repository-name cleanup never implies an API-group rename.

## Validation

- Initialize `hack/mk` and `molecule` submodules before using their targets.
- Run `make ansible-lint` and `make molecule` for behavior changes. When CRDs,
  RBAC, samples, or release metadata change, run the appropriate generation and
  `make bundle` validation and review generated diffs.
- Cluster deployment and release/push targets are not routine local validation.
