class HotelAdapter
  def initialize(data)
    @data = data
  end

  def name
    @data["Hotel"].strip
  end 

  def city
    @data["City"]
  end

  def phone_number
    @data["Phone Number"].gsub(/([-.])/, "")
  end 

  def number_of_singles
    @data["Number of Singles"].gsub(/([",])/, "").to_i  
  end

  def number_of_doubles
    @data["Number of Doubles"].gsub(/([",])/, "").to_i
  end

  def number_of_rooms
    number_of_singles + number_of_doubles
  end
end
