#!/usr/bin/env make

.PHONY: all

all:	clean stills movies

stills: tiny small huge

movies:	movietiny movielarge

clean:
		-rm mask.png
		-rm mask-tiny.png
		-rm mask-small.png
		-rm mask-huge.png
		-rm -rf movie-tiny movie-large

tiny:
	povray +WT8  +W1024 +H768  +omask-tiny.png +Imask.pov

small:
	povray +WT8  +W2048 +H1600  +omask-small.png +Imask.pov

huge:
	povray +WT8  +W8192 +H6400 +A +omask-huge.png +Imask.pov

movietiny:
	-rm -rf movie-tiny
	mkdir -p movie-tiny
	povray +WT8  +W320 +H240 +KFI1 +KFF16 +KI0 +KF2 \
		+omovie-tiny/mask-movie-tiny- +Imask-movie.pov \
		$(OPTS)

movielarge:
	povray +WT8  +W3072 +H2304 +A +KFI1 +KFF250 +KI0 +KF2 \
		+omovie-large/mask-movie-large- +Imask-movie.pov \
		$(OPTS)
