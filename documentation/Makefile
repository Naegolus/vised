
all: Template/main.pdf Main/main.pdf
	touch doc_built

Template/main.pdf:
	make -C Template

Main/main.pdf:
	make -C Main

clean:
	@echo Cleaning up
	make -C Template clean
	make -C Main clean
	@rm -f *.pdf
	@rm -f doc_built
	@echo done.

help:
	@echo
	@echo 'Usage: make [TARGET]'
	@echo 'TARGETS:'
	@echo '  all                  default. build all documents'
	@echo '  clean                clean Documentation directory'
	@echo '  help                 print this message'

