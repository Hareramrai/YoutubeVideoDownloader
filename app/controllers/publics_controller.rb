class PublicsController < ApplicationController

  def index
  end

  def create

   url = params[:url]
   require 'viddl-rb'
   @download_urls = ViddlRb.get_urls(url)

  end

end
