class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #redirects user to log in page if not logged in.
  before_action :authenticate_user!
end
