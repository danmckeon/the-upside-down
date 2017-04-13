require 'uri'
require 'open-uri'

post '/searches' do
  address = URI.escape(params[:address])
  original_img = open("https://maps.googleapis.com/maps/api/streetview?size=600x300&location=#{address}&pitch=-0.76&key=#{ENV['GOOGLE_STREET_VIEW_API_KEY']}")
  open('public/original_img/image55.jpg', 'wb') do |file|
    file << original_img.read
  end
end
