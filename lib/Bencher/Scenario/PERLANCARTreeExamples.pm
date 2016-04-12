package Bencher::Scenario::PERLANCARTreeExamples;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark PERLANCAR::Tree::Examples',
    modules => {
        'PERLANCAR::Tree::Examples' => {version=>1.0.4},
    },
    description => <<'_',

Created just for testing, while adding feature in `Bencher` to return result
size.

_
    participants => [
        {
            fcall_template => 'PERLANCAR::Tree::Examples::gen_sample_data(size => <size>, backend => <backend>)',
        },
    ],
    datasets => [
        {name => 'dataset', args=>{'size@'=>['tiny1', 'medium1'], 'backend@'=>['hash', 'array']}},
    ],
    include_result_size => 1,
};

1;
# ABSTRACT:
