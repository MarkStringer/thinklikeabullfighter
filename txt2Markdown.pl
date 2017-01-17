use strict;

use Text::Markdown 'markdown';

my $textFile = shift;

open(FILE, '<', $textFile) || die "Failed to open text file";

##undef $/;

while(my $text = <FILE>)
{
	my $html = markdown($text);
	print $html;
}