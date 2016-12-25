#!/usr/bin/perl -w

use Tk;
use Tk::Table;
use strict;

my $tuty0 = `perl /home/tron/Perlish/graphiX/packages/anotherONE.pl`;
my $tuty1 = `perl /home/tron/Perlish/graphiX/packages/anotherONEONE.pl`;
my $tuty2 = `perl /home/tron/Perlish/graphiX/packages/anydb.pl`;
my $tuty3 = `perl /home/tron/Perlish/graphiX/packages/anydb1.pl`;
my $tuty4 = `perl /home/tron/Perlish/graphiX/packages/anydb2.pl`;
my $tuty5 = `perl /home/tron/Perlish/graphiX/packages/anydb3.pl`;


my $mw = MainWindow->new;
$mw->title("Table Example");

my $table_frame = $mw->Frame()->pack();
my $table = $table_frame->Table(-columns => 8,
                                -rows => 4,
                                -fixedrows => 1,
                                -scrollbars => 'oe',
                                -relief => 'raised');

$table->put(0, 1 , header_label('productID'));
$table->put(0, 2, header_label('productCode'));
$table->put(0, 3, header_label('name'));
$table->put(0, 4, header_label('quantity'));
#$table->put(0, 5, header_label('price'));


my $tmp_label = $table->Label(-text => $tuty0 ,
                                  -padx => 2,
                                  -anchor => 'w',
                                  -background => 'white',
                                  -relief => "groove");
$table->put(1, 1, $tmp_label);

$tmp_label = $table->Label(-text => $tuty1 ,
                                  -padx => 2,
                                  -anchor => 'w',
                                  -background => 'white',
                                  -relief => "groove");
$table->put(1, 2, $tmp_label);

$tmp_label = $table->Label(-text => $tuty2,
			      -padx => 2,
			      -anchor => 'w',
			      -background => 'white',
			      -relief => "groove");

$table->put(1, 3, $tmp_label);
  
$tmp_label = $table->Label(-text => $tuty3,
			   -padx => 2,
			   -anchor => 'w',
			   -background => 'white',
			   -relief => "groove");
$table->put(1, 4, $tmp_label);

$tmp_label = $table->Label(-text => $tuty4,
			   -padx => 2,
			   -anchor => 'w',
			   -background => 'red',
			   -relief => "groove");
$table->put(1, 5, $tmp_label);


$table->pack();

my $button_frame = $mw->Frame( -borderwidth => 4 )->pack();
$button_frame->Button(-text => "Exit", -command => sub {exit})->pack();

MainLoop;

sub header_label {
	my $text = shift;
	my $tmp = $table->Label(
	-text => $text,
	-relief => 'raised',
	);
	return $tmp;
}
