PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.3.2
COLLECTION_VERSION ?= 0.4.6
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator

include hack/mk/main.mk
