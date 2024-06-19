# frozen_string_literal: true

require_relative "lib/simple_ruby/version"

Gem::Specification.new do |spec|
  spec.name = "simple_ruby"
  spec.version = SimpleRuby::VERSION
  spec.authors = ["Igor"]
  spec.email = ["igor.carneiro.silva13@gmail.com"]

  spec.summary = "A simple ruby project"
  spec.description = "A simple ruby project"
  spec.homepage = "https://example.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://example.com"
  spec.metadata["changelog_uri"] = "https://example.com"

  # Specify which files should be added to the gem when it is released.
  # The .github/workflows/main.yml.gitignore.rspecGemfileREADME.mdRakefilebin/consolebin/setuplib/simple_ruby.rblib/simple_ruby/version.rbsig/simple_ruby.rbssimple_ruby.gemspecspec/simple_ruby_spec.rbspec/spec_helper.rb loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
