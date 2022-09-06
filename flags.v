module shaderc

#flag -L @VMODROOT/build/shaderc/libshaderc
#flag -I @VMODROOT/thirdparty/shaderc/libshaderc/include
#flag windows -lshaderc_shared
#flag linux /usr/lib/x86_64-linux-gnu/libstdc++.so.6
#flag linux -lshaderc_combined
#include "shaderc/shaderc.h"
