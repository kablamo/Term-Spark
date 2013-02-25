# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Term-Spark.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok('Term::Spark') };

#chomp( @ARGV = <STDIN> ) unless @ARGV;
#
#my @list = sort { $a <=> $b } @ARGV;
#
#print Term::Spark::show_graph(
#    'max'     => $list[-1],
#    'values'  => \@ARGV,
#);
