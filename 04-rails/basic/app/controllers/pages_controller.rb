class PagesController < ApplicationController

  def welcome
    @name = 'DT'
    # name = 'DT' # won't be available in the welcome view
  end

  def about
  end

  def lol
  end

end