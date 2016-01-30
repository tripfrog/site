class Trainer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
         has_many :answers
         belongs_to :place
         belongs_to :category
         has_many :relationships, dependent: :destroy
         has_many :relationships, as: :follower, dependent: :destroy


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

def full_profile?
    avatar? && profile?
  end

end
