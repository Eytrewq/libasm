/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_bonus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/08 18:06:40 by ebiscara          #+#    #+#             */
/*   Updated: 2020/02/08 18:25:41 by ebiscara         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>

typedef	struct	s_list
{
	void			*data;
	struct s_list	*next;
}				t_list;

size_t		ft_strlen(const char* str);
ssize_t		ft_write(int fd, const char* str, size_t size);
ssize_t		ft_read(int fd, char* buffer, size_t size);
char		*ft_strcpy(char *dest, const char *src);
char		*ft_strdup(const char *src);
void		ft_list_push_front(t_list **begin_list, void *data);
int			ft_strcmp(char *s1, char *s2);
size_t		ft_list_size(t_list *list);

int			main(void)
{
	// ft_strlen
	printf("0: %lu, 5: %lu, 26: %lu\n",ft_strlen(""),
	ft_strlen("12345"), ft_strlen("abcdefghijklmnopqrstuvwxyz"));

	printf("0: %lu, 5: %lu, 26: %lu\n",strlen(""),
	strlen("12345"), strlen("abcdefghijklmnopqrstuvwxyz"));

	// ft_write
	ft_write(42, "Hello\n",5);
	write(42, "Hello\n",5);
	printf(" -> size : %lu\n", ft_write(0, "Hola",4));
	printf(" -> size : %lu\n", write(0, "Hola",4));

	// ft_read
	char buff[10];
	size_t b = ft_read(0, buff, 10);
	printf("ft_read output: %lu\n", b);
	b = read(0, buff, 10);
	printf("read output: %lu\n", b);

	// ft_strcpy
	char	buff_[10];
	printf("string copy: %s\n", ft_strcpy(buff_, "hey!"));
	printf("string copy: %s\n", strcpy(buff_, "hey!"));

	// ft_strdup
	char	*t;
	char	*s;
	s = ft_strdup(t = "sieg");
	s[0] = 'A';
	printf("string dup: %s != %s\n", s, t);

	// ft_strcmp
	char	*s1 = "", *s2 = "Z";
	int l = ft_strcmp(s1, s2);
	printf("%d : %d\n", strcmp(s1, s2), l);
	s1 = ""; s2 = "";
	l = ft_strcmp(s1, s2);
	printf("%d : %d\n", strcmp(s1, s2), l);

	// ft_list_push_front
	t_list	*mylist = 0;
	ft_list_push_front(&mylist, "Hello");
	printf("0 data:%s\n", mylist->data);
	ft_list_push_front(&mylist, "Hola");
	printf("0 data:%s\n", mylist->data);
	printf("1 data:%s\n", mylist->next->data);

	// ft_list_size
	printf("size: %lu, %lu\n", ft_list_size(mylist), ft_list_size(0));
}
