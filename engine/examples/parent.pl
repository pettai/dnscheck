#!/usr/bin/perl
#
# $Id$

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck;

######################################################################

my $check = DNSCheck->new({ interactive => 1 });

die "syntax error" unless ($ARGV[0]);

print $check->dns->find_parent($ARGV[0], "IN"), "\n";
