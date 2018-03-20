all: epub pdf

epub:
	pandoc -o full-speed-python.epub \
		full-speed-python.tex \
		chapters/installation.tex \
		chapters/basic-datatypes.tex \
		chapters/functions.tex \
		chapters/loops.tex \
		chapters/dictionaries.tex \
		chapters/classes.tex \

pdf:
	pdflatex full-speed-python.tex

clean:
	rm *.epub *.pdf
