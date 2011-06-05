Gem::Specification.new do |s|
  s.name        = "redcar_plugin"
  s.version     = "0.5.1"
  s.description = "Simple command-line utility to help you install,update and delete redcar plugins"
  s.homepage    = "https://github.com/mytrile/redcar_plugin"
  s.authors     = %w[Mitko Kostov]
  s.email       = %w[mitko.kostov@gmail.com]
  s.files       = %w[Readme.md repos.yaml redcar_plugin.gemspec bin/redcar_plugin lib/redcar_plugin.rb]
  s.executables = %[redcar_plugin]
  s.summary     = s.description
  s.add_dependency('thor', '~> 0.14.4')
end