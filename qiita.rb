require 'qiita'
require 'dotenv'

Dotenv.load

client = Qiita::Client.new(access_token: ENV['QIITA_ACCESS_TOKEN'])
tag_name = ARGV[1]

unless (tag_name) 
  puts "Please specify tag name"
  exit 0
end

file = open(ARGV[0])
title = file.first

/#*\s*(.*)/ =~ title
title = $1

file.seek(0,:SET)

body = file.read
file.close

params = {:body => body, :title => title, :tags => [{:name => tag_name}]}
client.create_item(params)
