class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer
  belongs_to :post
  has_many :categories
  has_one :category, as: :categoable
end
