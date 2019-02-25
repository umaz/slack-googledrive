require 'rubygems'
require 'bundler/setup'
require 'slack-ruby-client'
require './download'
require './upload'

class WebClient
  def initialize
    Slack.configure do |conf|
      conf.token = ENV['SLACK_TOKEN']
    end
    @client = Slack::Web::Client.new
  end

  def get_public_url(id)
    res = @client.files_sharedPublicURL(file: id)
    pub_secret = res.file.permalink_public.split(/-/).last
    img_url = res.file.url_private + '?pub_secret=' + pub_secret
    return img_url
  end

  def delete_public_url(id)
    @client.files_revokePublicURL(file: id)
  end

  def get_channel(id)
    res = @client.channels_info(channel: id)
    return res.channel.name
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
    p data
    user_name = data.user_profile.real_name.gsub(/ /, '-')
    file_title = data.files[0].title + '.' + data.files[0].filetype
    file_url = web_client.get_public_url(data.files[0].id)
    description = data.text
    time = Time.at(data.ts.to_f).strftime("%Y-%m-%d")
    channel = web_client.get_channel(data.channel)
    mimetype = data.files[0].mimetype
    filename = time + '_' + channel + '_' + user_name + '_' + file_title
    handle_file.download(file_url, file_title)
    web_client.delete_public_url(data.files[0].id)
    google_drive.upload(filename, description, file_title, mimetype)
    handle_file.delete(file_title)
  end
end

client.start!
