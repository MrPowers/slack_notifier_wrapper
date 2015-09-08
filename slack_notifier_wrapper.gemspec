# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack_notifier_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "slack_notifier_wrapper"
  spec.version       = SlackNotifierWrapper::VERSION
  spec.authors       = ["MrPowers"]
  spec.email         = ["matthewkevinpowers@gmail.com"]

  spec.summary       = %q{A wrapper around the slack-notifier gem that makes it easier to set default values}
  spec.description   = %q{Set default values for the slack_webhook_url, the channel, username, and icon_emoji to clean up your codebase}
  spec.homepage      = "https://github.com/mrpowers/slack_notifier_wrapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'slack-notifier', "~> 1.3"
end
