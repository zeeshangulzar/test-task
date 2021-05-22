class ParseTestCenterDataJob < ApplicationJob
  queue_as :default

  def perform(response)
    TestCenter::Service.new(response).save!
  end

end
