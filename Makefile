include ../../.make_config
htarg := ../../$(htmldir)/book

.PHONY : book
book :
	Rscript -e 'bookdown::render_book("index.Rmd", output_dir = "$(htarg)")'
	Rscript -e 'bookdown::clean_book(TRUE)'

print :
	@echo $(SRCS)
	@echo $(DTARGS)

clean :
	rm -rf $(htarg)
