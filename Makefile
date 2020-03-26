.PHONY: clean all
OUTPUTS = index.html

all: 	$(OUTPUTS)

%.html: %.Rmd
	@rm -f $@ && echo "Compiling $<" ;
	Rscript -e "setwd('$(dir $<)');\
	library('rmarkdown');\
	render('$(notdir $<)', output_format='html_document')"

clean:
	rm -f $(OUTPUTS)
