include ./MfCH_tab/MfCH.mk
include ./Mechanical_tab/Mechanical.mk

SRC_PATH := ./MfCH_tab
SRC_PATH += ./Mechanical_tab
vpath %.abc ${SRC_PATH}

.PHONY: all clean

all: MfCH Mechanical

MfCH: ${MfCH}

Mechanical: MajorScale Degree3456

Degree3456: ${Degree3456}

MajorScale: ${MajorScale}

%.mid: %.abc
	abc2midi $< -o $*.mid

%.eps: %.abc
	abcm2ps  $< -E -O $*_

clean:
	rm -rf ./*.eps ./*.mid ./*.tmp
