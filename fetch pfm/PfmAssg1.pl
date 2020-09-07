=begin

Assignment 1 On perl : Fetch the nsdlnps pfm and scheme data from the https://www.npscra.nsdl.co.in/nav-search.php
Steps to be follow:
1. Select the pfm value one by one from dropdown Select the PFM and click on go
2. From above response you will get table of scheme names and scheme id. store it in an hash
3. Print each value in below order:
pfm_name :
1.scheme_name, scheme_id,nav

=cut

#!/usr/bin/perl


use v5.10;
use strict;
use warnings;
use Data::Dump;


open(DATA, "<NAV_File_02092020.out") or die "Failed to read file";

my %data; 
my @columns;


while (<DATA>)
{
    chomp;
    my @list=split(',', $_);
    for (my $i=0; $i<=$#list; $i++)
    {
        if ($.==1)  # collect the columns, if its first line.
        {
           $columns[$i] = $list[$i];
        }
        else        #collect the data, if its not the first line. 
        {
            push @{$data{@columns[$i]}}, $list[$i];
        }
    }
}
foreach (@columns)
{
    local $"="\,";
    print "$_=>@{$data{$_}}\n";
}











