#!/usr/bin/perl -w

use Tk;
use Tk::Table;
use strict;

my $tuty = `perl /home/tron/Perlish/graphiX/packages/anotherONE.pl`;
my $tuty1 = `perl /home/tron/Perlish/graphiX/packages/anotherONEONE.pl`;

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
