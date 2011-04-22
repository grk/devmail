module Devmail
  class DevelopmentMailInterceptor
    def self.delivering_email(message)
      dm = DevMail.new
      dm.from = message.from
      dm.to = message.to
      dm.cc = message.cc
      dm.bcc = message.bcc
      dm.sender = message.sender
      dm.subject = message.subject
      dm.reply_to = message.reply_to
      dm.text_part = message.text_part
      dm.html_part = message.html_part
      dm.body = message.decoded
      dm.multipart = message.multipart?
      dm.save

      message
    end
  end
end
