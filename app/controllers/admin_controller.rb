class AdminController < ApplicationController  
  def login
    if request.post?
      if params[:username] == "admin" && params[:password] == "nimda"
        session[:admin] = "admin"
        redirect_to stores_url
        #redirect_to :controller=>:home, :action=>"index"
        flash[:notice] = "Admin Logged In Successfully"
      else
        flash[:notice] = "Invalid Username/Password: Try Again"
        render :action=> :login 
      end   
    end
  end

  def logout
    session.delete(:admin)
    flash[:notice] = "Admin Logged Out Successfully"
    redirect_to :action=> :login
  end  
end
