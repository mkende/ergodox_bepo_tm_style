ROOT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
RULES:=$(ROOT_DIR)/../bepo_tm_style/rules.mk

include $(RULES)
