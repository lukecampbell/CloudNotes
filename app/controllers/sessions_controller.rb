class SessionsController < ApplicationController
  def new
  end
  def create
     user = login(params[:email], params[:password], params[:remember_me])
     if user
        redirect_to :controller=>:stickies, :action=>:index, :notice=>"Signed In!"

     else
        flash.now.alert = "Email or password was invalid"
        render :new
     end
  end
  def destroy
     logout
     redirect_to :controller=>:stickies, :action=>:index, :notice=>"User Deleted"

  end

end
