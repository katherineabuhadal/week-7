require "./database_reader"
require "./null_hotel"

class Search
  def initialize(hotels)
    @hotels = hotels
  end

  def conduct
    prompt_user
    check_for_hotel
  end

  def prompt_user
    print "What is the hotel name?"
    @user_query = gets.chomp
  end

  def check_for_hotel
    hotel =  @hotels.find { |hotel| hotel.name == @user_query } || NullHotel.new
    puts hotel.display
  end
end

database_reader = DatabaseReader.new("hotels.csv")
search = Search.new(database_reader.hotels)
search.conduct
