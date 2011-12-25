class SessionsController < ApplicationController
  def new
  end
  def create
     user = login(params[:email], params[:password], params[:remember_me])
     if user
        flash[:notice] = "Signed In!"
        redirect_to :controller=>:stickies, :action=>:index

     else
        flash.now.alert = "Email or password was invalid"
        render :new
     end
  end
  def destroy
     logout
     flash[:notice] = "Signed Out."
     redirect_to :controller=>:stickies, :action=>:index

  end

end
