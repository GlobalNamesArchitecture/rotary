# Rotary

[![Gem Version][1]][2]
[![Continuous Integration Status][3]][4]
[![Coverage Status][5]][6]
[![CodePolice][7]][8]
[![Dependency Status][9]][10]

WARNING: 0.0.1 is a squatting version to get a cool name -- functionality 
will follow shortly...

Rotary is a server side workers scheduler which allows to break queue 
lines into threads according to a 'unique' user id -- api key, 
IP address, etc. And executing jobs for all users at the same time instead
of 'first come first serve' basis.

There is a problem of a 'greedy user' for worker queues like resque. 
If one user decides to put 10 million jobs into the queue everyone 
else will be forced to wait. This gem creates individual queues for 
users, and takes next scheduled job from each of them in turn, no 
matter if they did submitted their jobs early or late.
  
Installation
------------

Add this line to your application's Gemfile:

    gem 'rotary'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rotary

Usage
----- 

Completely useless at the moment....

Versioning
----------

This gem is following practices of [Semantic Versioning][11]

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Copyright
---------

Authors: [Dmitry Mozzherin][12] 

Copyright (c) 2013 Marine Biological Laboratory. See LICENSE for
further details.

[1]: https://badge.fury.io/rb/rotary.png
[2]: http://badge.fury.io/rb/rotary
[3]: https://secure.travis-ci.org/GlobalNamesArchitecture/rotary.png
[4]: http://travis-ci.org/GlobalNamesArchitecture/rotary
[5]: https://coveralls.io/repos/GlobalNamesArchitecture/rotary/badge.png?branch=master
[6]: https://coveralls.io/r/GlobalNamesArchitecture/rotary?branch=master
[7]: https://codeclimate.com/github/GlobalNamesArchitecture/rotary.png
[8]: https://codeclimate.com/github/GlobalNamesArchitecture/rotary
[9]: https://gemnasium.com/GlobalNamesArchitecture/rotary.png
[10]: https://gemnasium.com/GlobalNamesArchitecture/rotary
[11]: https://github.com/GlobalNamesArchitecture/rotary/blob/master/spec/support/client_job_dummy.rb
[12]: https://github.com/GlobalNamesArchitecture/rotary
[13]: http://semver.org/
[14]: https://github.com/dimus
[15]: https://github.com/dshorthouse
