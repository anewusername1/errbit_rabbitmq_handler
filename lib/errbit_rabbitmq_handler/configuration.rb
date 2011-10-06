module ErrbitRabbitMQHandler
  class Configuration

    OPTIONS = [:uri].freeze

    attr_accessor :uri

    def [](option)
      send(option)
    end

    def to_hash
      OPTIONS.inject({}) do |hash, option|
        hash.merge(option.to_sym => send(option))
      end
    end

    def merge(hash)
      to_hash.merge(hash)
    end
  end
end

