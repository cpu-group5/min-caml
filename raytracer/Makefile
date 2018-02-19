OCOPT = -ccopt -O2
OCAMLBASE=/usr/local/.version/ocaml/ocaml-3.07/bin/
OCAMLC=$(OCAMLBASE)/ocamlc
OCAMLOPT=$(OCAMLBASE)/ocamlopt

all: native

clean:
	rm -f *.cm? *.o

native: min-rt
bytecode: min-rt_b

.SUFFIXES: .ml .mli .cmo .cmi .cmx

.ml.cmo:
	ocamlc -g -c -nopervasives -pp ./preprocess.sh $<

.ml.cmx:
	ocamlopt -c $(OCOPT) -nopervasives -pp ./preprocess.sh $<

.mli.cmi:
	ocamlc -g -c -nopervasives $<

min-rt.cmx: globals.cmx miniMLRuntime.cmx
min-rt.cmo: globals.cmo miniMLRuntime.cmi
globals.cmx: miniMLRuntime.cmx
globals.cmo: miniMLRuntime.cmi

min-rt_b: min-rt.cmo globals.cmo miniMLRuntime.cmo
	ocamlc -g -o min-rt_b miniMLRuntime.cmo globals.cmo min-rt.cmo 

min-rt: min-rt.cmx globals.cmx miniMLRuntime.cmx
	ocamlopt -o min-rt miniMLRuntime.cmx globals.cmx min-rt.cmx 

miniMLRuntime.cmi: miniMLRuntime.mli
	ocamlc -c miniMLRuntime.mli

miniMLRuntime.cmx: miniMLRuntime.ml miniMLRuntime.cmi
	ocamlopt -c $(OCOPT) miniMLRuntime.ml

miniMLRuntime.cmo: miniMLRuntime.ml miniMLRuntime.cmi
	ocamlc -g -c miniMLRuntime.ml

rt: rt.cmx miniMLRuntime.cmx
	ocamlopt -o rt miniMLRuntime.cmx rt.cmx

rt_b: rt.cmo miniMLRuntime.cmo
	ocamlc -o rt_b miniMLRuntime.cmo rt.cmo
