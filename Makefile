PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.8
COLLECTION_VERSION ?= 0.1.16
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
