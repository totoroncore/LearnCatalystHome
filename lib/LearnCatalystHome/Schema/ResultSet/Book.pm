package LearnCatalystHome::Schema::ResultSet::Book;

use strict;
use warnings;
use base 'DBIx::Class::ResultSet';


sub get_avg_price {
	my ($self, $c) = @_;
	return [$self->search( undef, {
		    group_by => ['publish'],
			select => ['publish', { AVG => 'price' }],
			as => ['publish', 'avg_price'],
		})];
}




1;


