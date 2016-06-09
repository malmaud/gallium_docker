for pkg in [:Distributions, :Images, :StructsOfArrays, :JLD]
    Pkg.add(string(pkg))
    @eval using $pkg
end
