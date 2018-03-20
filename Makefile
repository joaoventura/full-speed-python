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
	pandoc -o full-speed-python.pdf \
		full-speed-python.tex \
		chapters/installation.tex \
		chapters/basic-datatypes.tex \
		chapters/functions.tex \
		chapters/loops.tex \
		chapters/dictionaries.tex \
		chapters/classes.tex \

clean:
	rm *.epub *.pdf
