class StaticPagesController < ApplicationController
	skip_before_filter :authenticate
  def home
  end

  def help
  end

  def new
  end

  def about
  end
end
