all: build

typst_args = --font-path ./fonts
src_file1 = presentation1.typ
src_file2 = presentation2.typ

build: $(src_file1) $(src_file2)
	typst compile $(src_file1) $(typst_args)
	typst compile $(src_file2) $(typst_args)

watch:
	echo "Did you mean watch1 or watch2?"

watch1:
	typst watch $(src_file1) $(typst_args)

watch2:
	typst watch $(src_file2) $(typst_args)

.PHONY: all build watch1 watch2
