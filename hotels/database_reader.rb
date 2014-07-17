require "csv"
require "./hotel"

class DatabaseReader 
  def initialize(file_name)
    @file_name = file_name
  end

  def hotels
    CSV.foreach(@file_name, headers: true).map do |row|
      Hotel.new(row)
    end
  end
end
