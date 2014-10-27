class PagesController < ApplicationController
  skip_before_action :authenticate, :only => [:about]

  def index
  end

  def about
  end

end