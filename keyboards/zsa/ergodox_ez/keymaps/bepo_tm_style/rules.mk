ROOT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
RULES:=$(ROOT_DIR)/../../../../ergodox_ez/keymaps/bepo_tm_style/rules.mk

include $(RULES)
