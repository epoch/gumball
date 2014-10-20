class Post < ActiveRecord::Base

  #validates :name, :presense => true
  #validates :name, :length => { :minimum => 3 }
  validates :name, :length => { :in => 2..5 }
  #validates :name, length: { in: 2..5 }
  #validates :name, :length => { :is => 2 }

  #validates :name, :numericality => true
  #validates :name, :numericality => { :only_integer => true }

  #validates :name, :uniqueness => true
  #validates :name, :inclusion => ['lunch','breakfast','dinner']
  #validates :name, :exclusion => %w(lunch breakfast dinner)

  #validates :name, :format => { :with => // }
end
