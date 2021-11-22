class ExampleSq
  include Sidekiq::Worker
  sidekiq_options retry: 0

  def perform(str)
    ExampleSq.execute!(str)
  end

  def self.execute!(str)
    Rails.logger.info("ExampleSq: #{str}")
  end
end
