# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "errbit_rabbitmq_handler/version"

Gem::Specification.new do |s|
  s.name        = "errbit_rabbitmq_handler"
  s.version     = ErrbitRabbitMQHandler::VERSION
  s.platform    = RUBY_PLATFORM[/java/] || Gem::Platform::RUBY
  s.authors     = ["Tracey Eubanks"]
  s.email       = ["tracey.eubanks1337@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Errbit handler for RabbitMQ notices}
  s.description = %q{Errbit extension providing handler for notices sent via RabbitMQ}

  s.rubyforge_project = "errbit_rabbitmq_handler"

  if s.platform.to_s == "java"
    s.add_dependency "json", ">= 1.5"
  else
    s.add_dependency "ffi", ">= 0"
    s.add_dependency "yajl-ruby", "> 0"
  end
  s.add_dependency "dripdrop", ">= 0.10.0.beta2"
  s.add_dependency "daemon-spawn", ">= 0.4.0"

  s.add_development_dependency 'rspec', '>= 2.5.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

