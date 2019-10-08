/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mrouabeh <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/08 09:41:42 by mrouabeh          #+#    #+#             */
/*   Updated: 2019/10/08 09:51:28 by mrouabeh         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	size_t	i;
	char	*tmp;
	char	*s;
	char	*d;

	s = (char *)src;
	d = (char *)dst;
	i = 0;
	while (s[i] != '\0' && i < len)
	{
		tmp[i] = s[i];
		i++;
	}
	i = 0;
	while (tmp[i] != '\0')
	{
		d[i] = tmp[i];
		i++;
	}
	return (dst);
}