class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

         has_many :posts
         has_many :answers
         belongs_to :place
         belongs_to :category
         has_many :relationships, dependent: :destroy
         has_many :relationships, as: :follower, dependent: :destroy




# has_many :active_relationships, class_name: "Relationship",
# foreign_key:"follower_user_id",
# dependent: :destroy

# has_many :passive_relationships, class_name: "Relationship",
# foreign_key:"followed_user_id",
# dependent: :destroy
# has_many :following_users, through: :active_relationships,source: :followed
# # フォローしているユーザー設定
# has_many :follower_users, through: :passive_relationships,source: :follower
# # フォロワされているの設定


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

def full_profile?
    avatar? && profile?
  end

end
