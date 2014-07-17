class Hotel
  def initialize(data)
    @data = data
  end

  def name
    @data["Hotel"]
  end 

  def city
    @data["City"]
  end

  def phone_number
    @data["Phone Number"]
  end 

  def number_of_rooms
    @data["Number of Singles"].to_i + @data["Number of Doubles"].to_i
  end

  def display
    puts name
    puts city
    puts phone_number
    puts number_of_rooms
  end
end


