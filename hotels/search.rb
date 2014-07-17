require "./database_reader"
require "./null_hotel"
require "./hotel_adapter"

class Search
  def initialize(hotels)
    @hotels = hotels
  end

  def conduct
    prompt_user
    puts find_hotel.information
  end

  def prompt_user
    print "What is the hotel name?"
    @user_query = gets.chomp
  end

  def find_hotel
    @hotels.find { |hotel| hotel.name == @user_query } || NullHotel.new
  end
end

database_reader = DatabaseReader.new("hotels.csv")
search = Search.new(database_reader.hotels)
search.conduct
