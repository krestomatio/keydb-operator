PROJECT_SHORTNAME ?= keydb
VERSION ?= 0.3.16
COLLECTION_VERSION ?= 0.4.18
OPERATOR_TYPE ?= ansible
PROJECT_TYPE ?= $(OPERATOR_TYPE)-operator
COMMUNITY_OPERATOR_NAME ?= keydb-operator

include hack/mk/main.mk
