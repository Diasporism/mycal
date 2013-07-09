class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:session][:email], params[:session][:password])
    if user
      redirect_back_or_to root_url, :notice => 'Logged in!'
    else
      redirect_to login_path, :alert => 'Email or password was invalid'
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => 'Logged out!'
  end
end