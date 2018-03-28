all: epub pdf

epub:
	pandoc -o full-speed-python.epub \
		metadata.yaml \
		chapters/introduction.md \
		chapters/installation.md \
		chapters/basic-datatypes.md \
		chapters/lists.md \

pdf:
	pandoc -o full-speed-python.pdf \
		metadata.yaml \
		-H preamble.tex \
		chapters/introduction.md \
		chapters/installation.md \
		chapters/basic-datatypes.md \
		chapters/lists.md \

clean:
	rm *.epub *.pdf
