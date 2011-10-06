module ErrbitRabbitMQHandler
  class Handler
    def process_notice(message)
      xml = message.copy_out_string
      puts "[#{Time.now}] got notice"
      start = Time.now
      Notice.from_xml(xml)
      puts "Notice saved in #{Time.now - start} seconds\n\n"
    end
  end
end

