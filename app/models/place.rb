class Place < ActiveRecord::Base
  has_many :users
  has_many :trainers
end
