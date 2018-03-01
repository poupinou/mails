class MailsController < ApplicationController
	respond_to :html, :js

	def index
		@mails = Mail.all

		  respond_to do |format|
    format.html
    format.json
  end

end

def new
	@mails = Mail.create
end

def show
	@mails = Mail.find(params[:id])
end

	def destroy
		@mails = Mail.find(params[:id])
		@mails.destroy
		@mails = Mail.all
	end
end
