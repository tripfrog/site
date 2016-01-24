class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer
  has_many :answers
  has_many :categories
  has_one :category, as: :categoable

  # after_create :create_category
  # private
  # def create_category
  #   self.create_category = Category.create(category: group_id,)
  # end

end
