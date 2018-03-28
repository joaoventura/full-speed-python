all: epub pdf

epub:
	pandoc -o full-speed-python.epub \
		metadata.yaml \

pdf:
	pandoc -o full-speed-python.pdf \
		-H preamble.tex \
		metadata.yaml \

clean:
	rm *.epub *.pdf
