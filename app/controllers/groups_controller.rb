class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group])
    @group.user_id = current_user.id
    if @group.save
      redirect_to group_path(@group.id), notice: 'Group successfully created!'
    else
      flash.alert = 'Please correct the errors below. Note: only Jpeg, PNG, and Gif images are allowed'
      render :new
    end
  end
end
