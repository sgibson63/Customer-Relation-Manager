class Customer < ApplicationRecord
  validates :fullName, :phoneNumber, presence: true

  has_one_attached :image
end
