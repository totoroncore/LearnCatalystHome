package LearnCatalystHome::Controller::My::Hello;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }


use LearnCatalystHome::Schema::ResultSet::Book;


=head1 NAME

LearnCatalystHome::Controller::My::Hello - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched LearnCatalystHome::Controller::My::Hello in My::Hello.');
}

# add path
sub intro :Local {
    my ( $self, $c ) = @_;
	$c->stash->{msg} = 'HelloWorldView';
}

sub list :Local {
	my ($self, $c) = @_;
	$c->stash->{title} = 'BookListView';
	$c->stash->{list} = [$c->model('LearnCatalystHomeDB::Book')->all];
}

sub avg_book_list :Local {
	my ($self, $c) = @_;
	$c->stash->{list} = $c->model('LearnCatalystHomeDB::Book')->get_avg_price;
}

=encoding utf8

=head1 AUTHOR

kazuya,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
