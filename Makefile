PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.1
COLLECTION_VERSION ?= 0.1.6
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
