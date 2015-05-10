require 'qiita'
require 'dotenv'

Dotenv.load

client = Qiita::Client.new(access_token: ENV['QIITA_ACCESS_TOKEN'])
params = {:body => "# Example", :title => "hello world", :tags => [{:name => "test"}]}
client.create_item(params)
