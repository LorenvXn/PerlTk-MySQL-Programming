#!/usr/bin/perl -w 

use Tk;

my $mw = new MainWindow;
$mw->geometry("400x300");

my $label=$mw->Label(-text=>"Details & modification")->pack();

my $button=$mw->Button(-text=>"Tablespace\ndetails", -background=>'grey', -foreground=>'white',
		       -command=>sub { print `perl /home/tron/Perlish/database/databasesMore.pl`})
			->pack(-side=>"top", -expand =>1 , -fill =>'x');

my $button1=$mw->Button(-text=>"Network\n infos", -background=>'grey', -foreground=>'white',
			-command=>sub{print `perl /home/tron/Perlish/database/network.pl`})
			->pack(-side=>"top", -expand => 1, -fill => 'x');

my $button2=$mw->Button(-text=>"Modify tablespace\nscripts", -background=>'grey', -foreground=>'white',
			-command=>sub{print `perl /home/tron/Perlish/database/2BeModified.pl`})
			->pack(-side=>"top", -expand=>1, -fill=>'x');

$mw->Button(-text=>'Exit', -command=>sub{ exit })->pack(-side=>"right", -anchor=>"se");

MainLoop;


