all: build

typst_args = --font-path ./fonts
src_file = presentation.typ

build: $(src_file)
	typst compile $^ $(typst_args)

watch:
	typst watch $(src_file) $(typst_args)

.PHONY: all build watch
