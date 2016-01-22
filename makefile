\all:
	cd pres &&\
	pdflatex --output-directory ../build presentation.tex &&\
	cd .. &&\
	evince build/presentation.pdf

all2:
	# Preliminary build to help bibtex and makeindex.
	# Compile biblography from latex/main.bib and main.aux.
	# Compile everything with updated bibtex and makeindex.
	# Make a separate output slides presentation.
	cd latex && \
	pdflatex --output-directory ../build main.tex && \
        cd ../build && \
        cp ../latex/main.bib .  &&\
        bibtex main.aux  &&\
        cd -  && \
	pdflatex --output-directory ../build main.tex && \
	evince ../build/main.pdf

clean:
	@ cp build/empty.txt .
	rm build/*
	@ mv empty.txt build/
