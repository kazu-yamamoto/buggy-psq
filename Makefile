all:
	ghc -O2 Main.hs

clean:
	rm *.o *.hi Main
