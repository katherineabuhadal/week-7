require "csv"
require "./hotel_adapter"
require "./hotel"

class DatabaseReader 
  def initialize(file_name)
    @file_name = file_name
  end

  def hotels
    CSV.foreach(@file_name, headers: true).map do |row|
      hotel_adapter = HotelAdapter.new(row)
      Hotel.new(hotel_adapter)
    end
  end
end
