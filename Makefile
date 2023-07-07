PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.2.10
COLLECTION_VERSION ?= 0.3.17
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
