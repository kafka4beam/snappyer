PROJECT = snappyer
PROJECT_DESCRIPTION = Snappy as nif for Erlang
PROJECT_VERSION = 0.0.1

ERLC_OPTS += -DAPPLICATION=$(PROJECT)
TEST_ERLC_OPTS += -DAPPLICATION=$(PROJECT)

CPPFLAGS = -Wno-sign-compare -Wno-unused-function

LDFLAGS += -shared -lstdc++

include erlang.mk


