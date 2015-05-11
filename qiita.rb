require 'qiita'
require 'dotenv'
require './argument'
require './article'

Dotenv.load

arg = Argument.new
art_md = Article.new
params = {:body => art_md.body, :title => art_md.title, :tags => [{:name => arg.tag_name}]}

puts params

client = Qiita::Client.new(access_token: ENV['QIITA_ACCESS_TOKEN'])
client.create_item(params)
