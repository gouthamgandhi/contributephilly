class ApplicationController < ActionController::Base
  protect_from_forgery
  protected
  def admin
    redirect_to root_path
  end
end
