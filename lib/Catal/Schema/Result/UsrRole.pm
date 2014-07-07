use utf8;
package Catal::Schema::Result::UsrRole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Catal::Schema::Result::UsrRole

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<usr_role>

=cut

__PACKAGE__->table("usr_role");

=head1 ACCESSORS

=head2 uid

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 rid

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "uid",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "rid",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</uid>

=item * L</rid>

=back

=cut

__PACKAGE__->set_primary_key("uid", "rid");


# Created by DBIx::Class::Schema::Loader v0.07040 @ 2014-07-07 23:13:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gaIOTxL3JJIA8ZNj532Sdw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
