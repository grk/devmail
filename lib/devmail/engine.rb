require "devmail"
require "rails"
require "mongoid"

module Devmail
  require 'devmail/development_mail_interceptor.rb'

  class Engine < Rails::Engine

  end
end
