use Text::CSV;

my $csv = Text::CSV->new({ sep_char => ',' });

open(my $fh, '<', 'data.csv') or die $!;
while (my $row = $csv->getline($fh)) {
    print join(", ", @$row), "\n";
}
close $fh;
