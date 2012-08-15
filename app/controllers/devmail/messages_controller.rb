require_dependency "devmail/application_controller"

module Devmail
  class MessagesController < ApplicationController
    def index
      @messages = Devmail.messages
    end

    def show
      @message = Devmail.find_message(params[:id])
    end

    def html_part
      @message = Devmail.find_message(params[:id])
      render text: @message.html_part
    end

    def send_test
      Sample.test.deliver
      redirect_to action: :index
    end
  end
end
