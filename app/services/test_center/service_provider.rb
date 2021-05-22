module TestCenter
  module ServiceProvider

    def initialize(response)
      @response = response
    end

    def testing_center
      raise NotImplementedError
    end

    def email
      raise NotImplementedError
    end

    def first_name
     raise NotImplementedError
    end

    def last_name
      raise NotImplementedError
    end

    def test_result
      raise NotImplementedError
    end

    def test_type
      raise NotImplementedError
    end

    def test_time
      raise NotImplementedError
    end

    def user
      raise NotImplementedError
    end

    def medical_test
      raise NotImplementedError
    end
  end
end
