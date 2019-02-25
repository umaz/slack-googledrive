require 'google/apis/drive_v3'
require 'googleauth'
require 'googleauth/stores/file_token_store'
require 'fileutils'

class GoogleDrive
  OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'.freeze
  APPLICATION_NAME = 'Drive API Ruby Quickstart'.freeze
  CREDENTIALS_PATH = 'client_id.json'.freeze
  # The file token.yaml stores the user's access and refresh tokens, and is
  # created automatically when the authorization flow completes for the first
  # time.
  TOKEN_PATH = 'token.yaml'.freeze
  SCOPE = Google::Apis::DriveV3::AUTH_DRIVE_FILE
  def initialize
      ##
      # Ensure valid credentials, either by restoring from the saved credentials
      # files or intitiating an OAuth2 authorization. If authorization is required,
      # the user's default browser will be launched to approve the request.
      #
      # @return [Google::Auth::UserRefreshCredentials] OAuth2 credentials
      # Initialize the API
      @drive_service = Google::Apis::DriveV3::DriveService.new
      @drive_service.client_options.application_name = APPLICATION_NAME
      @drive_service.authorization = authorize
  end

  def authorize
    client_id = Google::Auth::ClientId.from_file(CREDENTIALS_PATH)
    token_store = Google::Auth::Stores::FileTokenStore.new(file: TOKEN_PATH)
    authorizer = Google::Auth::UserAuthorizer.new(client_id, SCOPE, token_store)
    user_id = 'default'
    credentials = authorizer.get_credentials(user_id)
    if credentials.nil?
      url = authorizer.get_authorization_url(base_url: OOB_URI)
      puts 'Open the following URL in the browser and enter the ' \
          "resulting code after authorization:\n" + url
      code = gets
      credentials = authorizer.get_and_store_credentials_from_code(
        user_id: user_id, code: code, base_url: OOB_URI
      )
    end
    credentials
  end

  def upload(filename, description, source, mimetype, channel)
    case channel
    when 'hoge'
      dir_name = ''
    when 'fuga'
      dir_name = ''
    when 'piyo'
      dir_name = ''
    else
      dir_name = ''
    end
    file_metadata = {
      name: filename,
      parents: [dir_name],
      description: description,
    }
    file = @drive_service.create_file(
      file_metadata,
      fields: 'id',
      upload_source: source,
      content_type: mimetype
    )
    puts "File Id: #{file.id}"
  end
end