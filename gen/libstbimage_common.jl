# Automatically generated using Clang.jl


const STBI_VERSION = 1
const stbi_uc = Cuchar
const stbi_us = UInt16

struct stbi_io_callbacks
    read::Ptr{Cvoid}
    skip::Ptr{Cvoid}
    eof::Ptr{Cvoid}
end
