#
# CV Makefile
# Adrian Sosa
# 2021
#

CURDIR=$(shell pwd)
BUILD_DIR=$(CURDIR)/build

.PHONY: all softeng sre manager builddir

all: builddir | softeng sre manager

builddir:
	mkdir -p $(BUILD_DIR)

softeng: builddir
	xelatex -output-directory=$(BUILD_DIR) softeng.tex
	mv build/softeng.pdf .

sre: builddir
	xelatex -output-directory=$(BUILD_DIR) sre.tex
	mv build/sre.pdf .

manager: builddir
	xelatex -output-directory=$(BUILD_DIR) manager.tex
	mv build/manager.pdf .

clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(shell pwd)/*.pdf
