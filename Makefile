all: epub pdf

epub:
	pandoc -o full-speed-python.epub full-speed-python.tex

pdf:
	pdflatex full-speed-python.tex
	pdflatex full-speed-python.tex

clean:
	rm *.epub *.pdf
	rm chapters/*.aux
	rm *.aux *.log *.out *.toc
