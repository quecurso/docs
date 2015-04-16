prepare:
	-mkdir -p build/doc

clean:
	rm -rf build tags

doc: prepare
	pdflatex --output-directory build/doc informe.tex
	pdflatex --output-directory build/doc informe.tex
	pdflatex --output-directory build/doc informe.tex

doc-preview: doc
	evince build/doc/informe.pdf &

doc-spell:
	aspell -t check informe.tex -d es
