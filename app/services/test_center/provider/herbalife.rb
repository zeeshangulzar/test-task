module TestCenter
  module Provider

    class Herbalife
      include ServiceProvider

      def testing_center
        @response['data']['testing_center']
      end

      def email
        @response['data']['test_data']['user_email']
      end

      def first_name
        @response['data']['test_data']['first_name']
      end

      def last_name
        @response['data']['test_data']['last_name']
      end

      def test_result
        @response['data']['test_data']['test_result'] == 'positive' ?  true : false
      end

      def test_type
        @response['data']['test_data']['test_type']
      end

      def test_time
        @response['data']['test_data']['test_date_time']
      end
    end
  end
end
