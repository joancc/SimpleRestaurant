Recaptcha.configure do |config|
  debugger

  # config.public_key = Rails.application.secrets[:recaptcha_public_key]
  config.public_key  = ENV['RECAPTCHA_PUBLIC_KEY']
  config.private_key = ENV['RECAPTCHA_PRIVATE_KEY']

  # config.public_key  = '6LcOEvcSAAAAAN9lbrG6uDlQKXwSWOxI9RqlxiHx'
  # config.private_key = '6LcOEvcSAAAAABDX8FsLBn1Ryq567kHX3rrNziCU'
  # config.proxy = 'http://myproxy.com.au:8080'
end