require "rspec"
require './weather.rb'

describe Weather do
  before do
    @weather_kuldiga = Weather.new("./weather_kuldiga.xml")
    @weather_ventspils = Weather.new("./weather_ventspils.xml")
  end

  it "temperature " do
    @weather_kuldiga.temperature.should_be == "18"
    @weather_ventspils.temperature.should_be == "18"
  end
  
  it  "humidity" do
    @weather_kuldiga.humidity.should_be == "73%"
    @weather_ventspils.humidity.should_be == "57%"
  end
end