class Hotel
  def initialize(hotel_adapter)
    @hotel_adapter = hotel_adapter
  end

  def name
    @hotel_adapter.name
  end

  def city
    @hotel_adapter.city
  end

  def phone_number
    @hotel_adapter.phone_number
  end

  def number_of_rooms
    @hotel_adapter.number_of_singles + @hotel_adapter.number_of_doubles
  end

  def display
    puts "Name: #{name}"
    puts "City: #{city}"
    puts "Phone Number: #{phone_number}"
    puts "Number of Rooms available: #{number_of_rooms}"
  end
end
