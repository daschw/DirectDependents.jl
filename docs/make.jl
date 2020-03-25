using Documenter, DirectDependents

makedocs(;
    modules=[DirectDependents],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/daschw/DirectDependents.jl/blob/{commit}{path}#L{line}",
    sitename="DirectDependents.jl",
    authors="Daniel Schwabeneder <daschw@disroot.org>",
    assets=String[],
)

deploydocs(;
    repo="github.com/daschw/DirectDependents.jl",
)
