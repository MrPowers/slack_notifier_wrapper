# SlackNotifierWrapper

[slack-notifier](https://github.com/stevenosloan/slack-notifier) is an awesome gem for sending notifications to Slack with Ruby and this wrapper gem lets you push Slack notifications with a different syntax.


## Installation & Setup

Add this line to your application's Gemfile:

```ruby
gem 'slack_notifier_wrapper'
```

Configure the gem with default settings:

```ruby
SlackNotifierWrapper.config do
  slack_webhook_url "webhook url"
  default_channel "#some-channel"
  username "Bob"
  icon_emoji ":bob:"
end
```

Use the gem to speak messages to the default Slack channel:

```ruby
SlackNotifierWrapper.speak("This is some message")
```

Access the notifier object directly and specify overrides if you'd like to override the defaults:

```ruby
notifier = SlackNotifierWrapper.notifier
notifier.ping "Whatever", channel: "#devnull"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MrPowers/slack_notifier_wrapper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

