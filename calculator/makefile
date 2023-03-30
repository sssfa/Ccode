hoc: hoc.tab.c lex.yy.c
	gcc -o hoc hoc.tab.c lex.yy.c
hoc.tab.c: hoc.y
	bison hoc.y -d
lex.yy.c: hoc.l
	flex hoc.l
clean:
	rm hoc.tab.c hoc lex.yy.c
