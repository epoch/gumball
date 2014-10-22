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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
