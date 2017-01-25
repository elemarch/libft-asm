/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfta.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: elemarch <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/01 19:26:56 by elemarch          #+#    #+#             */
/*   Updated: 2015/05/01 19:27:42 by elemarch         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTA_H
# define LIBFTA_H

# include <string.h>

/*
** =========================== CHECKING FUNCTIONS =========================== **
** Those functions all return 1 if rue of 0 if false.						  **
** 		BONUS: ft_isupper, ft_islower, ft_ispunct, ft_iscntrl				  **
** ========================================================================== **
*/

int		ft_isupper(int c);
int		ft_islower(int c);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_ispunct(int c);
int		ft_iscntrl(int c);

/*
** =========================== CHECKING FUNCTIONS =========================== **
** Those functions returns the c char, changed if needed.					  **
** ========================================================================== **
*/

int		ft_toupper(int c);
int		ft_tolower(int c);

/*
** =========================== POINTER FUNCTIONS ============================ **
** ft_bzero		| changes all characters of a string to 0					  **
** ft_strlen	| returns the size of a string								  **
** ft_memcpy	| copies n bytes of src into dst							  **
** ft_memset	| copies len bytes of c value into b						  **
** ft_strcat	| append s2 at the end of s1								  **
** ft_strdup	| returns a copy of s1 										  **
** ========================================================================== **
*/

void	ft_bzero(void *s, size_t n);
size_t	ft_strlen(const char *s);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memset(void *b, int c, size_t len);
char	*ft_strcat(char *s1, const char *s2);
char	*ft_strdup(const char *s1);

/*
** ========================== PRINTING FUNCTIONS ============================ **
** ft_puts		| puts the s string											  **
** ft_cat		| print a fd												  **
** ========================================================================== **
*/

int		ft_puts(const char *s);
void	ft_cat(int fd);

/*
** ======================== BONUS : MATH FUNCTIONS ========================== **
** ft_pow		| return n^p												  **
** ========================================================================== **
*/

int		ft_pow(int n, int p);

#endif
