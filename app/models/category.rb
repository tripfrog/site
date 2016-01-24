class Category < ActiveRecord::Base
  belongs_to :post
  belongs_to :answer
end
