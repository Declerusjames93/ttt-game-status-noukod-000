# Helper Method
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]]
#Definition of the won method
def won?(board)
  WIN_COMBINATIONS.each do |win_IT|
    #check for player 1 win
    if check_win_combination?(board, 'X', win_IT)
      return win_IT
      #check for player 2 win
    elsif check_win_combination?(board, 'O', win_IT)
      return win_IT
    else
      return false
    end
  end
end

def check_win_combination?(board, player, win_IT)
  win_IT.all? do |position|
    board[position] == player
  end
end

#IS BOARD FULL?
def full?(board)
  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end

#IS THERE A DRAW?
def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end
