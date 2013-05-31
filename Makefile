all:
	ghc -O2 Main.hs

clean:
	rm -f *.o *.hi Main
