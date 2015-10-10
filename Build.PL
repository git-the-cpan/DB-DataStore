use strict;
use warnings;
use Module::Build;


my $builder = Module::Build->new(
    build_requires => {
        'Test::More' => 0,
    },
    create_makefile_pl => 'traditional',
    license            => 'perl',
    module_name        => 'DB::DataStore',
    release_status     => 'stable',
    test_files         => [ 't/datastore.t', ],
    requires => {
        'perl'                  => 'v5.12',
        'Test::More'            => 0,
        'Module::Build'         => 0,
    },
    );

$builder->create_build_script();