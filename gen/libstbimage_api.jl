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
# Julia wrapper for header: stb_image_write.h
# Automatically generated using Clang.jl


function stbi_write_png(filename, w, h, comp, data, stride_in_bytes)
    ccall((:stbi_write_png, libstbimage), Cint, (Cstring, Cint, Cint, Cint, Ptr{Cvoid}, Cint), filename, w, h, comp, data, stride_in_bytes)
end

function stbi_write_bmp(filename, w, h, comp, data)
    ccall((:stbi_write_bmp, libstbimage), Cint, (Cstring, Cint, Cint, Cint, Ptr{Cvoid}), filename, w, h, comp, data)
end

function stbi_write_tga(filename, w, h, comp, data)
    ccall((:stbi_write_tga, libstbimage), Cint, (Cstring, Cint, Cint, Cint, Ptr{Cvoid}), filename, w, h, comp, data)
end

function stbi_write_hdr(filename, w, h, comp, data)
    ccall((:stbi_write_hdr, libstbimage), Cint, (Cstring, Cint, Cint, Cint, Ptr{Cfloat}), filename, w, h, comp, data)
end

function stbi_write_jpg(filename, x, y, comp, data, quality)
    ccall((:stbi_write_jpg, libstbimage), Cint, (Cstring, Cint, Cint, Cint, Ptr{Cvoid}, Cint), filename, x, y, comp, data, quality)
end

function stbi_write_png_to_func(func, context, w, h, comp, data, stride_in_bytes)
    ccall((:stbi_write_png_to_func, libstbimage), Cint, (Ptr{stbi_write_func}, Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}, Cint), func, context, w, h, comp, data, stride_in_bytes)
end

function stbi_write_bmp_to_func(func, context, w, h, comp, data)
    ccall((:stbi_write_bmp_to_func, libstbimage), Cint, (Ptr{stbi_write_func}, Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}), func, context, w, h, comp, data)
end

function stbi_write_tga_to_func(func, context, w, h, comp, data)
    ccall((:stbi_write_tga_to_func, libstbimage), Cint, (Ptr{stbi_write_func}, Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}), func, context, w, h, comp, data)
end

function stbi_write_hdr_to_func(func, context, w, h, comp, data)
    ccall((:stbi_write_hdr_to_func, libstbimage), Cint, (Ptr{stbi_write_func}, Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cfloat}), func, context, w, h, comp, data)
end

function stbi_write_jpg_to_func(func, context, x, y, comp, data, quality)
    ccall((:stbi_write_jpg_to_func, libstbimage), Cint, (Ptr{stbi_write_func}, Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}, Cint), func, context, x, y, comp, data, quality)
end

function stbi_flip_vertically_on_write(flip_boolean)
    ccall((:stbi_flip_vertically_on_write, libstbimage), Cvoid, (Cint,), flip_boolean)
end
# Julia wrapper for header: stb_image_resize.h
# Automatically generated using Clang.jl


function stbir_resize_uint8(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels)
    ccall((:stbir_resize_uint8, libstbimage), Cint, (Ptr{Cuchar}, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint, Cint, Cint), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels)
end

function stbir_resize_float(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels)
    ccall((:stbir_resize_float, libstbimage), Cint, (Ptr{Cfloat}, Cint, Cint, Cint, Ptr{Cfloat}, Cint, Cint, Cint, Cint), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels)
end

function stbir_resize_uint8_srgb(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags)
    ccall((:stbir_resize_uint8_srgb, libstbimage), Cint, (Ptr{Cuchar}, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags)
end

function stbir_resize_uint8_srgb_edgemode(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode)
    ccall((:stbir_resize_uint8_srgb_edgemode, libstbimage), Cint, (Ptr{Cuchar}, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, stbir_edge), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode)
end

function stbir_resize_uint8_generic(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode, filter, space, alloc_context)
    ccall((:stbir_resize_uint8_generic, libstbimage), Cint, (Ptr{Cuchar}, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, stbir_edge, stbir_filter, stbir_colorspace, Ptr{Cvoid}), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode, filter, space, alloc_context)
end

function stbir_resize_uint16_generic(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode, filter, space, alloc_context)
    ccall((:stbir_resize_uint16_generic, libstbimage), Cint, (Ptr{stbir_uint16}, Cint, Cint, Cint, Ptr{stbir_uint16}, Cint, Cint, Cint, Cint, Cint, Cint, stbir_edge, stbir_filter, stbir_colorspace, Ptr{Cvoid}), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode, filter, space, alloc_context)
end

function stbir_resize_float_generic(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode, filter, space, alloc_context)
    ccall((:stbir_resize_float_generic, libstbimage), Cint, (Ptr{Cfloat}, Cint, Cint, Cint, Ptr{Cfloat}, Cint, Cint, Cint, Cint, Cint, Cint, stbir_edge, stbir_filter, stbir_colorspace, Ptr{Cvoid}), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, num_channels, alpha_channel, flags, edge_wrap_mode, filter, space, alloc_context)
end

function stbir_resize(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical, space, alloc_context)
    ccall((:stbir_resize, libstbimage), Cint, (Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}, Cint, Cint, Cint, stbir_datatype, Cint, Cint, Cint, stbir_edge, stbir_edge, stbir_filter, stbir_filter, stbir_colorspace, Ptr{Cvoid}), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical, space, alloc_context)
end

function stbir_resize_subpixel(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical, space, alloc_context, x_scale, y_scale, x_offset, y_offset)
    ccall((:stbir_resize_subpixel, libstbimage), Cint, (Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}, Cint, Cint, Cint, stbir_datatype, Cint, Cint, Cint, stbir_edge, stbir_edge, stbir_filter, stbir_filter, stbir_colorspace, Ptr{Cvoid}, Cfloat, Cfloat, Cfloat, Cfloat), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical, space, alloc_context, x_scale, y_scale, x_offset, y_offset)
end

function stbir_resize_region(input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical, space, alloc_context, s0, t0, s1, t1)
    ccall((:stbir_resize_region, libstbimage), Cint, (Ptr{Cvoid}, Cint, Cint, Cint, Ptr{Cvoid}, Cint, Cint, Cint, stbir_datatype, Cint, Cint, Cint, stbir_edge, stbir_edge, stbir_filter, stbir_filter, stbir_colorspace, Ptr{Cvoid}, Cfloat, Cfloat, Cfloat, Cfloat), input_pixels, input_w, input_h, input_stride_in_bytes, output_pixels, output_w, output_h, output_stride_in_bytes, datatype, num_channels, alpha_channel, flags, edge_mode_horizontal, edge_mode_vertical, filter_horizontal, filter_vertical, space, alloc_context, s0, t0, s1, t1)
end
