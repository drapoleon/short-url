class UrlsController < ApplicationController
 
 def index
  @url= Url.new
 end

 def show
 	
 end

 def create
   @url= Url.new(url_params)
   @url.save
 end

end
