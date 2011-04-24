module Devmail
  class DevMail
    include Mongoid::Document
    include Mongoid::Timestamps

    field :from, :type => Array
    field :to, :type => Array
    field :cc, :type => Array
    field :bcc, :type => Array
    field :header
    field :sender
    field :subject
    field :reply_to, :type => Array
    field :text_part
    field :html_part
    field :multipart, :type => Boolean
    field :content_transfer_encoding

    field :serialized_mail

    def mail
      Mail::Message.from_yaml(self.serialized_mail)
    end

    def mail=(m)
      self.serialized_mail = m.to_yaml
    end
  end
end
