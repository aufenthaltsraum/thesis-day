PDFLATEX = pdflatex

all: schedules posters

schedules: index.html schedule.pdf

posters: poster-de.pdf poster-en.pdf

index.html: index.tex content.tex
	hevea index.tex && hevea index.tex

schedule.pdf: schedule.tex content.tex
	$(PDFLATEX) schedule.tex && $(PDFLATEX) schedule.tex

poster-de.pdf: poster-de.tex
	$(PDFLATEX) poster-de.tex

poster-en.pdf: poster-en.tex
	$(PDFLATEX) poster-en.tex

clean:
	rm -f *.aux *.log *.toc *.haux *.htoc

.PHONY: clean

