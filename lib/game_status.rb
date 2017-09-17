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
  WIN_COMBINATIONS.detect do |x|
  board[x[0]] == board[x[1]] &&
  board[x[1]] ==  board[x[2]] &&
  position_taken?(board, x[0])
  end
end

def full?(board)
  board.all? {|x| x == "X" || x == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner?(board)
end
