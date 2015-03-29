class Post < ActiveRecord::Base
  before_action :authenticate_user!, except: [:index, :show]

  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end
