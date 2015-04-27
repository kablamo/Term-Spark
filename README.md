[![Build Status](https://travis-ci.org/kablamo/Term-Spark.svg?branch=master)](https://travis-ci.org/kablamo/Term-Spark) [![Coverage Status](https://img.shields.io/coveralls/kablamo/Term-Spark/master.svg)](https://coveralls.io/r/kablamo/Term-Spark?branch=master)
# NAME

Term::Spark - Display sparklines in the terminal

# SYNOPSIS

    use Term::Spark qw/show_graph/;
    binmode STDOUT, ':encoding(UTF-8)'; 
    print show_graph(
        values  => [7,3,6,9,0,1,3,5],
        max     => 7,
    );

    # The output looks like this:
    ▆▃▅█▁▁▃▄

# DESCRIPTION

This module displays sparklines in the terminal.

# METHODS

## show\_graph(values => \\@values, max => $max)

This method builds a sparklines graph and returns it as a string.

The 'values' parameter should be a list of numbers.  

The 'max' parameter is the maximum value of the graph.  Without this parameter
you cannot compare graphs because the scaling will change depending on the
data.  This parameter is optional.

# AUTHOR

Gil Gonçalves <lurst@cpan.org> (original author)

Eric Johnson (kablamo)

# SEE ALSO

[Term::Vspark](https://metacpan.org/pod/Term::Vspark) - "vertical" sparklines

Original implementation: [https://github.com/holman/spark](https://github.com/holman/spark)
