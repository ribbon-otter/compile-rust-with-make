main : main.rs liba.rlib libb.rlib
	rustc main.rs --extern a=liba.rlib --extern b=libb.rlib -L .
liba.rlib : a.rs libutil.rlib
	rustc --crate-type rlib --extern util=libutil.rlib a.rs
libb.rlib : b.rs libutil.rlib
	rustc --crate-type rlib --extern util=libutil.rlib b.rs
libutil.rlib : util.rs
	rustc util.rs --crate-type rlib

.PHONY: clean
clean : ; rm main *.rlib
