##############################################################################
#   PRODIGAL (PROkaryotic DynamIc Programming Genefinding ALgorithm)
#   Copyright (C) 2007-2014 University of Tennessee / UT-Battelle
#
#   Code Author:  Doug Hyatt
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
##############################################################################

SHELL=	/bin/sh
CC=	gcc

SRC=	main.c \
	gene.c \
	summary.c \
	dprog.c \
	node.c \
	anonymous.c \
	sequence.c \
	training.c \
	preset.c \
	setup.c \
	bitmap.c

EXEC=	prodigal2

CFLAGS=	-O3 -Wall

LIBS=	-lm
LDFLAGS=	$(LIBS)

OBJS=	${SRC:.c=.o}

all:	$(SRC) $(EXEC)

clean:	$(OBJS)
	/bin/rm -rf $(OBJS) $(EXEC)

$(EXEC):	$(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS) $(CFLAGS)
