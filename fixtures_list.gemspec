# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fixtures_list/version'

Gem::Specification.new do |spec|
  spec.name          = "fixtures_list"
  spec.version       = FixturesList::VERSION
  spec.authors       = ["'Alec Alba'"]
  spec.email         = ["'alecgalba@gmail.com'"]

  spec.summary       = %q{TODO: Look at some soccer fixtures.}
  spec.description   = %q{TODO: Scrape the fox sports website for fixtures of the EPL, La Liga, and Serie A leagues.}
  spec.homepage      = "TODO: https://github.com/alecgalba/fixtures-list-cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end
