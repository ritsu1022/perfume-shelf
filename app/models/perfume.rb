class Perfume < ApplicationRecord
  validates :perfumename, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type

  validates :type_id, numericality: { other_than: 1 }
end
