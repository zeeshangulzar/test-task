module TestCenter
  module Provider

    class AstraZeneca
      include ServiceProvider

      def testing_center
        @response['data']['testing_center']
      end

      def email
        @response['data']['user_email']
      end

      def first_name
       @response['data']['user_first_name']
      end

      def last_name
        @response['data']['user_last_name']
      end

      def test_result
        @response['data']['positive']
      end

      def test_type
        @response['data']['test_type']
      end

      def test_time
        @response['data']['test_date_time']
      end
    end
  end
end
