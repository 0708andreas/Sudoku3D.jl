module Sudoku3D

include("solver.jl")

export vals, entries, dims, SudokuPuzzle, SudokuPartial, squares, rows, cols, fils, subs, unitslist, units, peers, assign!, eliminate!, propagate!, search, init_multi, rand_puzzle

end
