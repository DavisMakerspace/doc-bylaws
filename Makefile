all: html pdf

clean:
	@rm -f bylaws.html bylaws.pdf

pdf: bylaws.md
	@echo "Building bylaws.pdf"
	@multimarkdown -t latex bylaws.md > bylaws.tex
	@pdflatex bylaws.tex > /dev/null
	@pdflatex bylaws.tex > /dev/null
	@rm -f bylaws.tex bylaws.aux bylaws.log bylaws.out bylaws.toc

html: bylaws.md
	@echo "Building bylaws.html"
	@multimarkdown bylaws.md > bylaws.html
	@python html/format_html.py bylaws.html
