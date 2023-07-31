PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.2.22
COLLECTION_VERSION ?= 0.3.32
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
