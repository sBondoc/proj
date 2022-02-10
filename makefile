DIR_BIN := bin
DIR_SRC := src
DIR_LIB := lib
DIR_OBJ := obj
CFLAGS := -std=c11 -Wall -Wextra -Wpedantic
DFLAGS := -std=c11 -Wall -Wextra -Wpedantic -g -DDEBUG
SRC := app
APP := app
LIBS := 

.PHONY all: $(DIR_BIN)/$(APP)

$(DIR_BIN)/$(APP): $(DIR_SRC)/$(SRC) $(LIBS)
	$(CC) $(CFLAGS) $< $(LIBS) -o $@

.PHONY: dependencies
dependencies:
	
.PHONY: clean
clean:
	rm $(wildcard $(DIR_BIN)/*) 

