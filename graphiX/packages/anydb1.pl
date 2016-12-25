#!/usr/bin/perl -w
use DBI;
 $dbh = DBI->connect('dbi:mysql:southwind','root','M0ns00n!!!')
   or die "Connection Error: $DBI::errstr\n";
 #$sql = "select * from products";
 $sth = $dbh->prepare("
		select quantity
		from products
		where productID = ?
		" );
$sth->bind_param(1, "1001");

 $sth->execute
   or die "SQL Error: $DBI::errstr\n";
my $ref;
 while ($ref = $sth->fetchrow_arrayref) {
   print join ("||", @{$ref}), "\n";
 }

