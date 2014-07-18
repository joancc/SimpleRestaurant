# Dir[File.join(Rails.root, 'app', 'jobs', '*.rb')].each { |file| require file }
  # YAML.load(File.read('config/development.yml'))

# config = YAML::load(File.open("#{Rails.root}/config/redis.yml"))[Rails.env]
# Resque.redis = Redis.new(:host => config['host'], :port => config['port'])