Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-mongodb'
  s.name = 'riemann-mongodb'
  s.version = '0.3.4'
  s.author = 'Fede Borgnia'
  s.license = 'MIT'
  s.email = 'fborgnia@gmail.com'
  s.homepage = 'https://github.com/riemann/riemann-mongodb'
  s.platform = Gem::Platform::RUBY
  s.summary = 'MongoDB clients to submits metrics to Riemann.'

  s.add_dependency 'riemann-tools', '~> 0.2.18'
  s.add_dependency 'mongo', '~> 1.10.0'
  s.add_dependency 'bson_ext', '~> 1.10.0'

  s.executables |= Dir.entries('bin/')
  s.has_rdoc = false

  s.required_ruby_version = '>= 2.0.0'
end
