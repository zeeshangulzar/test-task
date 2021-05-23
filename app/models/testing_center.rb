class TestingCenter < ApplicationRecord

  has_many :medical_tests

  def downcase_name
    name.downcase
  end
end
