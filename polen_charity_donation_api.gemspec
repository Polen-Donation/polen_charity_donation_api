# frozen_string_literal: true

require_relative "lib/polen_charity_donation_api/version"

Gem::Specification.new do |spec|
  spec.name          = "polen_charity_donation_api"
  spec.version       = PolenCharityDonationApi::VERSION
  spec.authors       = ["polen"]
  spec.email         = ["fernando@opolen.com.br"]

  spec.summary       = "A Polen é uma empresa especializada em intermediar doações corporativas entre empresas e instituições brasileiras do terceiro setor e em gerar transparência das doações."
  spec.description   = "A sua API de doações."
  spec.homepage      = "https://polen-donation.github.io/polen-docs/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop", "~> 1.7"
  spec.add_development_dependency "rake", "~> 13.0"

  spec.add_dependency "rest-client", "~> 2.1"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
