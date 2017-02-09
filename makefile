build:
	ocamlc -c -for-pack pear pear/grape.ml -o pear/grape.cmo
	ocamlc -I pear -pack pear/grape.cmo -o pear.cmo
	ocamlc pear.cmo test.ml -o test.byte

clean:
	rm *.cm*
	rm pear/*.cm*
	rm test.byte
