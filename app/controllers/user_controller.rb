class UserController < ApplicationController

  def login
		user.find_by(email: params[:session][:email].downcase)
      	if user && user.authenticate(params[:session][:password])
      	  flash[:success] = 'Signed in Successfully'

      	else
          flash[:danger] = 'Invalid email/password'
          render 'new'
  end

  def new
  end


end