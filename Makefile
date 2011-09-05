CFLAGS=-O2 -Wall
LDFLAGS=-lm

all: generate analyze record playback generate_psk analyze_psk
generate: generate.o
analyze: analyze.o fourier.o
generate_psk: generate_psk.o
analyze_psk: analyze_psk.o fourier.o
record: record.o
playback: playback.o

clean:
	rm -rf *.o generate analyze record playback analyze_psk generate_psk
