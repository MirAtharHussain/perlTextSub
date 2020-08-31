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

package MonthToNum;#For creating class in perl

our $no_of_lines=0;#To count no of new lines present in text file
our $no_of_subs=0;#To count no of substitution done in file

our %mon =     (Jan  => '01', Feb  => '02',
 		Mar => '03', Apr => '04', 
		May => '05', Jun => '06', 
		Jul => '07', Aug => '08', 
		Sep => '09', Oct => '10',
 		Nov => '11', Dec => '12',);#Created Hash


sub readFile{

 	my $stmt='/home/ubuntu/Documents/perl/convert/file.txt';
  	open(FHR, '<', $stmt) or die "Failed to open file: $stmt";
	open(REPLACE, ">>file1.txt") or die "Failed to write file";
  	#my @lines = <FHR>;
  	

}


sub rdLine                                                    #Readline Function
{
        readFile();                                           #Calling File Open Function 
	while(<FHR>){
		$no_of_lines++;
	}
	print("No of new lines present in file: $no_of_lines\n");
}
rdLine();

sub substitute{

	readFile();
	while(<FHR>)
             {
              if($_=~s/Jan/$mon{'Jan'}/i)
	         {
	          print REPLACE $_;
	          $no_of_subs++;	  
	         }
  
             elsif($_=~s/Feb/$mon{'Feb'}/i)
	        {
	         print REPLACE $_;
	         $no_of_subs++;	  
	        }
	 
             elsif($_=~s/Mar/$mon{'Mar'}/i)
	        {
       	         print REPLACE $_;
	         $no_of_subs++;	  
	        }

             elsif($_=~s/Apr/$mon{'Apr'}/i)
	        {
	         print REPLACE $_;
	         $no_of_subs++;	  
	        }

            elsif($_=~s/May/$mon{'May'}/i)
	       {
                print REPLACE $_;
	        $no_of_subs++;	  
	       }

            elsif($_=~s/Jun/$mon{'Jun'}/i)
	       {
       	        print REPLACE $_;
	        $no_of_subs++;	  
	       }

           elsif($_=~s/Jul/$mon{'Jul'}/i)
	      {
       	       print REPLACE $_;
	       $no_of_subs++;	  
	      }

           elsif($_=~s/Aug/$mon{'Aug'}/i)
	      {
               print REPLACE $_;
	       $no_of_subs++;	  
	      }

           elsif($_=~s/Sep/$mon{'Sep'}/i)
	      {
       	       print REPLACE $_;
	       $no_of_subs++;	  
	      }

           elsif($_=~s/Oct/$mon{'Oct'}/i)
	     {
       	      print REPLACE $_;
	      $no_of_subs++;	  
	     }

          elsif($_=~s/Nov/$mon{'Nov'}/i)
	    {
       	     print REPLACE $_;
	     $no_of_subs++;	  
	    }
              
         elsif($_=~s/Dec/$mon{'Dec'}/i)
	    {
       	     print REPLACE $_;
	     $no_of_subs++;	  
	    }

         else 
	     {
	       next;
             }
  }
print("No of Substitution done in above text file is : $no_of_subs\n");
}  
substitute();  	

