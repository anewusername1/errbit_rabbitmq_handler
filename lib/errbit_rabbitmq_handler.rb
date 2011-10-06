module ErrbitRabbitMQHandler
  autoload :Configuration, 'errbit_rabbitmq_handler/configuration'
  autoload :Handler, 'errbit_rabbitmq_handler/handler'
  autoload :VERSION, 'errbit_rabbitmq_handler/version'
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end

    def handler
      @handler ||= Handler.new.tap {|h| h.uri = ErrbitRabbitMQHandler.configuration.uri}
    end
  end
end
