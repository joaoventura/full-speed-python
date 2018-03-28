all: epub pdf

epub:
	pandoc -o full-speed-python.epub \
		metadata.yaml \
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

pdf:
	pandoc -o full-speed-python.pdf \
		metadata.yaml \
		-H latex/preamble.tex \
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

clean:
	rm *.epub *.pdf
