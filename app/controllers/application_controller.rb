class ApplicationController < ActionController::Base

  def http_basic_authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.config[:api_username] && password == Rails.application.credentials.config[:api_password]
    end
  end

end
