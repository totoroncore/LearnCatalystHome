use strict;
use warnings;
use Test::More;


use Catalyst::Test 'LearnCatalystHome';
use LearnCatalystHome::Controller::My::Hello;

ok( request('/my/hello')->is_success, 'Request should succeed' );
done_testing();
