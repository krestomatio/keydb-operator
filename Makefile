PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.14
COLLECTION_VERSION ?= 0.1.25
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
