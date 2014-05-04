require 'neography'

Neography.configure do |config|
  config.protocol           = 'http://'
  config.server             = 'localhost'
  config.port               = 7474
  config.directory          = ''
  config.cypher_path        = '/cypher'
  config.log_file           = 'log/neography.log'
  config.log_enabled        = true
  config.slow_log_threshold = 0
  config.max_threads        = 20
  config.authentication     = nil
  config.username           = nil
  config.password           = nil
  config.parser             = MultiJsonParser
end

$neo = Neography::Rest.new