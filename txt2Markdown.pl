use strict;

use Text::Markdown 'markdown';

my $textFile = shift;

open(FILE, '<:encoding(UTF-8)', $textFile) || die "Failed to open text file";

undef $/;

my $text = <FILE>;

my $html = markdown($text);

print $html;