class UrlsController < ApplicationController
 
 def index			
  @url= Url.new   # creates new instance for URL class 
  				  
  #shows frequent URLs
  @url_new = Url.limit(100).group("main_url").order("count_main_url desc").count("main_url")

 end

 def show
 	#find main_url associated with given short_url
 	@url = Url.find_by_short_url(params[:short_url])	  
 	#redirects to the URL associated
	redirect_to @url.main_url
 end

 def create
   #take user data from index page 
   @url= Url.new(url_params)
   @url.sanitize		#to remove white spaces and check URL
   #generate short URL
   @url.short_url = @url.get_short_url(@url.get_last_id)
   if @url.save
   	redirect_to urls_success_path #page to show generated URL
   end
 end

 def success
	@url = Url.last	#fetches latest created URL data into 'Url instance'
 end

 private
	def url_params #whitelisting main_url
		params.require(:url).permit(:main_url)
	end

end
