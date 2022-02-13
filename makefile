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
CFLAGS := -I -ansi -std=c99 -Wall -Wextra -pedantic
LFLAGS := -shared -fPIC
DFLAGS := -g -DDEBUG
LIBS := $(patsubst ./%,%,$(shell find -regex ".*\/$(DIR_LIB)\/\w+"))

.PHONY: all debug $(LIBS)

all: $(LIBS)
	@echo $(LIBS)

$(LIBS): 
	$(CC) $(CFLAGS) $(LFLAGS) \
	-o $@/$(DIR_BIN)/$(patsubst $(DIR_LIB)/%,%,$@).so \
	$(patsubst ./%,%,$(shell find -regex ".*$@\/$(DIR_SRC)\/\w+\.c"))

%.c: %.h
