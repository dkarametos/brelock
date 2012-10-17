# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','brelock','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'brelock'
  s.version = Brelock::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/brelock
lib/brelock/version.rb
lib/brelock.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','brelock.rdoc']
  s.rdoc_options << '--title' << 'brelock' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'brelock'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')

  s.add_runtime_dependency('gli','2.2.1')
  s.add_runtime_dependency('configtoolkit','2.3.2')
  s.add_runtime_dependency('net-ssh','2.6.0')
  s.add_runtime_dependency('net-sftp', '2.0.5')
  s.add_runtime_dependency('celluloid','0.12.0')
  s.add_runtime_dependency('awesome_print', '1.0.2')

end
