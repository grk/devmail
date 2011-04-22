ActionMailer::Base.register_interceptor(Devmail::DevelopmentMailInterceptor) if Rails.env.development?

