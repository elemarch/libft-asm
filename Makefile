#VARIABLES

# name and files
NAME = libfts.a
SRC =	ft_isalnum.s	ft_isalpha.s	ft_isascii.s	ft_isdigit.s\
		ft_islower.s	ft_isprint.s 	ft_isupper.s 	ft_tolower.s\
		ft_toupper.s 	ft_bzero.s 		ft_strlen.s 	ft_memcpy.s\
		ft_memset.s 	ft_puts.s 		ft_strcat.s 	ft_strdup.s\
		ft_cat.s 		ft_ispunct.s 	ft_pow.s 		ft_iscntrl.s
SRCD = ./
OBJ = $(SRC:.s=.o)
SRCF = ${addprefix $(SRCD), $(SRC)}

# compilator
CC	= clang
CFLAGS	= -Wall -Werror -Wextra -pedantic

#COMPILATION

all: $(NAME)

# for all *.o...
#  $@=.o, @<=.s
%.o: %.s	
	@printf "\033[1;34mcompiling: \033[0;34m%-41s\e[0m" "$<"
	@printf "\t\033[1;34m[✔]\033[0m\n"
	@nasm -f macho64 -o $@ $<

$(NAME): $(OBJ)
	@printf "\033[1;32m building: \033[0;32m%-41s\e[0m" "$(NAME)"
	@printf "\t\033[1;32m[✔]\033[0m\n"
	@ar -rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@printf "\033[1;31m removing: \033[0;31mobjects\033[0m"
	@printf "\t\t\t\t\t\033[1;31m[X]\033[0m\n"
	@rm -f $(OBJ)

fclean: clean
	@printf "\033[1;31m removing: \033[0;31mlib file\033[0m"
	@printf "\t\t\t\t\t\033[1;31m[X]\033[0m\n"
	@rm -f $(NAME)

re: fclean all

test: re
	@$(CC) test.c -o test -L ./ -lfts
	./test