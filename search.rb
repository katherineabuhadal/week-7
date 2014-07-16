require "./database_reader"

class Search
  def initialize(search)
    @user_query
  end

  def make
    prompt_user
    print_answer
  end

  def prompt_user
    print "What hotel name?"
    @user_query = gets.chomp
  end

  def print_answer
    puts @user_query

  end
end

database_reader = DatabaseReader.new("hotels.csv")
search = Search.new(database_reader.read)
search.make



