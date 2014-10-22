# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  price       :decimal(10, 2)
#  category    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

class Product < ActiveRecord::Base
  belongs_to :category
end
