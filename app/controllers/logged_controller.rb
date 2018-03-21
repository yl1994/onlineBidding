class LoggedController < ApplicationController
  # devise方法验证用户登陆
  before_filter :authenticate_user!
end