chapters = \
	chapters/introduction.md \
	chapters/installation.md \
	chapters/basic-datatypes.md \
	chapters/lists.md \
	chapters/functions.md \
	chapters/loops.md \
	chapters/dictionaries.md \
	chapters/classes.md \
	chapters/iterators.md \
	chapters/generators.md \

options = --highlight-style tango

all: epub pdf

epub:
	pandoc -o full-speed-python.epub metadata.yaml $(options) $(chapters)

pdf:
	pandoc -o full-speed-python.pdf metadata.yaml -H tex/preamble.tex $(options) $(chapters)

clean:
	rm *.epub *.pdf
