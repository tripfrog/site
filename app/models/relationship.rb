class Relationship < ActiveRecord::Base

belongs_to :following
belongs_to :follower, polymorphic: true



# belongs_to :follower, class_name: "User"
# # フォロワーする側を定義
# belongs_to :followed, class_name: "User"
# # フォローされる側を定義
# belongs_to :trainer
end
