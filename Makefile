SRCS = ft_atoi.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_strchr.c ft_strlcat.c ft_strrchr.c ft_tolower.c ft_toupper.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c ft_strncmp.c ft_strlcpy.c ft_strnstr.c ft_calloc.c ft_strdup.c ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_putendl_fd.c ft_substr.c ft_itoa.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_split.c ft_striteri.c

OBJS = $(SRCS:.c=.o)
CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

NAME = libft.a


$(NAME):
	$(CC) $(CFLAGS) -c $(SRCS)
	ar rc $(NAME) $(OBJS)

all : $(NAME)
clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean all
