class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer
  has_many :answers
  has_many :categories

end
