class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include ApplicationHelper
  include RoundHelper
  include CurrencyHelper

  before_filter :authenticate

  protected

  def authenticate
  	unless current_user
  		redirect_to signin_path
  	end
  end
end


