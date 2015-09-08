require "slack_notifier_wrapper/version"

module SlackNotifierWrapper

  class << self

    def speak(message)
      notifier.ping message, icon_emoji: @icon_emoji
    end

    def speak_attachments(message, attachment_message, color)
      {
        text: args.fetch(:attachment_message, ""),
        color: color,
        mrkdwn_in: ["text"]
      }
      notifier.ping message, icon_emoji: @icon_emoji, attachments: [attachments]
    end

    def notifier
      @notifier ||= Slack::Notifier.new(@slack_webhook_url, channel: @default_channel, username: @username)
    end

    def config(&block)
      instance_eval(&block)
    end

    def slack_webhook_url(url)
      @slack_webhook_url = url
    end

    def default_channel(channel)
      @default_channel = channel
    end

    def username(username)
      @username = username
    end

    def icon_emoji(emoji)
      @icon_emoji = emoji
    end

  end

end
