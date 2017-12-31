class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout 'application'
  protect_from_forgery with: :exception
  # devise方法验证用户登陆
  before_filter :authenticate_user!
end
