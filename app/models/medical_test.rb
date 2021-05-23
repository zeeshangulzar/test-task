class MedicalTest < ApplicationRecord

  belongs_to :user
  belongs_to :testing_center


  def result
    positive.present? ? 'Positive' : 'Negative'
  end
end
