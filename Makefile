all: epub pdf

epub:
	pandoc -o full-speed-python.epub \
		metadata.yaml \
		chapters/introduction.md \

pdf:
	pandoc -o full-speed-python.pdf \
		-H preamble.tex \
		metadata.yaml \
		chapters/introduction.md \

clean:
	rm *.epub *.pdf
