class Url < ApplicationRecord
  
 ALPHABET = #constant for URL generation
  	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)


  def get_short_url (last_id) #method to generate short_url

  	#returns 'a' for first case(first URL generated)
    return ALPHABET[0] if last_id == 0
    str = ''
    base = ALPHABET.length
    while last_id > 0
    str << ALPHABET[last_id.modulo(base)]
    last_id /= base
    end
    str.reverse
  end

  def get_last_id #fetch id of last URL created for next URL generation
    
    if Url.last
      id=Url.last.id
    else
      id = 0
    end
  end

  def sanitize #clear white spaces from user data
	self.main_url.strip!
	unless self.main_url[/\Ahttp:\/\//] || self.main_url[/\Ahttps:\/\//]
     self.main_url = "http://#{self.main_url}" #add 'http://' if absent
    end
  end

end
