class MedicalTest < ApplicationRecord

  belongs_to :user
  belongs_to :testing_center
end
