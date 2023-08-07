class Perfume < ApplicationRecord
  validates :perfumename, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image
end
