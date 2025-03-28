cc=gcc
output_file = out_folder
object_file = obj_folder
all: folder_create object_create
	$(cc) $(object_file)/main.o $(object_file)/test.o -o $(output_file)/output
object_create: main.c test.c
	$(cc) -c main.c -o $(object_file)/main.o
	$(cc) -c test.c -o $(object_file)/test.o
folder_create:
	mkdir -p $(output_file)
	mkdir -p $(object_file)
clean:
	rm -rf $(output_file)
	rm -rf $(object_file)
exicute:
	./$(output_file)/output