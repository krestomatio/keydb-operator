PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.1.9
COLLECTION_VERSION ?= 0.1.18
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
