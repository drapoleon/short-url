class UrlsController < ApplicationController
 
 def index
  @url= Url.new
 end

 def show
 	@url = Url.find_by_short_url(params[:short_url])	  
	redirect_to @url.main_url
 end

 def create
   @url= Url.new(url_params)
   @url.short_url = @url.get_short_url(@url.get_last_id)
   if @url.save
   	redirect_to urls_success_path
   end
 end

 def success
	@url = Url.last	
 end

 private
	def url_params
		params.require(:url).permit(:main_url)
	end

end
