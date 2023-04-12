all: comp

lex.tab.c lex.tab.h:	lex.y
	bison -t -v -d lex.y

lex.yy.c: lex.l lex.tab.h
	flex lex.l

comp: lex.yy.c lex.tab.c lex.tab.h ts.c ts.h
	gcc -o comp lex.tab.c lex.yy.c ts.c 

clean:
	rm comp lex.tab.c lex.yy.c lex.tab.h lex.output

test: all
	./comp < ftest.c
