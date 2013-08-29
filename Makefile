all: html pdf

clean:
	@rm -f bylaws.html bylaws.pdf

pdf: bylaws.txt
	@echo "Building bylaws.pdf"
	@multimarkdown -t latex bylaws.txt > bylaws.tex
	@pdflatex bylaws.tex > /dev/null
	@pdflatex bylaws.tex > /dev/null
	@rm -f bylaws.tex bylaws.aux bylaws.log bylaws.out bylaws.toc

html: bylaws.txt
	@echo "Building bylaws.html"
	@multimarkdown bylaws.txt > bylaws.html
