class Results
 
  def compare_moves
    round_1_moves = {:user_move => @user_move}
    round_1_moves[:ai_move] = @ai_move
    puts round_1_moves
  end
end
