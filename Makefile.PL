use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Devel::LeakTrace::Fast',
    AUTHOR              => 'Andy Armstrong <andy@hexten.net>',
    VERSION_FROM        => 'lib/Devel/LeakTrace/Fast.pm',
    ABSTRACT_FROM       => 'lib/Devel/LeakTrace/Fast.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    LIBS                => [''],
    DEFINE              => '',
    INC                 => '-I. -Isupport',
    OBJECT              => 'buffer.o hash.o list.o tools.o Fast.o',
    
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Devel-LeakTrace-Fast-*' },
);