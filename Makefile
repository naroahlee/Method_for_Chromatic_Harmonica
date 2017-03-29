
SRC_PATH := ./abc_tab
vpath %.abc ${SRC_PATH}

.PHONY: all clean

ALL =
ALL += MfCH_05_07.mid
ALL += MfCH_05_07.eps
ALL += MfCH_05_08.mid
ALL += MfCH_05_08.eps
ALL += MfCH_05_09.mid
ALL += MfCH_05_09.eps
ALL += MfCH_05_10.mid
ALL += MfCH_05_10.eps

all: ${ALL}

%.mid: %.abc
	abc2midi $< -o $*.mid

%.eps: %.abc
	abcm2ps  $< -E -O $*_

clean:
	rm -rf ./*.eps ./*.mid ./*.tmp
