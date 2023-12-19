PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.2.36
COLLECTION_VERSION ?= 0.3.59
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
