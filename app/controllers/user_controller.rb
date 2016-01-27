class UserController < ApplicationController

  def login
		flash[:notice] = "Signed in successfully"
  end

  def new
  end


end