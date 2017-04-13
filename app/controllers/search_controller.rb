post '/searches' do
  original_img = open("https://maps.googleapis.com/maps/api/streetview?size=600x300&location=46.414382,10.013988&heading=151.78&pitch=-0.76&key=#{ENV['GOOGLE_STREET_VIEW_API_KEY']}")
  open('public/original_img/image22.jpg', 'wb') do |file|
    file << original_img.read
  end
end
