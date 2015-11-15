.PHONY: all clean

all: ChiIHuang.pdf clean

%.pdf: %.tex
	pdflatex --file-line-error --synctex=1 $<

clean:
	rm -rf *.aux *.log *.synctex.gz *.out
