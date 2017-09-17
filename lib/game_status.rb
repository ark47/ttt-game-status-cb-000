# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],  # 0
  [3, 4, 5],  # 1
  [6, 7, 8],  # 2
  [0, 3, 6],  # 3
  [1, 4, 7],  # 4
  [2, 5, 8],  # 5
  [0, 4, 8],  # 6
  [6, 4, 2]   # 7
]

def won?(board)
  WIN_COMBINATIONS.detect do |combi|
    board[combi[0]] == board[combi[1]] &&
    board[combi[1]] ==  board[combi[2]] &&
    position_taken?(board, combi[0])
  end
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winner = won?(board)
    board[winner.first]
  end
end
