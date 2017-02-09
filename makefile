build:
	ocamlc -a pear/grape.ml -o pear/grape.cma
	ocamlc -I pear -pack pear/grape.cma -o pear.cma
	ocamlc pear.cma test.ml -o test.byte

clean:
	rm *.cm*
	rm pear/*.cm*
	rm test.byte
