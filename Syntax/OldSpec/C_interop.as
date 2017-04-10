# for C interop, pointers and some other parts of the language that are not normally exposed will have to be made available. 
# This will all be done through the Astro FFI. The FFI will eventually provide interop to multiple languages including C++.

ffi.c.someCFunction()

ffi.c_struct some_struct
    int attr,
    char * some_string
end

ffi.c_include "some_header.h"

ffi.c_include "stdio.h"

ffi.c_map some_object to some_struct
    astro_attr to attr
    name_of_thing to some_string
end
