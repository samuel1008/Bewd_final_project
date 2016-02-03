require 'twilio-ruby' 
class MapsController < ApplicationController
	
  def index
  	@contact = Contact.new
  	@contacts = Contact.all
  end



  	def send_text
		account_sid = ENV['TW_SID']
		auth_token = ENV['TW_TOKEN']
		number = ENV['TW_NUMBER']

		@contact = Contact.find(params[:id])

		# set up a client to talk to the Twilio REST API 
		@client = Twilio::REST::Client.new account_sid, auth_token 
		 
		@client.account.messages.create({
			:from => number, 
			:to => @contact.phonenumber, 
			:body => params[:body] 
		})

		redirect_to root_path
	end



end
