module Api
  module V1
    class TestResultsController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :http_basic_authenticate


      def create
        response = ApiResponse.create(response: params, center: params[:data][:testing_center])
        ParseTestCenterDataJob.set(wait: 5.seconds).perform_later(response.response)
        render json: { message: 'OK' }
      end
    end
  end
end
