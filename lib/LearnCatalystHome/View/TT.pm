package LearnCatalystHome::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

LearnCatalystHome::View::TT - TT View for LearnCatalystHome

=head1 DESCRIPTION

TT View for LearnCatalystHome.

=head1 SEE ALSO

L<LearnCatalystHome>

=head1 AUTHOR

kazuya,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
