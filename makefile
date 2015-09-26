.PHONY: clean all

DOC_NAMES=brief plan manual

DOC_PATHS=$(addsuffix /main.pdf, $(addprefix build/, $(DOC_NAMES)))

all: $(DOC_PATHS)

build/%/main.pdf: src/%/main.tex
	mkdir -p build/$*
	pdflatex --output-directory build/$* $<
	pdflatex --output-directory build/$* $<
	pdflatex --output-directory build/$* $<

clean:
	rm -rf build

