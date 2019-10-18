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
	chapters/coroutines.md \
	chapters/async.md \

options = metadata.yaml --highlight-style tango --number-sections

all: epub pdf

epub:
	pandoc -o full-speed-python.epub $(options) $(chapters)

pdf:
	pandoc -o full-speed-python.pdf -H tex/preamble.tex $(options) $(chapters)

clean:
	rm *.epub *.pdf
