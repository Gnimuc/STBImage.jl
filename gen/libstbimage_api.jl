# Julia wrapper for header: stb_image.h
# Automatically generated using Clang.jl


function stbi_load_from_memory(buffer, len, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_from_memory, libstbimage), Ptr{stbi_uc}, (Ptr{stbi_uc}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), buffer, len, x, y, channels_in_file, desired_channels)
end

function stbi_load_from_callbacks(clbk, user, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_from_callbacks, libstbimage), Ptr{stbi_uc}, (Ptr{stbi_io_callbacks}, Ptr{Cvoid}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), clbk, user, x, y, channels_in_file, desired_channels)
end

function stbi_load(filename, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load, libstbimage), Ptr{stbi_uc}, (Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), filename, x, y, channels_in_file, desired_channels)
end

function stbi_load_from_file(f, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_from_file, libstbimage), Ptr{stbi_uc}, (Ptr{FILE}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), f, x, y, channels_in_file, desired_channels)
end

function stbi_load_gif_from_memory(buffer, len, delays, x, y, z, comp, req_comp)
    ccall((:stbi_load_gif_from_memory, libstbimage), Ptr{stbi_uc}, (Ptr{stbi_uc}, Cint, Ptr{Ptr{Cint}}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), buffer, len, delays, x, y, z, comp, req_comp)
end

function stbi_load_16_from_memory(buffer, len, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_16_from_memory, libstbimage), Ptr{stbi_us}, (Ptr{stbi_uc}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), buffer, len, x, y, channels_in_file, desired_channels)
end

function stbi_load_16_from_callbacks(clbk, user, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_16_from_callbacks, libstbimage), Ptr{stbi_us}, (Ptr{stbi_io_callbacks}, Ptr{Cvoid}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), clbk, user, x, y, channels_in_file, desired_channels)
end

function stbi_load_16(filename, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_16, libstbimage), Ptr{stbi_us}, (Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), filename, x, y, channels_in_file, desired_channels)
end

function stbi_load_from_file_16(f, x, y, channels_in_file, desired_channels)
    ccall((:stbi_load_from_file_16, libstbimage), Ptr{stbi_us}, (Ptr{FILE}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), f, x, y, channels_in_file, desired_channels)
end

function stbi_loadf_from_memory(buffer, len, x, y, channels_in_file, desired_channels)
    ccall((:stbi_loadf_from_memory, libstbimage), Ptr{Cfloat}, (Ptr{stbi_uc}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), buffer, len, x, y, channels_in_file, desired_channels)
end

function stbi_loadf_from_callbacks(clbk, user, x, y, channels_in_file, desired_channels)
    ccall((:stbi_loadf_from_callbacks, libstbimage), Ptr{Cfloat}, (Ptr{stbi_io_callbacks}, Ptr{Cvoid}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), clbk, user, x, y, channels_in_file, desired_channels)
end

function stbi_loadf(filename, x, y, channels_in_file, desired_channels)
    ccall((:stbi_loadf, libstbimage), Ptr{Cfloat}, (Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), filename, x, y, channels_in_file, desired_channels)
end

function stbi_loadf_from_file(f, x, y, channels_in_file, desired_channels)
    ccall((:stbi_loadf_from_file, libstbimage), Ptr{Cfloat}, (Ptr{FILE}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), f, x, y, channels_in_file, desired_channels)
end

function stbi_hdr_to_ldr_gamma(gamma)
    ccall((:stbi_hdr_to_ldr_gamma, libstbimage), Cvoid, (Cfloat,), gamma)
end

function stbi_hdr_to_ldr_scale(scale)
    ccall((:stbi_hdr_to_ldr_scale, libstbimage), Cvoid, (Cfloat,), scale)
end

function stbi_ldr_to_hdr_gamma(gamma)
    ccall((:stbi_ldr_to_hdr_gamma, libstbimage), Cvoid, (Cfloat,), gamma)
end

function stbi_ldr_to_hdr_scale(scale)
    ccall((:stbi_ldr_to_hdr_scale, libstbimage), Cvoid, (Cfloat,), scale)
end

function stbi_is_hdr_from_callbacks(clbk, user)
    ccall((:stbi_is_hdr_from_callbacks, libstbimage), Cint, (Ptr{stbi_io_callbacks}, Ptr{Cvoid}), clbk, user)
end

function stbi_is_hdr_from_memory(buffer, len)
    ccall((:stbi_is_hdr_from_memory, libstbimage), Cint, (Ptr{stbi_uc}, Cint), buffer, len)
end

function stbi_is_hdr(filename)
    ccall((:stbi_is_hdr, libstbimage), Cint, (Cstring,), filename)
end

function stbi_is_hdr_from_file(f)
    ccall((:stbi_is_hdr_from_file, libstbimage), Cint, (Ptr{FILE},), f)
end

function stbi_failure_reason()
    ccall((:stbi_failure_reason, libstbimage), Cstring, ())
end

function stbi_image_free(retval_from_stbi_load)
    ccall((:stbi_image_free, libstbimage), Cvoid, (Ptr{Cvoid},), retval_from_stbi_load)
end

function stbi_info_from_memory(buffer, len, x, y, comp)
    ccall((:stbi_info_from_memory, libstbimage), Cint, (Ptr{stbi_uc}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), buffer, len, x, y, comp)
end

function stbi_info_from_callbacks(clbk, user, x, y, comp)
    ccall((:stbi_info_from_callbacks, libstbimage), Cint, (Ptr{stbi_io_callbacks}, Ptr{Cvoid}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), clbk, user, x, y, comp)
end

function stbi_is_16_bit_from_memory(buffer, len)
    ccall((:stbi_is_16_bit_from_memory, libstbimage), Cint, (Ptr{stbi_uc}, Cint), buffer, len)
end

function stbi_is_16_bit_from_callbacks(clbk, user)
    ccall((:stbi_is_16_bit_from_callbacks, libstbimage), Cint, (Ptr{stbi_io_callbacks}, Ptr{Cvoid}), clbk, user)
end

function stbi_info(filename, x, y, comp)
    ccall((:stbi_info, libstbimage), Cint, (Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), filename, x, y, comp)
end

function stbi_info_from_file(f, x, y, comp)
    ccall((:stbi_info_from_file, libstbimage), Cint, (Ptr{FILE}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), f, x, y, comp)
end

function stbi_is_16_bit(filename)
    ccall((:stbi_is_16_bit, libstbimage), Cint, (Cstring,), filename)
end

function stbi_is_16_bit_from_file(f)
    ccall((:stbi_is_16_bit_from_file, libstbimage), Cint, (Ptr{FILE},), f)
end

function stbi_set_unpremultiply_on_load(flag_true_if_should_unpremultiply)
    ccall((:stbi_set_unpremultiply_on_load, libstbimage), Cvoid, (Cint,), flag_true_if_should_unpremultiply)
end

function stbi_convert_iphone_png_to_rgb(flag_true_if_should_convert)
    ccall((:stbi_convert_iphone_png_to_rgb, libstbimage), Cvoid, (Cint,), flag_true_if_should_convert)
end

function stbi_set_flip_vertically_on_load(flag_true_if_should_flip)
    ccall((:stbi_set_flip_vertically_on_load, libstbimage), Cvoid, (Cint,), flag_true_if_should_flip)
end

function stbi_zlib_decode_malloc_guesssize(buffer, len, initial_size, outlen)
    ccall((:stbi_zlib_decode_malloc_guesssize, libstbimage), Cstring, (Cstring, Cint, Cint, Ptr{Cint}), buffer, len, initial_size, outlen)
end

function stbi_zlib_decode_malloc_guesssize_headerflag(buffer, len, initial_size, outlen, parse_header)
    ccall((:stbi_zlib_decode_malloc_guesssize_headerflag, libstbimage), Cstring, (Cstring, Cint, Cint, Ptr{Cint}, Cint), buffer, len, initial_size, outlen, parse_header)
end

function stbi_zlib_decode_malloc(buffer, len, outlen)
    ccall((:stbi_zlib_decode_malloc, libstbimage), Cstring, (Cstring, Cint, Ptr{Cint}), buffer, len, outlen)
end

function stbi_zlib_decode_buffer(obuffer, olen, ibuffer, ilen)
    ccall((:stbi_zlib_decode_buffer, libstbimage), Cint, (Cstring, Cint, Cstring, Cint), obuffer, olen, ibuffer, ilen)
end

function stbi_zlib_decode_noheader_malloc(buffer, len, outlen)
    ccall((:stbi_zlib_decode_noheader_malloc, libstbimage), Cstring, (Cstring, Cint, Ptr{Cint}), buffer, len, outlen)
end

function stbi_zlib_decode_noheader_buffer(obuffer, olen, ibuffer, ilen)
    ccall((:stbi_zlib_decode_noheader_buffer, libstbimage), Cint, (Cstring, Cint, Cstring, Cint), obuffer, olen, ibuffer, ilen)
end
