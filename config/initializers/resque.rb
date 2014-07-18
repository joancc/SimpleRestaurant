# Dir[File.join(Rails.root, 'app', 'jobs', '*.rb')].each { |file| require file }
  

# config = YAML::load(File.open("#{Rails.root}/config/redis.yml"))[Rails.env]
# Resque.redis = Redis.new(:host => config['host'], :port => config['port'])

# YAML.load(File.read('config/development.yml'))
Resque.redis = Redis.new(:host => 'host', :port => 'port')