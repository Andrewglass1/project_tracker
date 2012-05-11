class ApplicationController < ActionController::Base
  protect_from_forgery

  load_and_authorize_resource

  private
  def not_authenticated
    redirect_to login_url, :alert => "First log in to view this page."
  end

end