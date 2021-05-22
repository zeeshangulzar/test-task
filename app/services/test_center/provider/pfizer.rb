module TestCenter
  module Provider

    class Pfizer
      include ServiceProvider

      def testing_center
        @response['data']['testing_center']
      end

      def email
        @response['data']['user']['email']
      end

      def first_name
        @response['data']['user']['first_name']
      end

      def last_name
        @response['data']['user']['last_name']
      end

      def test_result
        @response['data']['medical_test']['result'] == 'positive' ?  true : false
      end

      def test_type
        @response['data']['medical_test']['test_type']
      end

      def test_time
        @response['data']['medical_test']['date_time']
      end
    end
  end
end
