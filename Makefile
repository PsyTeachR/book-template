default : book

.PHONY : book zip

zip : files/book-template.zip

files/book-template.zip : clean
	rm -f files/book-template.zip
	cd ../ && zip -r book-template/files/book-template.zip book-template/* -x "*/.*"

book : files/book-template.zip
	Rscript -e 'bookdown::render_book("index.Rmd", output_dir = "docs")'

clean :
	Rscript -e 'bookdown::clean_book(TRUE)'
	rm -f book-template.rds
	rm -rf _bookdown_files/
