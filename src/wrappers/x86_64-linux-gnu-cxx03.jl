# Autogenerated wrapper script for CGAL_jll for x86_64-linux-gnu-cxx03
export libCGAL, libCGAL_Core, libCGAL_ImageIO

using boost_jll
using GMP_jll
using MPFR_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("CGAL")
JLLWrappers.@declare_library_product(libCGAL, "libCGAL.so.13")
JLLWrappers.@declare_library_product(libCGAL_Core, "libCGAL_Core.so.13")
JLLWrappers.@declare_library_product(libCGAL_ImageIO, "libCGAL_ImageIO.so.14")
function __init__()
    JLLWrappers.@generate_init_header(boost_jll, GMP_jll, MPFR_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libCGAL,
        "lib/libCGAL.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libCGAL_Core,
        "lib/libCGAL_Core.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libCGAL_ImageIO,
        "lib/libCGAL_ImageIO.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
