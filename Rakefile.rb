require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-mongodb'

  s.name = 'riemann-mongodb'
  s.version = '0.0.1'
  s.author = 'Fede Borgnia'
  s.email = 'fborgnia@gmail.com'
  s.homepage = 'https://github.com/riemann/riemann-mongodb'
  s.platform = Gem::Platform::RUBY
  s.summary = 'MongoDB client that submits statistics to Riemann.'

  s.add_dependency 'riemann-tools', '>= 0.2.1'
  s.add_dependency 'mongo', '>= 1.10.0'
  s.add_dependency 'bson_ext', '>= 1.10.0'

  s.files = FileList['bin/*', 'LICENSE', 'README.md'].to_a
  s.executables |= Dir.entries('bin/')
  s.has_rdoc = false

  s.required_ruby_version = '>= 1.8.7'
end

Gem::PackageTask.new gemspec do |p|
end

RDoc::Task.new do |rd|
  rd.main = 'Riemann mongodb'
  rd.title = 'Riemann mongodb'
  rd.rdoc_dir = 'doc'
end
