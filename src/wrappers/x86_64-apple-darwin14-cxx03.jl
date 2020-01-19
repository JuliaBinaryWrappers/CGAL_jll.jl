# Autogenerated wrapper script for CGAL_jll for x86_64-apple-darwin14-cxx03
export libCGAL, libCGAL_Core

using boost_jll
using GMP_jll
using MPFR_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libCGAL`
const libCGAL_splitpath = ["lib", "libCGAL.13.0.3.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libCGAL_path = ""

# libCGAL-specific global declaration
# This will be filled out by __init__()
libCGAL_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libCGAL = "@rpath/libCGAL.13.dylib"


# Relative path to `libCGAL_Core`
const libCGAL_Core_splitpath = ["lib", "libCGAL_Core.13.0.3.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libCGAL_Core_path = ""

# libCGAL_Core-specific global declaration
# This will be filled out by __init__()
libCGAL_Core_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libCGAL_Core = "@rpath/libCGAL_Core.13.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"CGAL")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (boost_jll.PATH_list, GMP_jll.PATH_list, MPFR_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (boost_jll.LIBPATH_list, GMP_jll.LIBPATH_list, MPFR_jll.LIBPATH_list,))

    global libCGAL_path = normpath(joinpath(artifact_dir, libCGAL_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libCGAL_handle = dlopen(libCGAL_path)
    push!(LIBPATH_list, dirname(libCGAL_path))

    global libCGAL_Core_path = normpath(joinpath(artifact_dir, libCGAL_Core_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libCGAL_Core_handle = dlopen(libCGAL_Core_path)
    push!(LIBPATH_list, dirname(libCGAL_Core_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

