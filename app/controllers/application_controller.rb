class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    a = "b"
    b = "c"
    redirect_to new_session_path, alert: 'You need to login first' if current_user.nil?
    if @user
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Logged in'
    else
      flash.now.alert = "email #{params[:email]} not found"
      render 'new'
    end
    @tea = Tea.new(tea_params)
    if @tea.save
      redirect_to @tea
    else
      render 'new'
    end
    @user ||= User.find session[:user_id] if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to new_session_path, alert: 'You need to login first' if current_user.nil?
  end
end
