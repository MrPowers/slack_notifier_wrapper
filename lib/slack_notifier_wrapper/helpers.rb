module SlackNotifierWrapper
  module Helpers

    def execute_or_speak(method_name)
      begin
        send(method_name)
      rescue Exception => e
        attachment_message = "#{self.class}##{method_name} failed to execute"
        SlackNotifierWrapper.speak_attachments({ color: "danger", attachment_message: attachment_message })
        raise e
      end
    end

  end
end

