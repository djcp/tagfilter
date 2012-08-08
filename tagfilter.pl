#!/usr/bin/perl

use strict;
use warnings;
use HTML::TagFilter;
my $html;


while(<>){
        $html.= $_;
}

my $tf = HTML::TagFilter->new();

$tf->allow_tags(
    {
        a => {'any' => []}, 
        table => { 'any' => [] }, 
        tr => {'any' => [] }, 
        th => {'any' => []}, 
        td => {
                'align' => [],
                'height' => [],
                'width' => [],
                'bgcolor' => [],
                'colspan' => [],
                'rowspan' => [],
                'style' => [],
                'valign' => []
            }, 
        p => {align => []}
    }
);

print $tf->filter($html);

