package Term::Spark;

use strict;
use warnings;
use utf8;

use Sub::Exporter -setup => {
    'exports' => [ 'show_bar', 'show_graph' ],
};

our @ISA = qw();

# VERSION
# ABSTRACT: Perl extension for dispaying bars in the terminal

sub show_bar {
    my $num = shift;
    my $max = shift;

    my @graph  = qw{ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ };

    my $index = ( $num * ( scalar( @graph ) - 1 )  ) / $max;

    return $graph[ int $index ];
}

sub show_graph {
    my %args = @_;

    my $max    = $args{'max'}    || 0;
    my $values = $args{'values'} || [];
    my $result = q{};

    for my $value ( @{ $values } ) {
        $result .= show_bar( $value, $max );
    }

    return $result;
}

1;
__END__

=head1 SYNOPSIS

    use Term::Spark qw/show_graph/;
    binmode STDOUT, ':encoding(UTF-8)'; 
    print show_graph(
        values  => [7,3,6,9,0,1,3,5],
        max     => 7,
    );

    # The output looks like this:
    ▆▃▅█▁▁▃▄


=head1 DESCRIPTION

This module displays sparklines in the terminal.

Note that because the sparklines are built from utf8 characters, users must
setup UTF-8 encoding for STDOUT if they wish to print the output.  

=head1 METHODS

=head2 show_graph(values => \@values, max => $max)

This method builds a sparklines graph and returns it as a string.

The 'values' parameter should be a list of numbers.  

The 'max' parameter is the maximum value of the graph.  Without this parameter
you cannot compare graphs because the scaling will change depending on the
data.  This parameter is optional.

=head1 SEE ALSO

L<Term::Vspark> - "vertical" sparklines

Original implementation: L<https://github.com/holman/spark>
