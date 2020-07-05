PROJ_NAME=makefileSample

C_SOURCE=$(wildcard ./source/*.c)

H_SOURCE=$(wildcard ./source/*.h)

OBJ=$(subst .c,.o,$(subst source,objects,$(C_SOURCE)))

CC=gcc

CC_FLAGS=-c        \
         -W        \
		 -Wall     \
		 -ansi     \
		 -pedantic 


all: objFolder $(PROJ_NAME)

$(PROJ_NAME): $(OBJ)
	@ echo 'Building binary using GCC linker: $@'
	$(CC) $^ -o $@
	@ echo 'Finished building binary: $@'
	@ echo ' '

./objects/%.o: ./source/%.c ./source/%.h
	@ echo 'Building target using GCC linker: $@'
	$(CC) $< $(CC_FLAGS) -o $@
	@ echo ' '

./objects/main.o: ./source/main.c $(H_SOURCE)
	@ echo 'Building target using GCC linker: $@'
	$(CC) $< $(CC_FLAGS) -o $@
	@ echo ' '

objFolder:
	mkdir -p objects

clean:
	rm -rf ./objects/*.o $(PROJ_NAME) *~
	rmdir objects

.PHONY: all clean
