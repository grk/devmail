module Devmail
  class Message < Struct.new(:from, :to, :cc, :bcc, :sender, :reply_to,
    :subject, :multipart, :text_part, :html_part, :mailer_class)

    def summary
      "#{from.join(', ')} to #{to.join(', ')}: #{subject}"
    end
  end
end
