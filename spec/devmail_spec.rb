require 'spec_helper'

describe Devmail do
  it "should be valid" do
    Devmail.should be_a(Module)
  end

  describe "capturing emails" do
    before(:all) do
      @email = UserMailer.welcome_email.deliver
      @dm = Devmail::DevMail.last
    end

    it "should store emails in database" do
      @dm.should_not be_nil
    end

    it "should store the entire message" do
      @dm.mail.should eq(@email)
    end

    it "should extract to, from and subject" do
      @dm.to.should eq(@email.to)
      @dm.from.should eq(@email.from)
      @dm.subject.should eq(@email.subject)
    end

    it "should extract text and html parts of multipart email" do
      @dm.text_part.should eq(@email.text_part.decoded)
      @dm.html_part.should eq(@email.html_part.decoded)
    end

    it "should extract text part of non-multipart email" do
      textonly = UserMailer.text_only_email.deliver
      dm = Devmail::DevMail.last

      dm.html_part.should be_nil
      dm.text_part.should eq(textonly.decoded)
    end
  end

end
