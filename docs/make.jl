using Sudoku3D
using Documenter

DocMeta.setdocmeta!(Sudoku3D, :DocTestSetup, :(using Sudoku3D); recursive=true)

makedocs(;
    modules=[Sudoku3D],
    authors="Andreas Bøgh Poulsen",
    repo="https://github.com/0708andreas/Sudoku3D.jl/blob/{commit}{path}#{line}",
    sitename="Sudoku3D.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://0708andreas.github.io/Sudoku3D.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Constraints" => "constraints.md",
    ],
)

deploydocs(;
    repo="github.com/0708andreas/Sudoku3D.jl",
    devbranch="main",
)
