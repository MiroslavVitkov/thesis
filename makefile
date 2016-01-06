all:
	cd latex && \
	pdflatex --output-directory ../build main.tex && \
	evince ../build/main.pdf
