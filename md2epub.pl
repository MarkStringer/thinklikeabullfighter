use strict;

my $mdFile = shift;
my $outFile = shift;

my $command = "pandoc $mdFile -o $outFile"."\n";

system($command);
