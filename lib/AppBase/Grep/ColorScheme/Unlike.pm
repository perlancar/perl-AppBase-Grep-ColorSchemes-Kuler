package AppBase::Grep::ColorScheme::Unlike;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use AppBase::Grep ();

our %colors = (
    match     => "ED8C2B",
    label     => "CF4A30",
    linum     => "911146",
    separator => "88A825",
);

for (keys %colors) {
    $AppBase::Grep::Colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: Unlike color scheme

=head1 SYNOPSIS

On the command-line:

 % abgrep --color-scheme Unlike ...

or:

 % PERL5OPT=-MAppBase::Grep::ColorScheme::Unlike abgrep ...

Screenshot (TODO):


=head1 DESCRIPTION

Note that all scripts that use L<AppBase::Grep> can use this color scheme.
