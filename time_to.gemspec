# frozen_string_literal: true

require_relative 'lib/time_to/version'

Gem::Specification.new do |spec|
  spec.name          = 'time_to'
  spec.version       = TimeTo::VERSION
  spec.authors       = ['Trae Robrock']
  spec.email         = ['trobrock@gmail.com']

  spec.summary       = 'A simple gem to make it easy to iterate between time objects.'
  spec.description   = 'A simple gem to make it easy to iterate between time objects.'
  spec.homepage      = 'https://github.com/trobrock/time_to'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/trobrock/time_to.git'
  spec.metadata['changelog_uri'] = 'https://github.com/trobrock/time_to/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features|\.rubocop.*)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
