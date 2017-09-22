class Url < ApplicationRecord
  
 ALPHABET =
  	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)


  def get_short_url (last_id)

	   return ALPHABET[0] if last_id == 0
	   str = ''
	   base = ALPHABET.length
	   while last_id > 0
	   	str << ALPHABET[last_id.modulo(base)]
	   	last_id /= base
	   end
	   str.reverse
  end

  def get_last_id
    if Url.last
    	id=Url.last.id
    else
      id = 0
    end
  end

  def sanitize
	  self.main_url.strip!
	  unless self.main_url[/\Ahttp:\/\//] || self.main_url[/\Ahttps:\/\//]
       self.main_url = "http://#{self.main_url}"
      end
  end

end
