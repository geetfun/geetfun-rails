require_relative "lib/geetfun/version"

Gem::Specification.new do |spec|
  spec.name        = "geetfun"
  spec.version     = Geetfun::VERSION
  spec.authors     = [ "Simon Chiu" ]
  spec.email       = [ "simon@furvur.com" ]
  spec.homepage    = "https://geetfun.com"
  spec.summary     = "A bunch of useful stuff for Rails"
  spec.description = "A bunch of useful stuff for Rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/geetfun/geetfun"
  spec.metadata["changelog_uri"] = "https://github.com/geetfun/geetfun/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.0"
end
