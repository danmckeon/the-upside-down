require 'uri'
require 'open-uri'

post '/searches' do
  @search = Search.create(params[:search])
  original_path = "public/img/original_img/#{@search.id}.jpg"
  upside_down_path = "public/img/upside_down_img/#{@search.id}.jpg"
  original_img = open("https://maps.googleapis.com/maps/api/streetview?size=600x300&location=#{@search.query}&pitch=-0.76&key=#{ENV['GOOGLE_STREET_VIEW_API_KEY']}")
  open(original_path, 'wb') do |file|
    file << original_img.read
  end
  erb :'partials/_img', layout: false, locals: {img_search: @search}
end
