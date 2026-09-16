require_relative "lib/extensions/version"

Gem::Specification.new { |spec|
  spec.name = "extensions"
  spec.version = Extensions::VERSION
  spec.authors = ["Wenoa Studio"]
  spec.email = ["desarrollo@wenoa.studio"]

  spec.summary = "Core Ruby extensions used across Wenoa applications."
  spec.description = spec.summary
  spec.homepage = "https://github.com/wenoa/ruby-extensions"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.4"

  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir["lib/**/*.rb", "sig/**/*", "README.md", "LICENSE"]
  spec.require_paths = ["lib"]
}
