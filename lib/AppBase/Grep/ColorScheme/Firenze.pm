package AppBase::Grep::ColorScheme::Firenze;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use AppBase::Grep ();

our %colors = (
    match     => "8E2800",
    label     => "B64926",
    linum     => "FFB03B",
    separator => "468966",
);

for (keys %colors) {
    $AppBase::Grep::Colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: Firenze color scheme

=head1 SYNOPSIS

On the command-line:

 % abgrep --color-scheme Firenze ...

or:

 % PERL5OPT=-MAppBase::Grep::ColorScheme::Firenze abgrep ...

Screenshot (TODO):


=head1 DESCRIPTION

Note that all scripts that use L<AppBase::Grep> can use this color scheme.
