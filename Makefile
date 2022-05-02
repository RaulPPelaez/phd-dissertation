OPTIONS=-shell-escape
TOCLEAN=*aux *bbl *blg *lof *lol *out *toc *xml *lot *log *ilg *ind *acn *glo *ist main-blx.bib *acr *alg *glg *gls *pyg _minted* main.listing
all: clean
	@texfot --ignore="This is" pdflatex -interaction=batchmode  -draftmode $(OPTIONS) main	
	@texfot	--ignore="This is" pdflatex -interaction=batchmode $(OPTIONS) main
	@texfot	--ignore="This is" pdflatex -interaction=batchmode $(OPTIONS) main

verbose: clean
	pdflatex  -draftmode $(OPTIONS) main	
	pdflatex $(OPTIONS) main
	pdflatex $(OPTIONS) main

rebuild:
	@texfot	--ignore="This is" pdflatex -interaction=batchmode $(OPTIONS) main

clean:
	rm -rf $(TOCLEAN)
