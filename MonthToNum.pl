#!/usr/bin/perl

=begin

Create a hash with month name and number ex 'Jan' => '01', read a file named 'file.txt' and print the following in the below order:-
1) No .of new lines in the file.
2) Substitute Month name with number.
3) Print the number of substitutions done above.
4) Save the substituted part in another file named 'converted.txt'
Note: Above Question, methods should be imported from other classes. Attaching file.txt

=cut


use v5.10;
use strict;
use warnings;


my $no_of_lines=0;
my $no_of_subs=0;
sub main 
{ 
    
    my $stmt='/home/ubuntu/Documents/perl/convert/file.txt';
    #my $file='/home/ubuntu/Documents/perl/convert/file1.txt';
    open(FHR, '<', $stmt) or die "Failed to open file: $stmt";

	my %mon = (Jan  => '01', Feb  => '02', Mar => '03', Apr => '04', May => '05', Jun => '06', Jul => '07', Aug => '08', Sep => '09', Oct => '10', Nov => '11', Dec => '12',);

my $key = 'Jan';
     

   while(my $String=<FHR>)
   {
	$no_of_lines++;	
	
	my $str =~ s/$key/% mon{$key}/g;
	print("$str");
	#open(FHR, '>', $file) or die "Failed to write file: $file";
   }
   print("$no_of_lines");
   #print("$no_of_subs");
close(FHR);
}
main();
