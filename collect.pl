use strict;
 
my $debug = 1;

my $orderFile = shift;

my $dir = shift;

chdir($dir) or die("Failed to change to dir $dir");

## load in the order filea
open(ORDER, '<:encoding(UTF-8)', $orderFile) || die "Failed to open text file";
my $saf = $/;

while (<ORDER>)
{	
	open (FILE, "$_") || die "failed to open file $_"; 
	$/ = undef;
	print <FILE>;
	$/ = $saf;
}

