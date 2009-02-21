package BBCRobot;

use strict;
use warnings;

use LWP::RobotUA;

our $VERSION = 1.0;
our @ISA = qw(LWP::RobotUA);

my %defaults = (
		agent => 'BBC Stream Crawler (http://dave.org.uk/streams/)',
		delay => 3,
		);

sub new {
  my $class = shift;

  my $agent = shift || $defaults{agent};
  my $from  = $ENV{BBC_ROBOT_FROM}
    || die 'You must set the environment variable BBC_ROBOT_FROM ' .
      "to be your email address\n";
  my $rules = shift;
  my $delay = $ENV{BBC_ROBOT_DELAY} || $defaults{delay};

  my $ua = $class->SUPER::new($agent, $from, $rules);
  warn "Robot delay is $delay minute(s)\n";
  $ua->delay($delay);

  return $ua;
}

1;
