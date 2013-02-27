use Term::Spark qw{ show_graph };

# VERSION
# PODNAME: show_graph

chomp( @ARGV = <STDIN> ) unless @ARGV;

my @list = sort { $a <=> $b } @ARGV;

print show_graph(
    'max'     => $list[-1],
    'values'  => \@ARGV,
);
