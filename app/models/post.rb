class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer
  has_many :answers
  has_many :categories
  has_one :category, as: :categoable

has_attached_file :avatar, styles: { medium: "500x500>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

validates_presence_of :post, :title
  # after_create :create_category
  # private
  # def create_category
  #   self.create_category = Category.create(category: group_id,)
  # end

end
