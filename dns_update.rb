require 'net/http'

DMEUSER = 'DNSMadeEasy Username'
DMEPASS = 'password'
DMEID   = 'dmeid'

uri = URI.parse "http://bot.whatismyipaddress.com"
ip  = Net::HTTP.get_response(uri).body
uri = URI.parse "http://www.dnsmadeeasy.com/servlet/updateip?username=#{DMEUSER}&password=#{DMEPASS}&id=#{DMEID}&ip=#{ip}"
Net::HTTP.get_response(uri)