class SessionsController < ApplicationController

<<<<<<< HEAD
  def create
   @user = User.find_by(email: params[:user][:email])
     if @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id
       redirect_to user_path(@user)
    else
      flash.now[:notice] = "Login credentials were incorrect. Check your email and password and try again."
      @user = User.new
      render '/'
    end
  end
=======
def create
  @user = User.find_by(email: params[:user][:email])
  if @user.authenticate(params[:user][:password])
     session[:user_id] = @user.id
     redirect_to user_dashboard_path
  else
    flash.now[:notice] = "Login credentials were incorrect. Check your email and password and try again."
    @user = User.new
    # rerender the landing page
    render 'static/home'
  end
end
>>>>>>> ux_dashboard

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
