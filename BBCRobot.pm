package BBCRobot;

use strict;
use warnings;

use LWP::RobotUA;

our $VERSION = sprintf "%d.%02d", '$Revision$ ' =~ /(\d+)\.(\d+)/;
our @ISA = qw(LWP::RobotUA);

my %defaults = (
		agent => 'BBC Stream Crawler (http://dave.org.uk/streams/)',
		from => 'dave@dave.org.uk',
		delay => 1/6
		);

sub new {
  my $class = shift;

  my $agent = shift || $defaults{agent};
  my $from  = shift || $defaults{from};
  my $rules = shift;

  my $ua = $class->SUPER::new($agent, $from, $rules);
  $ua->delay($defaults{delay});

  return $ua;
}

1;
