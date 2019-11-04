# Automatically generated using Clang.jl


const STBI_VERSION = 1
const stbi_uc = Cuchar
const stbi_us = UInt16

struct stbi_io_callbacks
    read::Ptr{Cvoid}
    skip::Ptr{Cvoid}
    eof::Ptr{Cvoid}
end

const stbi_write_func = Cvoid

const STBIR_ALPHA_CHANNEL_NONE = -1
const STBIR_FLAG_ALPHA_PREMULTIPLIED = 1 << 0
const STBIR_FLAG_ALPHA_USES_COLORSPACE = 1 << 1
const stbir_uint8 = UInt8
const stbir_uint16 = UInt16
const stbir_uint32 = UInt32

@cenum stbir_edge::UInt32 begin
    STBIR_EDGE_CLAMP = 1
    STBIR_EDGE_REFLECT = 2
    STBIR_EDGE_WRAP = 3
    STBIR_EDGE_ZERO = 4
end

@cenum stbir_filter::UInt32 begin
    STBIR_FILTER_DEFAULT = 0
    STBIR_FILTER_BOX = 1
    STBIR_FILTER_TRIANGLE = 2
    STBIR_FILTER_CUBICBSPLINE = 3
    STBIR_FILTER_CATMULLROM = 4
    STBIR_FILTER_MITCHELL = 5
end

@cenum stbir_colorspace::UInt32 begin
    STBIR_COLORSPACE_LINEAR = 0
    STBIR_COLORSPACE_SRGB = 1
    STBIR_MAX_COLORSPACES = 2
end

@cenum stbir_datatype::UInt32 begin
    STBIR_TYPE_UINT8 = 0
    STBIR_TYPE_UINT16 = 1
    STBIR_TYPE_UINT32 = 2
    STBIR_TYPE_FLOAT = 3
    STBIR_MAX_TYPES = 4
end
