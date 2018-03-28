all: epub pdf

epub:
	pandoc -o full-speed-python.epub \
		metadata.yaml \
		chapters/introduction.md \
		chapters/installation.md \

pdf:
	pandoc -o full-speed-python.pdf \
		metadata.yaml \
		-H preamble.tex \
		chapters/introduction.md \
		chapters/installation.md \

clean:
	rm *.epub *.pdf
