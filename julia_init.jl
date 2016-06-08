for pkg in ["Distributions", "Images", "StructOfArrays", "JLD"]
    Pkg.add(pkg)
    @eval using $pkg
end
