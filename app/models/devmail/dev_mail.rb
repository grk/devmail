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
    field :body
    field :multipart, :type => Boolean
    field :content_transfer_encoding
  end
end
