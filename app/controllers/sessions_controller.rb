class SessionsController < ApplicationController
  def new
	end

	def create
	  	if params[:name].nil? || params[:name].empty?
	  		redirect_to '/login'
	  	elsif params[:name]
	  		session[:name] = params[:name]
	  		redirect_to '/'
	  	end
	end

	def destroy
		if !session[:name]
			redirect_to '/login'
		else
			session.destroy
			redirect_to '/logout'
		end
	end 	
end
