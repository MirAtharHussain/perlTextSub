#!/usr/bin/perl

use strict; 
use warnings; 

package Substitute; 

# constructor 
sub month_num 
{ 

	# shift will take package name 'student' 
	# and assign it to variable 'class' 
	my $class_name = shift; 
	my $self = { 
				
			}; 
	# Using bless function 
	bless $self, $class_name; 
	
	# returning object from constructor 
	return $self; 
} 

# Object creationg and constructor calling 
my $Data = student_data student("Geeks","forGeeks"); 

# Printing the data 
print "$Data->{'StudentFirstName'}\n"; 
print "$Data->{'StudentLastName'}\n"; 

