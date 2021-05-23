class User < ApplicationRecord

  validates :email, presence: true

  has_many :medical_tests

  def generate_medical_pdf
    pdf_html = ActionController::Base.new.render_to_string(template: 'users/pdfs/generate_pdf', locals: { :@user => self})
    pdf = WickedPdf.new.pdf_from_string(pdf_html)
    # Right now we are saving pdfs to local disk.We can save it to S3 as well aswe are expecting a lot of pdf.
    File.open(Rails.root.join('pdfs',"#{complete_name}_tests.pdf"), 'wb') do |file|
      file << pdf
    end
  end

  def complete_name
    [first_name, last_name].join(' ')
  end
end
