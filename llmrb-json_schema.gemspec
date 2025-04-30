# frozen_string_literal: true

require_relative "lib/json/schema/version"

Gem::Specification.new do |spec|
  spec.name = "llmrb-json_schema"
  spec.version = JSON::Schema::VERSION
  spec.authors = ["Antar Azri", "0x1eef"]
  spec.email = ["azantar@proton.me", "0x1eef@proton.me"]

  spec.summary = "llmrb-json_schema is a small, dependency-free " \
                 "library that can produce a JSON schema through " \
                 "the composition of simple Ruby objects."
  spec.description = spec.summary
  spec.homepage = "https://github.com/llmrb/json-schema"
  spec.license = "0BSDL"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/llmrb/json-schema"

  spec.files = Dir[
    "README.md", "LICENSE",
    "lib/*.rb", "lib/**/*.rb",
    "*.gemspec"
  ]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "standard", "~> 1.0"
end
