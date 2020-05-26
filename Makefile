.PHONY:	build test
DEFAULT_GOAL=	test

build: 
	true

doc:	build
	perl ../p6perl/bin/doc_inline.pl --module .
	perl ../p6perl/bin/doc_readme.pl --module . > README

test:	doc
	true
