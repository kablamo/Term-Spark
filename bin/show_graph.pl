#!/usr/bin/env perl

use Term::Spark qw{ show_graph };

use strict;
use warnings;

# VERSION
# PODNAME: show_graph

binmode STDOUT, ':encoding(UTF-8)';

chomp( @ARGV = <STDIN> ) unless @ARGV;

my @list = sort { $a <=> $b } @ARGV;

print show_graph(
    'max'     => $list[-1],
    'values'  => \@ARGV,
), "\n";
