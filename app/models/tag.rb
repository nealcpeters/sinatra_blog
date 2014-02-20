class Tag < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :connectors
  has_many :posts, through: :connectors
end
