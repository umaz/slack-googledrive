require 'rubygems'
require 'bundler/setup'
require 'slack-ruby-client'
require './download'
require './upload'

class WebClient
  def initialize
    Slack.configure do |conf|
      conf.token = ENV['SLACK_BOT_TOKEN']
    end
    @client = Slack::Web::Client.new
  end

  def get_channel(id)
    res = @client.conversations_info(channel: id, token: ENV['SLACK_BOT_TOKEN'])
    if res.channel.is_im #個人DMの場合
      channel = 'direct_message'
    else
      if res.channel.is_channel #publicチャンネルの場合
        channel = res.channel.name
      else #privateチャンネル|グループDMの場合
        channel = false
      end
    end
    return channel
  end
end

Slack.configure do |conf|
  conf.token = ENV['SLACK_BOT_TOKEN']
end

client = Slack::RealTime::Client.new
web_client = WebClient.new
handle_file = HandleFile.new
google_drive = GoogleDrive.new

client.on :hello do
  puts "Successfully connected, welcome '#{client.self.name}' to the '#{client.team.name}' team at https://#{client.team.domain}.slack.com."
end

client.on :message do |data|
  if data.files != nil
    channel = web_client.get_channel(data.channel)
    description = data.text
    if !(description =~ /^(!|！)/) && channel && data.files[0].mode != 'snippet'
      user_name = data.user_profile.real_name.gsub(/ /, '-')
      file_title = data.files[0].title + '.' + data.files[0].filetype
      file_url = data.files[0].url_private
      time = Time.at(data.ts.to_f).strftime("%Y-%m-%d")
      mimetype = data.files[0].mimetype
      filename = time + '_' + channel + '_' + user_name + '_' + file_title
      handle_file.download(file_url, file_title)
      google_drive.upload(filename, description, file_title, mimetype)
      handle_file.delete(file_title)
    end
  end
end

client.start!
