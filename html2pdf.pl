use strict;

my $inputFile = shift;
my $outputFile = shift;

system ("wkhtmltopdf $inputFile $outputFile");
