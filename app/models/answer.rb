class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer
  belongs_to :post
  has_many :categories
end
