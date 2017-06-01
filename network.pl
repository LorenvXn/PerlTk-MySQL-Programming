#!/usr/bin/perl -w

use Tk;
use Tk::Table;
use strict;

my $stuffy = `perl -e 'exec("./stuff_tough.pl");'`;

my $mw=MainWindow->new;
#my $mw->title("Netvoooorks iZ eviiil");


my $table_frame = $mw->Frame()->pack();
my $table = $table_frame->Table(-columns => 2,
                                -rows => 3,
                                -fixedrows => 1, -fixedcolumns =>1,
                                -scrollbars => 'se',
                                -relief => 'raised',
				-takefocus =>1);

$table->put(0, 1 , header_label('hostname IP'));
$table->put(0, 2, header_label('packetZ sent'));
my $tmp_label = $table->Label(-text => $stuffy ,
                                  -padx => 2,
                                  -anchor => 'w',
                                  -background => 'white',
                                  -relief => "groove");
$table->put(1, 1, $tmp_label);

$tmp_label = $table->Label(-text => $stuffy ,
                                  -padx => 2,
                                  -anchor => 'w',
                                  -background => 'white',
                                  -relief => "groove");
$table->put(1, 2, $tmp_label);

$tmp_label = $table->Label(-text => $stuffy,
			      -padx => 2,
			      -anchor => 'w',
			      -background => 'white',
			      -relief => "groove");
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

 
