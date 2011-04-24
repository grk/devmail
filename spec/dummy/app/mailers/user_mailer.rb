class UserMailer < ActionMailer::Base
  default :from => "from@example.com"

  def welcome_email
    mail(:to => "user@test.com",
         :subject => "Welcome email")
  end

  def text_only_email
    mail(:to => "user@test.com",
         :subject => "Text only")
  end
end
