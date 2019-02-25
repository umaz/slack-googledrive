require 'rest-client'

class HandleFile
    def download(url, filename)
        File.open(filename, 'wb') do |f|
            res = RestClient.get(url, { "Authorization" => ENV['SLACK__BOT_TOKEN'] })
            if res.code == 200
                f << res.body
            end
        end
    end
      
    def delete(filename)
        File.delete(filename)
    end
end