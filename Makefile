# from https://texwiki.texjp.org/?Make#rc4136ab

TARGET := main.pdf

.PHONY: all clean distclean

all: $(TARGET)

clean:
	$(RM) *.aux *.log *.dvi

distclean: clean
	$(RM) $(TARGET)

%.pdf: %.dvi
	dvipdfmx $<

%.dvi: %.tex
	platex -interaction=batchmode $<
