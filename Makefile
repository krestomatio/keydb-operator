PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.0.28
COLLECTION_VERSION ?= 0.1.5
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
