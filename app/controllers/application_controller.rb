class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
  protect_from_forgery with: :null_session
  rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_auth_token

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end


  def invalid_auth_token
    render plain: 'Invalid authenticity token', status: :unprocessable_entity
  end
end
