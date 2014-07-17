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
    @hotel_adapter.number_of_rooms
  end

  def information
    [
      "Name: #{name}",
      "City: #{city}",
      "Phone Number: #{phone_number}",
      "Number of Rooms available: #{number_of_rooms}"
    ].join("\n")
  end
end
