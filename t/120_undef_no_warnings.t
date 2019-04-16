use strict;
use warnings;

use Cpanel::JSON::XS;
use Cpanel::JSON::XS::Type;
use Test::Warnings;

use Test::More tests => 4;

my $cjson = Cpanel::JSON::XS->new->canonical->allow_nonref;

is($cjson->encode(undef, JSON_TYPE_BOOL), 'false');
is($cjson->encode(undef, JSON_TYPE_INT), '0');
is($cjson->encode(undef, JSON_TYPE_STRING), '""');
