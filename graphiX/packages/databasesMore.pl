#!/usr/bin/perl -w

use Tk;
use Tk::Table;
use strict;

my $tuty = `perl /home/tron/Perlish/graphiX/packages/anydb_2.pl`;
my $tuty1 = `perl /home/tron/Perlish/graphiX/packages/anydb_1.pl`;
my $tuty2 = `perl /home/tron/Perlish/graphiX/packages/anydb.pl`;
my $tuty3 = `perl /home/tron/Perlish/graphiX/packages/anydb1.pl`;
my $tuty4 = `perl /home/tron/Perlish/graphiX/packages/anydb2.pl`;
my $tuty5 = `perl /home/tron/Perlish/graphiX/packages/anydb3.pl`;
my $tuty6 = `perl /home/tron/Perlish/graphiX/packages/anydb4.pl`;
my $tuty7 = `perl /home/tron/Perlish/graphiX/packages/anydb5.pl`;
my $tuty8 = `perl /home/tron/Perlish/graphiX/packages/anydb6.pl`;
my $tuty9 = `perl /home/tron/Perlish/graphiX/packages/anydb7.pl`;

my $mw = MainWindow->new;
$mw->title("Table Example");

my $table_frame = $mw->Frame()->pack();
my $table = $table_frame->Table(-columns => 8,
                                -rows => 4,
                                -fixedrows => 1, -fixedcolumns =>1,
                                -scrollbars => 'se',
                                -relief => 'raised',
				-takefocus =>1);

$table->put(0, 1 , header_label('productID'));
$table->put(0, 2, header_label('productCode'));
$table->put(0, 3, header_label('name'));
$table->put(0, 4, header_label('quantity'));
$table->put(0, 5, header_label('price'));


my $tmp_label = $table->Label(-text => $tuty ,
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
			   -background => 'white',
			   -relief => "groove");
$table->put(1, 5, $tmp_label);

$tmp_label = $table->Label(-text => $tuty5,
		           -padx => 2,
			   -anchor => 'w',
			   -background => 'white',
			   -relief => "groove");
$table->put(2, 1, $tmp_label);

$tmp_label=$table->Label(-text => $tuty6,
			 -padx => 2,
			 -anchor => 'w',
			 -background => 'white',
			 -relief => "groove");

$table->put(2, 2, $tmp_label);

$tmp_label=$table->Label(-text => $tuty7,
			 -padx => 2,
			 -anchor => 'w',
			 -background => 'white',
			 -relief => "groove");
$table->put(2, 3, $tmp_label);

$tmp_label=$table->Label(-text => $tuty8,
			 -padx => 2,
			 -anchor => 'w',
			 -background => 'white',
			 -relief => "groove");
$table->put(2, 4, $tmp_label);

$tmp_label=$table->Label(-text => $tuty9,
			 -padx => 2,
		         -anchor => 'w',
			 -background => 'white',
			 -relief => "groove");
$table->put(2, 5, $tmp_label);

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
