#!/usr/bin/perl
use strict;
use warnings;
use FindBin '$Bin';
## ALISAM TECHNOLOGY 2015
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## DELETE / UNINSTALL TOOL
our ($uninstall, $scriptbash, $script, @TT, @c, @OTHERS, @DT);
if (defined $uninstall) {
  desclaimer();
  print $c[2]."$OTHERS[8]";
  print $c[10];
  my $resp=<STDIN>;
  chomp ($resp);
  if ($resp=~/(Y|y)/) {
    print $c[4]."$DT[31]\n";
    unlink $scriptbash if -e $scriptbash;
    my $df="/etc/bash_completion.d/atscan";
    unlink $df if -e $df;
    system "rm -rf $Bin";
    sleep(3);
    print $c[3]."$OTHERS[9]\n";
  }else{
    system("perl $script --updtd || atscan --updtd ");
    mtak(); ptak();
    print $c[4]."[!] $TT[13]\n";
  }
}
######################################################################################################################################################################################################
######################################################################################################################################################################################################
1;
######################################################################################################################################################################################################
######################################################################################################################################################################################################
