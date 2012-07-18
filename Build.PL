use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::Github::Test',
    license             => 'perl',
    dist_author         => q{Mark Allen <mrallen1@yahoo.com>},
    dist_version_from   => 'lib/Acme/Github/Test.pm',
    configure_requires => {
        'Module::Build' => 0.38,
    },
    build_requires => {
        'Test::More'  => 0,
    },
    requires => {
        'perl' => '5.014',
    },
    add_to_cleanup      => [ 'Acme-Github-Test*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
        resources => {
            repository => 'https://github.com/mrallen1/Acme-Github-Test.git',
        },
    },
);

$builder->create_build_script();
