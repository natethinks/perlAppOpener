#!/usr/bin/perl
use warnings;
use strict;

print "Be sure to log into the icluster prior to running script\n";

if ( !$ARGV[0] ) {
    print "Please enter args. \n\$perl appopener.pl <app> <live/beta>", "\n";
    exit;
}

if ( !$ARGV[1] ) {
    $ARGV[1] = 'live';
}

# probably want to put the accounts into an array and have a beta and live array
print "Attempting open app ", $ARGV[0], " on ", $ARGV[1], "...\n";

# open app on live brands
if ( !( $ARGV[1] eq 'beta' ) ) {

    # open app on bluehost
    my $blueAccount = (
'https://i.bluehost.com/cgi/admin/user/account/qa-betabh-cloud-selenium.com?bounce_step='
          . "$ARGV[0]" );
    system("google-chrome $blueAccount");

    # open app on hostmonster
    my $hostAccount = (
'https://i.hostmonster.com/cgi/admin/user/account/qa-livehm-shared-selenium.com?bounce_step='
          . "$ARGV[0]" );
    system("google-chrome $hostAccount");

    # open app on justhost
    my $justAccount = (
'https://i.justhost.com/cgi/admin/user/account/qa-livejh-shared-selenium.com?bounce_step='
          . "$ARGV[0]" );
    system("google-chrome $justAccount");
}

# Open app on beta brands
else {
    # open app on beta bluehost
    my $blueAccount = (
'https://i.betabh.com/cgi/admin/user/account/jake-qa-cs.com?bounce_step='
          . "$ARGV[0]" );
    system("google-chrome $blueAccount");

    # open app on beta hostmonster
    my $hostAccount = (
'https://i.betahm.com/cgi/admin/user/account/qa-betahm-gb0919.com?bounce_step='
          . "$ARGV[0]" );
    system("google-chrome $hostAccount");

    # open app on beta justhost
    my $justAccount = (
'https://i.betajh.com/cgi/admin/user/account/qa-betajh-gb0409.com?bounce_step='
          . "$ARGV[0]" );
    system("google-chrome $justAccount");
}
