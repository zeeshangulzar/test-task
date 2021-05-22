module TestCenter
  class Service
    include ServiceProvider

    def initialize(response)
      @response = response
      @provider = provider_class.new(@response)
    end

    def testing_center
      @provider.testing_center
    end

    def email
      @provider.email
    end

    def first_name
      @provider.first_name
    end

    def last_name
      @provider.last_name
    end

    def test_result
      @provider.test_result
    end

    def test_type
      @provider.test_type
    end

    def test_time
      @provider.test_time
    end

    def user
      {
        email: email,
        first_name: first_name,
        last_name: last_name
      }
    end

    def medical_test
      { test_result: test_result,
        test_time: test_time,
        test_type: test_type
      }
    end

    private

    def provider_class
      "TestCenter::Provider::#{@response['data']['testing_center'].titleize.gsub(' ', '')}".constantize
    end
  end
end
