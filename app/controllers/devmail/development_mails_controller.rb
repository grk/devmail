module Devmail
  class DevelopmentMailsController < ApplicationController
    respond_to :html, :xml, :json

    layout "devmail/devmail"

    def index
      @mails = DevMail.all.desc(:created_at)

      respond_with @mails
    end

    def show
      @mail = DevMail.find(params[:id])

      respond_with @mail
    end

    def destroy
      @mail = DevMail.find(params[:id])
      @mail.destroy

      redirect_to development_mails_url
    end

    def clear
      DevMail.destroy_all
      redirect_to development_mails_url
    end

    def html_part
      @mail = DevMail.find(params[:id])
      render :text => @mail.html_part
    end
  end
end
