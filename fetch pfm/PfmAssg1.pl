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
my @columns = ('Data','PfmName','Bank','Scheme_id','Scheme_name','nav');


while (<DATA>)
{
    chomp;
    my @list=split(',', $_);
    for (my $i=0; $i<=$#list; $i++)
    {
        @columns[$i];
               
        push @{$data{@columns[$i]}}, $list[$i];
        
    }
}
foreach (@columns)
{
    local $"="\,";
    print "$_=>@{$data{$_}}\n";
}











