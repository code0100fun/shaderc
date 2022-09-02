module shaderc

pub type ShadercCompiler = voidptr
pub type ShadercIncludeResult = voidptr
pub type ShadercCompileOptions = voidptr
pub type ShadercCompilationResult = voidptr

// Windows
pub type Size_t = u64

// Other platforms
// pub type Size_t = u32
pub fn to_size_t(n int) Size_t {
    return Size_t(u64(n))
}
