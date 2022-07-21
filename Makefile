PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.11
COLLECTION_VERSION ?= 0.1.21
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
