class Book < ActiveRecord::Base
  has_many :recipes

  def self.cuisines
    %w(french italian chinese japanese thai australian mexican korean)
  end

end
