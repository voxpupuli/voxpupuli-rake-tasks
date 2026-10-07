# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'voxpupuli/rake/tasks/version'

Gem::Specification.new do |s|
  s.name     = 'voxpupuli-rake-tasks'
  s.version  = Voxpupuli::Rake::Tasks::VERSION
  s.authors  = 'Vox Pupuli'
  s.homepage = 'https://github.com/voxpupuli/voxpupuli-rake-tasks'
  s.summary  = 'A collection of rake tasks for building and releasing various Vox Pupuli & OpenVoxProject tools'
  s.licenses = 'Apache-2.0'

  s.required_ruby_version = '>= 3.2'

  s.files = Dir["{bin,lib,spec}/**/*"] + %w[LICENSE Rakefile README.md]

  # for our changelog generator
  s.add_dependency 'faraday-retry', '~> 2.1'
  s.add_dependency 'github_changelog_generator', '~> 1.16', '>= 1.16.4'

  # validate Ruby code
  s.add_development_dependency 'voxpupuli-rubocop', '~> 5.3.0'
end
