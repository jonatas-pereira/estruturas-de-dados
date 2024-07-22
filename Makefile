# Compilador
CC = gcc

# Flags de compilação
CFLAGS = -Iinclude -Wall -Wextra -Werror

# Diretórios
SRC_DIR = src
BUILD_DIR = build
INCLUDE_DIR = include

# Arquivos fonte e objeto
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC_FILES))

# Executável
EXEC = my_program

# Regra padrão
all: $(EXEC)

# Linkagem dos arquivos objeto para criar o executável
$(EXEC): $(OBJ_FILES)
	$(CC) -o $@ $^

# Compilação dos arquivos .c para .o
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# Criação do diretório build se não existir
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Limpeza dos arquivos compilados
clean:
	rm -rf $(BUILD_DIR) $(EXEC)

# Phony targets
.PHONY: all clean
