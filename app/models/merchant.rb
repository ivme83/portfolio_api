class Merchant < ApplicationRecord
  has_many :users, dependent: :destroy
  has_one :accepted_slas
  has_many_attached :file
end
