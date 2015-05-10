require 'qiita'
require 'dotenv'

Dotenv.load

client = Qiita::Client.new(access_token: ENV['QIITA_ACCESS_TOKEN'])
puts client.list_items
