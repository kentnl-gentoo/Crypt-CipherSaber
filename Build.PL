use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Crypt::CipherSaber',
    license             => 'perl',
    dist_author         => 'chromatic <chromatic@wgz.org>',
    dist_version_from   => 'lib/Crypt/CipherSaber.pm',
	requires            =>
	{
		'Scalar::Util'  =>     '',
	},
    build_requires      =>
	{
        'Test::Simple'  => '0.60',
		'Test::Warn'    =>     '',
    },
    add_to_cleanup      => [ 'Crypt-CipherSaber-*' ],
	create_makefile_pl  => 'traditional',
	sign                => 1,
);

$builder->create_build_script();
