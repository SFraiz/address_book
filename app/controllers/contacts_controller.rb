class ContactsController < ApplicationController
	def index
		@contacts = Contact.order(name: :ASC)
	end
	def create
		# Create new Contact from params[:contact]
		contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:phone_number => params[:contact][:phone_number],
			:email_address => params[:contact][:email_address])
		# Now we save the contact
    	contact.save
		# Render contact's attributes
		redirect_to("/contacts")
	end
	def contacts
		render "/index"
	end
	def profile
		@contacts = Contact.where(name: 'Fraiz')
	end
end
