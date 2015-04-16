.PHONY: preview-brief spell-brief clean all

all: build/doc/brief/brief.pdf

build/doc/brief/brief.pdf: build/doc/brief brief/brief.tex
	pdflatex --output-directory build/doc/brief brief/brief.tex
	pdflatex --output-directory build/doc/brief brief/brief.tex
	pdflatex --output-directory build/doc/brief brief/brief.tex

build/doc/brief:
	mkdir -p build/doc/brief

preview-brief: build/doc/brief/brief.pdf
	evince build/doc/brief/brief.pdf &

spell-brief:
	aspell -t check brief/brief.tex -d es

clean:
	rm -rf build

