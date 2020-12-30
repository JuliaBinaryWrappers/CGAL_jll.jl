# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule CGAL_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("CGAL")
JLLWrappers.@generate_main_file("CGAL", UUID("8fcd9439-76b0-55f4-a525-bad0597c05d8"))
end  # module CGAL_jll
