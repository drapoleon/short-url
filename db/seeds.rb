10.times do 
  url= Url.new
  url.main_url= "google.com"
  if Url.last
    x=Url.last.id
  else
    x=0
  end
  url.short_url= url.get_short_url(x)
  url.save

end
  puts "10 Urls were created for google.com"

8.times do 
  url= Url.new
  url.main_url= "facebook.com"
  if Url.last
    x=Url.last.id
  else
    x=0
  end
  url.short_url= url.get_short_url(x)
  url.save

end
  puts "8 Urls were created for facebook.com"

9.times do 
  url= Url.new
  url.main_url= "twitter.com"
  if Url.last
    x=Url.last.id
  else
    x=0
  end
  url.short_url= url.get_short_url(x)
  url.save

end
puts "9 Urls were created for twitter.com"

puts "Check homepage for top popular sites "