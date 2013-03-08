class PublicsController < ApplicationController

  def index

  end

  def create

   begin

     url = params[:url]
     output =  `viddl-rb #{url} -u`
     z = output.partition("\nhttp://")
     @download_urls = z[2].split("\n")
   rescue ViddlRb::DownloadError => e
     @error = "Could not get download url: #{e.message}"
   rescue ViddlRb::PluginError => e
     @error = "Plugin blew up! #{e.message}\n" + "Backtrace:\n#{e.backtrace.join("\n")}"
   rescue => e
     @error = e.messag
   end
   
  end

end
