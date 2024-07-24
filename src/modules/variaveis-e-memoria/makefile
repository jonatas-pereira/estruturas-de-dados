# Compilador
CC = gcc

# Flags de compilação
CFLAGS = -Isource/include -Wall -Wextra -Werror

# Diretórios
SRC_DIR = source
BUILD_DIR = build

# Arquivos fonte e objeto
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC_FILES))

# Executável
EXEC = app

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
