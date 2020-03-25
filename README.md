# DirectDependents

[![Build Status](https://travis-ci.com/daschw/DirectDependents.jl.svg?branch=master)](https://travis-ci.com/daschw/DirectDependents.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/daschw/DirectDependents.jl?svg=true)](https://ci.appveyor.com/project/daschw/DirectDependents-jl)
[![Build Status](https://api.cirrus-ci.com/github/daschw/DirectDependents.jl.svg)](https://cirrus-ci.com/github/daschw/DirectDependents.jl)

Get a list of all registered packages depending on a package.

## Installation

```julia
pkg> add https://github.com/daschw/DirectDependents.jl
```

## Usage

```julia
julia> using DirectDependents

julia> direct_dependents("RecipesBase")
144-element Array{String,1}:
 "AIBECS"
 "ApproxBayes"
 "ApproxFun"
 "ApproxFunBase"
 "AstroImages"
 "AugmentedGaussianProcesses"
 ⋮
 "ValueHistories"
 "Variography"
 "ViscousFlow"
 "VoxelRayTracers"
 "WeightedArrays"
```

## Acknowledgement

Inspired by https://github.com/Nosferican/DependenciesParser.jl.
