#PP = /opt/perl5_32/bin/perl
PP = /opt/perl5_64/bin/perl

all:
	$(PP) pp.pl -z 9 -S -o test test.pl
	bzip2 -9 test
	cat test.base test.bz2 > test
	$(RM) -rf test.bz2
	chmod +x test

clean:
	$(RM) -rf test
	$(RM) -rf *.par

