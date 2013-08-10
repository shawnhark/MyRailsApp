class Post < ActiveRecord::Base
	belongs to :user
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
                     length: { minimum: 4 }
end
