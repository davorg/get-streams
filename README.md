# DEPRECATED

This was fun while it lasted and it generated a lot of attention (not least,
from the BBC itself!)

But all things must pass. And with the arrival of the Radio iPlayer the BBC
have retired all of the audio streams which this program relied on.

Therefore this program no longer does anything useful and is only left here
for historical interest.

# get_streams

`get_streams` is a program that parses the BBC radio web site looking for
Real Audio streams of program content. The streams found are then written
to a YAML (see http://www.yaml.org/) file for later processing.

The distribution also includes a sample index.tt file which can be used
to generate a web page from the YAML data.

The intention is for people to be able to sidestep the BBC's complex
navigation and open the streams directly in RealPlayer.

The URLs of the stream may also be of use to people using something like
Ben Hammersley's RadioPod application
(see http://www.benhammersley.com/weblog/2004/11/14/releasing_radiopod.html).

If you don't want to go to all the hassle of installing and running the
program yourself, then the output will be online at

  http://dave.org.uk/streams/

# Requirements

`get_streams` is a Perl program, so you'll need Perl installed. A recent
version (at least 5.6.x) is recommended.

You'll also need the following extra Perl modules from CPAN
(http://search.cpan.org/).

* LWP::Simple
* HTML::TreeBuilder
* URI
* YAML

The index.tt file is a Template Toolkit. To use it you'll need to install
the Template Toolkit from either CPAN or http://tt2.org/. You will also
need the Template::Plugin::YAML module.

# Usage

To run `get_streams`, simply run it from the command line

  $ ./get_streams

There is one optional parameter which is the name of the YAML file to
store the date in.

  $ ./get_streams streams.yaml

If no YAML filename is given then 'streams.yaml' is used.

To use index.tt to create a web page, you can use the 'tpage' program
which is installed as part of the Template Toolkit.

  $ tpage index.tt > index.html

To read the YAML data from a different file, use the --define option.

  $ tpage --define yaml_file=another.yaml index.tt > index.html

# Bugs

Yes, it's not perfect yet. This is probably because of some flaky HTML
on the BBC pages and not because of problems with my coding ability :)

I'm working on ironing out the glitches.


# Latest Version

The latest version will always be available from

  http://dave.org.uk/code/

# Copyright

Copyright 2004, Dave Cross, All rights reserved.

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

# Author

Dave Cross <dave@dave.org.uk>

I like to hear about people using my software.
