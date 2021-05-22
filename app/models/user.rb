class User < ApplicationRecord

  validates :email, presence: true

  has_many :medical_tests
end
