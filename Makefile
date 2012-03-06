LATEXSRC    = michi.tex
PDFFILE     = michi.pdf
PDFVIEWER   = /Applications/Preview.app/Contents/MacOS/Preview
LATEX       = /opt/local/bin/pdflatex 

all: $(PDFFILE)

$(PDFFILE): $(LATEXSRC)
	$(LATEX) $<

view: $(PDFFILE)
	$(PDFVIEWER) $< &

clean:
	rm -f $(PDFFILE)
