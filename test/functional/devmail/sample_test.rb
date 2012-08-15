require 'test_helper'

module Devmail
  class SampleTest < ActionMailer::TestCase
    test "test" do
      mail = Sample.test
      assert_equal "Test", mail.subject
      assert_equal ["to@example.org"], mail.to
      assert_equal ["from@example.com"], mail.from
      assert_match "Hi", mail.body.encoded
    end
  
  end
end
