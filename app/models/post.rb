class Post < ActiveRecord::Base
  validates :title, :content,  presence: true

  has_many :connectors
  has_many :tags, through: :connectors
end
