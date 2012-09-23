ifndef PREFIX
  PREFIX = $(HOME)
endif

ifndef BINDIR
  BINDIR = $(PREFIX)/bin
endif

.PHONY: default
default: demo

example.ml: example.mlx
	cppo -x ocamllex:./ocamllex-cppo $< -o $@

example: example.ml
	ocamlopt -o example example.ml

.PHONY: demo
demo: example
	@echo "--- Demo ---"
	./example

.PHONY: install
install:
	cp ocamllex-cppo "$(BINDIR)"

.PHONY: clean
clean:
	rm -f *.cm[iox] *.o *~ example.ml example
