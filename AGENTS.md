# Repository guidance

Before working, read these optional instruction files in order,
resolving these paths from this repository's root:

1. `.agents/organization/AGENTS.md`
2. `.agents/workspace/AGENTS.md`

Read each file if it resolves to a readable regular file.
Skip absent files; report broken or unreadable links.
Read each resolved file only once to avoid duplicate loading and cycles.

Resolve references inside imported files relative to their real target
directory after following symlinks.

Apply organization guidance, then workspace guidance, then the repository
instructions below. More specific applicable instructions take precedence.

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
