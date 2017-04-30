require 'jwt'

hmac_secret = 'my$ecretK3y'
token = ARGV[0]

begin
  decoded_token = JWT.decode token, hmac_secret, true, { :algorithm => 'HS256' }
rescue JWT::ExpiredSignature
  p "session expire error"
end

puts decoded_token
