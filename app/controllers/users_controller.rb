class UsersController < ApplicationController
  respond_to :html, :json
  def new
     @user = User.new
  end
  def create
     @user = User.new(params[:user])
     if @user.save
        redirect_to :controller=>"stickies", :action=>"show", :notice=>"Signed Up!"
     else
        render :new
     end
  end
  def update
     @sticky = User.find(params[:id])
     @sticky.update_attributes(params[:sticky])
     respond_with @user
  end

end
