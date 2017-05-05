get '/weather' do

  erb :'/weather/index'
  # api_key = '6204ed2c836a9a1b8a3b31fffdfee672';
  # url = "api.openweathermap.org/data/2.5/weather?zip="
  # zip = '10001'
  # url2 = ",us&appid="
  # weather_data = url + zip + url2 + api_key
  # puts weather_data
  # puts "👿👿👿"
  # datahash = JASON.parse(weather_data)
  # puts "🤖🤖🤖"
  # puts datahash
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
