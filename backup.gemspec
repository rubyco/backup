# encoding: utf-8

require File.expand_path(File.dirname(__FILE__) + '/lib/backup')

Gem::Specification.new do |gem|

  ##
  # General configuration / information
  gem.name        = 'backup'
  gem.version     = Backup::Version.gemspec
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = 'Michael van Rooijen'
  gem.email       = 'meskyanichi@gmail.com'
  gem.homepage    = 'http://rubygems.org/gems/backup'
  gem.summary     = 'To-Do'
  gem.description = 'To-Do'

  ##
  # Files and folder that need to be compiled in to the Ruby Gem
  gem.files         = %x[git ls-files].split("\n")
  gem.test_files    = %x[git ls-files -- {spec}/*].split("\n")
  gem.require_path  = 'lib'

  ##
  # The Backup CLI executable
  gem.executables   = ['backup']

  ##
  # Production gem dependencies
  gem.add_dependency 'thor',     ['~> 0.14.6'] # CLI
  gem.add_dependency 'fog',      ['~> 0.5.3' ] # Amazon S3, Rackspace Cloud Files
  gem.add_dependency 'dropbox',  ['~> 1.2.3' ] # Dropbox
  gem.add_dependency 'mail',     ['~> 2.2.15'] # Mail
  gem.add_dependency 'net-sftp', ['~> 2.0.5' ] # SFTP Protocol
  gem.add_dependency 'net-scp',  ['~> 1.0.4' ] # SCP Protocol

end
