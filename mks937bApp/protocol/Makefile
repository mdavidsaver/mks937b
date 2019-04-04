TOP = ../..

include $(TOP)/configure/CONFIG

# overrides from configure/CONFIG_COMMON in Base
INSTALL_DB = $(INSTALL_LOCATION)/protocol

DB += $(patsubst ../%, %, $(wildcard ../*.protocol))

include $(TOP)/configure/RULES
