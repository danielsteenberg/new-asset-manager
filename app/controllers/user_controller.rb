class UserController < ApplicationController

  def login
    user.current[:current_user] = @current_user
      if user && user.authenticate(params[:session][:password])
        flash[:success] = 'Signed in Successfully'
        render 'welcome'
      else
        flash[:danger] = 'Invalid email/password'
        render 'new'
      end
  end

  def new
  end
end
