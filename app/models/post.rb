class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments, dependent: :destroy

  validate :name, presence: true
  validate :content, presence: true

end
