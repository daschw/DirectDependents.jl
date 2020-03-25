using DirectDependents
using Test

@testset "DirectDependents.jl" begin
    @test !isempty(direct_dependents("RecipesBase"))
end
