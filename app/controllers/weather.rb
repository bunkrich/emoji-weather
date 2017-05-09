get '/weather' do
  erb :'/weather/index'
end

post '/weather' do
  zip = params[:zip]
  api = "6204ed2c836a9a1b8a3b31fffdfee672"
  url = "http://api.openweathermap.org/data/2.5/weather?zip="
  url2 = ",us&appid="
  @weather_call = url + zip + url2 + api
  puts @weather_call
  erb :'/weather/show'
end
