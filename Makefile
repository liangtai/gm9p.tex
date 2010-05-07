MUSIXTEX= musixtex.sh

.SUFFIXES : .mx1 .mx2 .log .tex .dvi

.tex.dvi	: $(.IMPSRC) $(.IMPSRC:S/-//) header.tex
	$(MUSIXTEX) $(.IMPSRC:R)
	rm $(.IMPSRC:R).mx1 $(.IMPSRC:R).mx2 $(.IMPSRC:R).log

.dvi.pdf	:
	dvipdfmx $(.IMPSRC:R)

CLEANFILES=	*.mx[12] *.log

.include <bsd.prog.mk>
