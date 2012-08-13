require "nokogiri"

class Weather
  attr_reader :file, :nok
  def initialize(file_url)
    @file = open(file_url)
    @nok = Nokogiri::XML(@file)
  end

end