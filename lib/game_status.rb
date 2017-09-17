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
end

def full?(board)
  if
    WIN_COMBINATIONS.reject {|x| x = " "}
  else
    board.detect {|x| x = " "}
  end
end
