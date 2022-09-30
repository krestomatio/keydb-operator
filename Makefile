PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.17
COLLECTION_VERSION ?= 0.2.1
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
