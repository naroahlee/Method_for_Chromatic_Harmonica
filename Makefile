
SRC_PATH := ./abc_tab
vpath %.abc ${SRC_PATH}

.PHONY: all clean

ALL =
ALL += G-Major-Scale.mid
#ALL += MfCH_04_17.mid
#ALL += MfCH_04_17.eps
#ALL += MfCH_05_07.mid
#ALL += MfCH_05_07.eps
#ALL += MfCH_05_08.mid
#ALL += MfCH_05_08.eps
#ALL += MfCH_05_09.mid
#ALL += MfCH_05_09.eps
#ALL += MfCH_05_10.mid
#ALL += MfCH_05_10.eps

all: ${ALL}

MajorScale  = C-Major-Scale.mid
MajorScale += Db-Major-Scale.mid
MajorScale += D-Major-Scale.mid
MajorScale += Eb-Major-Scale.mid
MajorScale += E-Major-Scale.mid
MajorScale += F-Major-Scale.mid
MajorScale += Fs-Major-Scale.mid
MajorScale += G-Major-Scale.mid
MajorScale += Ab-Major-Scale.mid
MajorScale += A-Major-Scale.mid
MajorScale += Bb-Major-Scale.mid
MajorScale += B-Major-Scale.mid

Major-Scale: ${MajorScale}

%.mid: %.abc
	abc2midi $< -o $*.mid

%.eps: %.abc
	abcm2ps  $< -E -O $*_

clean:
	rm -rf ./*.eps ./*.mid ./*.tmp
