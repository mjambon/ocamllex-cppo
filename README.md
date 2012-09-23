ocamllex-cppo
=============

ocamllex-cppo makes it possible to embed ocamllex definitions in an
OCaml file preprocessed with cppo.

Here are the commands to compile a source file `example.mlx`:

```
cppo -x ocamllex:ocamllex-cppo example.mlx -o example.ml
ocamlopt -o example example.ml
```

Installation
------------

```
make install
```

or

```
make PREFIX=/usr/local install   # defaults to $HOME
```

For a demo, do:

```
make demo
```
