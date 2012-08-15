module Devmail
  class Engine < ::Rails::Engine
    isolate_namespace Devmail

    initializer "devmail_interceptor" do
      ActionMailer::Base.register_interceptor(Devmail::Interceptor) if Rails.env.development?
    end
  end
end
