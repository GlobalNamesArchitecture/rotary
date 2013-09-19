# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rotary/version'

Gem::Specification.new do |spec|
  spec.name          = 'rotary'
  spec.version       = Rotary::VERSION
  spec.authors       = ['Dmitry Mozzherin']
  spec.email         = ['dmozzherin@gmail.com']
  spec.description   = %q{Server side workers scheduler which allows 
                          to break queue lines into threads according 
                          to a 'unique' user id -- api key, IP address, etc.}
  spec.summary       = %q{There is a problem of a 'greedy user' for worker 
                          queues like resque. If one user decides to put
                          10 million jobs into the queue everyone else will
                          be forced to wait. This gem creates individual 
                          queues for users, and takes next scheduled job from
                          each of them in turn, no matter if they did submitted
                          their jobs early or late.}
  sp.homepage        = 'https://github.com/GlobalNamesArchitecture/rotary'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = 'rotary'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
