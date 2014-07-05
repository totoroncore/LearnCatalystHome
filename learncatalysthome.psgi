use strict;
use warnings;

use LearnCatalystHome;

my $app = LearnCatalystHome->apply_default_middlewares(LearnCatalystHome->psgi_app);
$app;

