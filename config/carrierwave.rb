CarrierWave.configure do |config|
  config.ftp_host = "cba.pl"
  config.ftp_port = 21
  config.ftp_user = "admin@mojajsvideo.cba.pl"
  config.ftp_passwd = "piotr123"
  config.ftp_folder = "/obrazki"
  config.ftp_url = "http://mojajsvideo.cba.pl/obrazki"
  config.passive = false # false by default
end