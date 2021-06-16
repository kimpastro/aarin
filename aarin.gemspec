# frozen_string_literal: true

require_relative "lib/aarin/version"

Gem::Specification.new do |spec|
  spec.name          = "aarin"
  spec.version       = Aarin::VERSION
  spec.authors       = ["Kim Patro"]
  spec.email         = ["kimpastro@gmail.com"]

  spec.summary       = "Ruby SDK to Aarin"
  spec.description   = "Make it easer to integrate with Aarin"
  spec.homepage      = "https://github.com/kimpastro/aarin"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.2")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kimpastro/aarin"
  spec.metadata["changelog_uri"] = "https://github.com/kimpastro/aarin/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'http', '~> 4.4'
  spec.add_development_dependency "rspec", "~> 3.10"
end
