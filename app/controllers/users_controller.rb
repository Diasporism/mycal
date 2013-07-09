class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      Calendar.create(owner_id: @user.id, owner_type: 'User')
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
end
