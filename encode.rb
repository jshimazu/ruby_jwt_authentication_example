require 'jwt'

hmac_secret = 'my$ecretK3y'
payload = {
  data: 'test',
  #exp: Time.now.to_i + 4 * 3600
  exp: Time.now.to_i + 10
}

token = JWT.encode payload, hmac_secret, 'HS256'

puts token
