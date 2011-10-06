= Errbit RabbitMQ Handler

Errbit notifier extension for handling notices using RabbitMQ

Use this library to grab errbit notices off of a RabbitMQ queue.

This extension is used in conjunction with the errbit_rabbitmq_notifier gem. Use that gem to asynchronously push notices to Errbit. This extension will pick those notices off of the queue and process them. No more relying on Errbit to be fast and/or up 100% of the time.

== Installation

Install RabbitMQ Server (http://www.rabbitmq.com/download.html)

Get Errbit https://github.com/errbit/errbit

Install the gem:

  gem install errbit_rabbitmq_handler

== Usage

Configure the RabbitMQ handler by defining it's address in <tt>config/initializers/errbit_rabbit_handler.rb</tt>:

  ErrbitRabbitMQHandler.configure do |config|
    # Address to bind to listen exception notifications
    config.rabbit_host = "127.0.0.1"
    # optional config variables
    # config.rabbit_port          = 5672
    # config.rabbit_routing_key   = :routing_key
    # config.rabbit_queue         = :a_queue
    # config.rabbit_exchange      = :some_exchange
  end

Starting handler daemon:
  APP_ROOT=/path/to/app/root RAILS_ENV=production errbit_rabbitmq_handler start

Stop handler daemon:
  APP_ROOT=/path/to/app/root RAILS_ENV=production errbit_rabbitmq_handler stop

Restart handler daemon:
  APP_ROOT=/path/to/app/root RAILS_ENV=production errbit_rabbitmq_handler restart

--
For a more detailed look at how to configure RabbitMQ, look at these guides:
http://rdoc.info/github/ruby-amqp/amqp/master/file/docs/DocumentationGuidesIndex.textile


== License

HoptoadRabbitMQNotifier: Copyright © 2011 Tracey Eubanks. It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
