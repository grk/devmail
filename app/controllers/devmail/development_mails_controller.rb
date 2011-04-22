module Devmail
  class DevelopmentMailsController < ApplicationController
    respond_to :html, :xml, :json

    def index
      @mails = DevMail.all.desc(:created_at)

      respond_with @mails
    end

    def show
      @mail = DevMail.find(params[:id])

      respond_with @mail
    end


  end
end
