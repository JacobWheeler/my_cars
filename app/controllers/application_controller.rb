class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Making sure a user is logged in - DOCS
  before_action :authenticate_user!
end
