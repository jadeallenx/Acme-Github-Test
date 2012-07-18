#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Acme::GitHub::Test' ) || print "Bail out!\n";
}

diag( "Testing Net::API::Gett $Acme::Github::Test::VERSION, Perl $], $^X" );
