package Dist::Zilla::PluginBundle::LEONT::PP;
{
  $Dist::Zilla::PluginBundle::LEONT::PP::VERSION = '0.001';
}

use Moose;
use Dist::Zilla;
with 'Dist::Zilla::Role::PluginBundle::Easy';

my @bundles = qw/Basic LEONT::Base/;

sub configure {
	my $self = shift;

	$self->add_bundle("\@$_") for @bundles;
	return;
}

1;



=pod

=head1 NAME

Dist::Zilla::PluginBundle::LEONT::PP - Plugins LeonT uses for pure perl modules

=head1 VERSION

version 0.001

=head1 DESCRIPTION

This is identical to the following setup:

    [@Basic]
	[@LEONT::Base]

=for Pod::Coverage configure

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Leon Timmermans.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

#ABSTRACT: Plugins LeonT uses for pure perl modules


