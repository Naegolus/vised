
all: Main/main.pdf
	touch doc_built

Main/main.pdf:
	make -C Main

clean:
	@echo Cleaning up
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

