using Sudoku3D
using Test

g= "..4..1.............................4.............1.............."
s = sort(search(init_multi(g)))

@testset "Sudoku3D.jl" begin
    @test s[1] == "2341412312343412143232144321214332141432214343214123234134121234"
end
