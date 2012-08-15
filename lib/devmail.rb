require "mail"
require "devmail/interceptor"
require "devmail/engine"
require "devmail/storage"
require "devmail/message"

module Devmail
  def self.storage
    @storage ||= Devmail::Storage.new
  end

  def self.store_message(message)
    storage.add(process(message))
  end

  def self.messages
    storage.all
  end

  def self.find_message(index)
    storage.at(index.to_i)
  end

  private
  def self.process(message)
    dm = Message.new
    dm.from = message.from.to_a
    dm.to = message.to.to_a
    dm.cc = message.cc.to_a
    dm.bcc = message.bcc.to_a
    dm.sender = message.sender.to_s
    dm.reply_to = message.reply_to.to_s
    dm.subject = message.subject.to_s
    dm.multipart = message.multipart?

    if message.multipart?
      dm.text_part = message.text_part.decoded
      dm.html_part = message.html_part.decoded
    else
      dm.text_part = message.decoded
    end

    dm.mailer_class = message.class.to_s

    dm
  end
end
