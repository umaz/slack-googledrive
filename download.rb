require 'open-uri'

class HandleFile
    def download(url, filename)
        open(url) do |file|
            open(filename, "w+b") do |out|
                out.write(file.read)
            end
        end
    end

    def delete(filename)
        File.delete(filename)
    end
end