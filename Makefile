NAME	=	not_wolf

BIN_DIR	=	./bin

SRC_DIR	=	./src
SRC	=	main.c	\

OBJ	=	$(SRC:%.c=$(SRC_DIR)/%.o)

CC	=	gcc

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(OBJ) -o $(BIN_DIR)/$(NAME) $(LIBS)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

debug:	CFLAGS += -O0 -s -g
debug:	re
