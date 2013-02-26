class SessionsController < ApplicationController
  def new
    @title = 'Login'
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      login user
      redirect_to home_path
    else
      flash.now[:error] = 'email ou password est&aacute; invalida' # Not quite right!
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to login_path
  end
end
