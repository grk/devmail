module Devmail
  class Interceptor
    def self.delivering_email(message)
      Rails.logger.info message.inspect
      Devmail.store_message(message)
    end
  end
end
