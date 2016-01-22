all:
	# Preliminary build to help bibtex and makeindex.
	# Compile biblography from latex/main.bib and main.aux.
	# Compile everything with updated bibtex and makeindex.
	cd latex && \
	pdflatex --output-directory ../build main.tex && \
        cd ../build  && \
        cp ../latex/main.bib .  &&\
        bibtex main.aux  &&\
        cd -  && \
	pdflatex --output-directory ../build main.tex && \
	evince ../build/main.pdf

clean:
	@ cp build/empty.txt .
	rm build/*
	@ mv empty.txt build/
