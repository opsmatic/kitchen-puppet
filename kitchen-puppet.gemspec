# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'kitchen-puppet/version'

Gem::Specification.new do |s|
  s.name          = 'kitchen-puppet'
  s.version       = Kitchen::Puppet::VERSION
  s.authors       = ['Neill Turner']
  s.email         = ['neillwturner@gmail.com']
  s.homepage      = 'https://github.com/neillturner/kitchen-puppet'
  s.summary       = 'puppet provisioner for test-kitchen'
  candidates = Dir.glob('{lib}/**/*') +  ['README.md', 'provisioner_options.md', 'kitchen-puppet.gemspec']
  s.files = candidates.sort
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.description = <<-EOF
== DESCRIPTION:

Puppet Provisioner for Test Kitchen

== FEATURES:

Supports puppet apply, puppet agent, hiera, hiera-eyaml, custom facts, librarian-puppet

EOF
end
