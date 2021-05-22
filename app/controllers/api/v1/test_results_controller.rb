module Api
  module V1
    class TestResultsController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        render json: { message: 'OK' }
      end
    end
  end
end
