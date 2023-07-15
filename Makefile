PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.2.15
COLLECTION_VERSION ?= 0.3.24
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
