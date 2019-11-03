module LibSTBImage

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("STBImage was not build properly. Please run Pkg.build(\"STBImage\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    check_deps()
end

using CSyntax.CEnum

const Ctm = Base.Libc.TmStruct
const Ctime_t = UInt
const Cclock_t = UInt
const FILE = Cvoid
export Ctm, Ctime_t, Cclock_t, FILE

include(joinpath(@__DIR__, "..", "gen", "libstbimage_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libstbimage_api.jl"))

foreach(names(@__MODULE__, all=true)) do s
    if startswith(string(s), "stbi") || startswith(string(s), "STBI")
        @eval export $s
    end
end

end # module
