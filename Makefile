CAIRO1_RUN = /Users/coolrc/sourcecode222/cairo-vm/cairo1-run
serrial_path = ${PWD}/target/release/example.sierra.json

run:
	@cp src/lib1.cairo src/lib.cairo
	@scarb --release build 
	@cd $(CAIRO1_RUN) && \
	  cargo run --release -- $(serrial_path) \
	  --args '[1 1 2]' \
	  --print_output --proof_mode --layout all_cairo

cairo-run:
	@scarb cairo-run -- '[[1, 1, 2]]'

run2:
	@cp src/lib2.cairo src/lib.cairo
	@scarb --release build
	@cd $(CAIRO1_RUN) && \
	  cargo run --release -- $(serrial_path) \
	  --print_output --proof_mode --layout all_cairo

cairo-run2:
	@scarb cairo-run