class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def index
    render :text => 'Welcome'
  end
end
