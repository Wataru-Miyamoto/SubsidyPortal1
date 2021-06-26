class ApplicationController < ActionController::Base
  protect_from_forgery
  # include ActionController::MimeResponds
  # include SessionsHelper

  # ログイン済ユーザーのみにアクセスを許可する
  # before_action :authenticate_user!

  # deviseコントローラーにストロングパラメータを追加する
  before_action :configure_permitted_parameters, if: :devise_controller?

  $days_of_the_week = %w{日 月 火 水 木 金 土}
  
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください。"
      redirect_to login_url
    end
  end
    
  def correct_user
    unless current_user?(@user)
      flash[:danger] = "アクセス権限がありません。"
      redirect_to root_url
    end
  end
    
  def editor_user
    unless current_user.editor?
      flash[:danger] = "アクセス権限がありません。"
      redirect_to root_url
    end
  end
  
  def admin_user
    unless current_user.admin?
      flash[:danger] = "アクセス権限がありません。"
      redirect_to root_url
    end
  end

  def access_denied(exception)
    redirect_to root_path, notice: "アクセス権限がありません。"
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    end

  # def access_denied(exception)
  #   redirect_to admin_organizations_path, alert: exception.message
  # end
end
