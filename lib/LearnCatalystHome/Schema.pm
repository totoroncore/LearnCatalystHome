use utf8;
package LearnCatalystHome::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use Moose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces(
    result_namespace => 'Result',
    resultset_namespace => 'ResultSet',
);


# Created by DBIx::Class::Schema::Loader v0.07040 @ 2014-07-07 23:24:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4INwY6opSAD9nnTaCCGxGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
1;
