class GeneratePdfJob < ApplicationJob

  queue_as :default

  def perform
    User.all.each do |user|
      user.generate_medical_pdf
    rescue => ex
      Rails.logger.error("PDF GenerationError: #{ex.message}")
    end
  end
end
