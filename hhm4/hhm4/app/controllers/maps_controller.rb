require 'twilio-ruby' 
require 'pry'

class MapsController < ApplicationController
before_filter :authenticate_user!
	def index
		 @users = User.all
    		@hash = Gmaps4rails.build_markers(@users) do |user, marker|
   		 
    	end
	end

	def search
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco', parameters)
  end

 #  	def contact
 #  		@contacts = Contact.all
 #  	end


	# def send_text
	# 	account_sid = ENV['TW_SID']
	# 	auth_token = ENV['TW_TOKEN']
	# 	number = ENV['TW_NUMBER']

	# 	@user = User.find(params[:id])

	# 	# set up a client to talk to the Twilio REST API 
	# 	@client = Twilio::REST::Client.new account_sid, auth_token 
		 
	# 	@client.account.messages.create({
	# 		:from => number, 
	# 		:to => @contact.phone, 
	# 		:body => params[:body] 
	# 	})

	# 	redirect_to new_user_session_path
	# end


end
