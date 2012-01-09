package Dist::Zilla::PluginBundle::LEONT::PP;
{
  $Dist::Zilla::PluginBundle::LEONT::PP::VERSION = '0.003';
}

use Moose;
extends 'Dist::Zilla::PluginBundle::LEONT::Base';
with qw/Dist::Zilla::Role::PluginBundle::Easy Dist::Zilla::Role::PluginBundle::Config::Slicer/;

my @basic = qw/GatherDir PruneCruft ManifestSkip MetaYAML License Readme ExtraTests ExecDir ShareDir Manifest TestRelease ConfirmRelease UploadToCPAN MakeMaker/;

sub configure {
	my $self = shift;

	$self->add_plugins(@basic);
	$self->SUPER::configure;
	return;
}

1;

#ABSTRACT: Plugins LeonT uses for pure perl modules



=pod

=head1 NAME

Dist::Zilla::PluginBundle::LEONT::PP - Plugins LeonT uses for pure perl modules

=head1 VERSION

version 0.003

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


