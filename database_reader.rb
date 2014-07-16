require "CSV"

class DatabaseReader 
  def initialize(file_name)
    @file_name = file_name
  end

  def read
    CSV.foreach(@file_name, headers: :true) do |row|
      puts row["Hotel"]
    end
  end
end

database_reader = DatabaseReader.new("hotels.csv")
database_reader.read
