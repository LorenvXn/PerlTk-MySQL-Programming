#!/usr/bin/perl -w
use DBI;

##com

 $dbh = DBI->connect('dbi:mysql:southwind','root','M0ns00n!!!')
   or die "Connection Error: $DBI::errstr\n";
 $sth = $dbh->prepare("
		select price
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


