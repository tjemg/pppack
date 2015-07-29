all:
	pp -z 9 -o test test.pl
	bzip2 -9 test
	cat test.base test.bz2 > test
	$(RM) -rf test.bz2
	chmod +x test

clean:
	$(RM) -rf test

