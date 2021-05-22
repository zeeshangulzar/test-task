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
      { positive: test_result,
        tested_at: test_time,
        test_type: test_type
      }
    end

    def save!
      ActiveRecord::Base.transaction do
        save_user
        save_medical_test
      end
    end

    private

    def provider_class
      "TestCenter::Provider::#{@response['data']['testing_center'].titleize.gsub(' ', '')}".constantize
    end

    def get_user
      @user = User.where(email: email).last
    end

    def get_testing_center
      @testing_center = TestingCenter.where(name: testing_center).last
    end

    def save_user
      get_user
      return if @user.present?
      User.create(user)
    end

    def save_medical_test
      get_user
      get_testing_center
      @user.medical_tests.create(medical_test.merge({testing_center_id: @testing_center.id}))
    end
  end
end
