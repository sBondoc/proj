DIR_BIN := bin
DIR_SRC := src
DIR_LIB := lib
DIR_OBJ := obj
EXT_APP :=
EXT_OBJ := o
EXT_LIB := so
EXT_INC := h
EXT_SRC := c
EXT_DBG := debug

CC := gcc
CFLAGS := -I -std=c99 -Wall -Wextra -pedantic
DFLAGS := -g -DDEBUG
LIBS := $(patsubst ./%,%,$(shell find -regex ".*\/$(DIR_LIB)\/\w+"))

.PHONY: all debug $(LIBS)

all: $(LIBS)
	@echo $(LIBS)

$(LIBS): 
	$(CC) $(CFLAGS)\
	$(patsubst ./%,%,$(shell find -regex ".*$@\/$(DIR_SRC)\/\w+\.c"))\
	-o $@/$(DIR_BIN)/$(patsubst $(DIR_LIB)/%,%,$@).so

%.c: %.h
