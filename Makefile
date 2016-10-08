PROJECT = snappyer
PROJECT_DESCRIPTION = Snappy as nif for Erlang
PROJECT_VERSION = 1.1.3-1.0.3

ERLC_OPTS += -DAPPLICATION=$(PROJECT)
TEST_ERLC_OPTS += -DAPPLICATION=$(PROJECT)

SP = 2

CPPFLAGS = -Wno-sign-compare -Wno-unused-function

LDFLAGS += -shared -lstdc++

include erlang.mk

vsn-check:
	$(verbose) ./vsn-check.sh $(PROJECT_VERSION)

