class StaticPagesController < ApplicationController
	skip_before_filter :authenticate
  def home
  	if signed_in?
  		redirect_to current_user
  	else
  	end
  end

  def help
  end

  def new
  end

  def about
  end

  def print
    render 'print', layout: false
  end
end
