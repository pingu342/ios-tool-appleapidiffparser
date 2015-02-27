#!/opt/local/bin/perl

open(FILE, "< temp.txt") or die("error :$!");

while (my $line = <FILE>) {
	chomp($line);
	if ($line eq "Deprecation") {
		$symbol = $pre_line;
		$symbol =~ s/^Modified //;
		print "'$symbol\n";
	}
	$pre_line = $line;
}
