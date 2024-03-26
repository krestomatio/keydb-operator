PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.2.46
COLLECTION_VERSION ?= 0.4.2
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
