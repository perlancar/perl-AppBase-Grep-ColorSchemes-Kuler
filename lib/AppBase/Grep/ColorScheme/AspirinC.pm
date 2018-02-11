package AppBase::Grep::ColorScheme::AspirinC;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use AppBase::Grep ();

our %colors = (
    match     => "EB7F00",
    label     => "F3FFE2",
    linum     => "1695A3",
    separator => "225378",
);

for (keys %colors) {
    $AppBase::Grep::Colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: AspirinC color scheme

=head1 SYNOPSIS

On the command-line:

 % abgrep --color-scheme AspirinC ...

or:

 % PERL5OPT=-MAppBase::Grep::ColorScheme::AspirinC abgrep ...

Screenshot (TODO):


=head1 DESCRIPTION

Note that all scripts that use L<AppBase::Grep> can use this color scheme.
