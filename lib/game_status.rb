# Helper Method
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
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
for  WIN_COMBINATIONS.each do |win_IT |
    #check for player 1 win

    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    else
      false
    end
  end
end

def check_win_combination?(board, player, win_IT)
  win_IT.all? do |position|
    board[position] == player
  end
end

#definition of the full function
def full?(board)

  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end

#defintion of the draw

def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end
#definition of winner function
def winner(board)
  if !won?(board)
    return nil
  else WIN_COMBINATIONS.each do |win_IT|
    if check_win_combination?(board, "X", win_IT)
      return "X"
    else check_win_combination?(board, "O", win_IT)
      return "O"
    end
  end
end
end

#definition of function over? ,like if something happen
def over?(board)

  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end
z
