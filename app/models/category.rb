class Category < ActiveRecord::Base
  belongs_to :categoable, polymorphic: true
end
