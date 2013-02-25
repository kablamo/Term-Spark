package Term::Spark;

use strict;
use warnings;

our @ISA = qw();

# VERSION

sub show_bar {
    my $num = shift;
    my $max = shift;

    my @graph  = qw{ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ };

    my $index = ( $num * ( scalar( @graph ) - 1 ) ) / $max;

    return $graph[ $index -1 ];
}

sub show_graph {
    my %args = @_;

    my $max    = $args{'max'}    || 0;
    my $values = $args{'values'} || [];

    my @list = sort { $a <=> $b } @ARGV;

    my $result = q{};

    for my $value ( @{ $values } ) {
        $result .= show_bar( $value, $max );
    }

    return $result;
}

1;
__END__
=encoding utf-8

=head1 NAME

Term::Spark - Perl extension for dispaying bars in the terminal

=head1 SYNOPSIS

Displays beautiful graphs to use in the terminal

=head1 DESCRIPTION

=head2 METHODS

=head1 SEE ALSO

Vertical mode: https://github.com/LuRsT/vspark
