
all: trac_logo/main.pdf Documentation/doc_built

trac_logo/main.pdf:
	make -C trac_logo

Documentation/doc_built:
	make -C Documentation

clean:
	make -C trac_logo clean
	make -C Documentation clean

help:
	@echo
	@echo 'Usage: make [TARGET]'
	@echo 'TARGETS:'
	@echo '  all                  default. build everything in this repository'
	@echo '  clean                clean entire repository'
	@echo '  help                 print this message'

