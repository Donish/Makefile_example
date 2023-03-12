TARGET = MyProject
CC = g++

PREF_SRC = ./src/
PREF_OBJ = .\obj\\

SRC = $(wildcard $(PREF_SRC)*.cpp)
OBJ = $(patsubst $(PREF_SRC)%.cpp, $(PREF_OBJ)%.o, $(SRC))

$(TARGET) : $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# test.o : test.cpp
# 	$(CC) -c test.cpp -o test.o

# mystring.o : mystring.cpp
# 	$(CC) -c mystring.cpp -o mystring.o

# закоменченное заменили на это
$(PREF_OBJ)%.o : $(PREF_SRC)%.cpp
	$(CC) -c $< -o $@

clean : 
	del $(TARGET).exe $(PREF_OBJ)*.o

# type "make" to build and "make clean" to clean