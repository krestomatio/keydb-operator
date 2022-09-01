PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.15
COLLECTION_VERSION ?= 0.1.26
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
