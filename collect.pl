use strict;
 
my $debug = 1;

my $orderFile = shift;

##$debug && print $orderFile."\n";

## load in the order filea
open(ORDER, '<:encoding(UTF-8)', $orderFile) || die "Failed to open text file";
my $saf = $/;

while (<ORDER>)
{
	open (FILE, $_) || die "failed to open file $_";
	$/ = undef;
	print <FILE>;
	$/ = $saf;
}

## loop through the files and concatenate all of the files

## output the file to stdout