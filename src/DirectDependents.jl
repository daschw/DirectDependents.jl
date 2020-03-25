module DirectDependents

export direct_dependents

import Pkg

const REGISTRY_PATH = joinpath(homedir(), ".julia", "registries", "General")
const REGISTERED_PACKAGES = filter!(
    d -> d ∉ ("julia", ".DS_Store"),
    collect(Iterators.flatten(readdir.(joinpath.(REGISTRY_PATH, string.('A':'Z')))))
)

registry_letter(pkg) = string(uppercase(first(pkg)))
registry_path(pkg, args...) = joinpath(REGISTRY_PATH, registry_letter(pkg), pkg, args...)

function direct_dependencies(pkg)
    fn = registry_path(pkg, "Deps.toml")
    if isfile(fn)
        return unique(collect(Iterators.flatten(keys.(values(Pkg.TOML.parsefile(fn))))))
    else
        return String[]
    end
end

"""
    direct_dependents(pkg)

Get a list of all registered packages depending on `pkg`.
"""
direct_dependents(pkg) = filter(p -> pkg ∈ direct_dependencies(p), REGISTERED_PACKAGES)

end # module
