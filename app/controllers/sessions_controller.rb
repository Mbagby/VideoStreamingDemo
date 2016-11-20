class SessionsController < ApplicationController
  def login
    render :layout => false 
  end

  def signup
    @user = User.new
    render :layout => false 
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to categories_path, flash: {success: "Created!"} 
    else
      redirect_to signup_path, flash: {error: @user.errors.full_messages}
	  end
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      @found_user = User.find_by_email params[:email]
      if @found_user && @found_user.authenticate(params[:password])
        session[:user_id] = @found_user.id
        redirect_to categories_path
      else
        flash[:alert] = "username / password combination is invalid"
        redirect_to login_path(@user)
      end
    else
      flash[:alert] = "please enter username and password"
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest, :company_id, :employee_id)
  end

end
