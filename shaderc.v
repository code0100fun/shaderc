module shaderc

// Compiler
pub fn compiler_initialize() &ShadercCompiler {
    return C.shaderc_compiler_initialize()
}

pub fn (compiler &ShadercCompiler) compile_into_spv(source_text string, shader_kind ShaderKind, input_file_name string, entry_point_name string, additional_options ShadercCompileOptions) &ShadercCompilationResult {
    return C.shaderc_compile_into_spv(compiler, source_text.str, to_size_t(source_text.len),
        shader_kind, input_file_name.str, entry_point_name.str, additional_options)
}

// Compilation Result
pub fn (result &ShadercCompilationResult) status() ShadercCompilationStatus {
    return C.shaderc_result_get_compilation_status(result)
}

pub fn (result &ShadercCompilationResult) error_message() string {
    error := C.shaderc_result_get_error_message(result)
    return unsafe { error.vstring() }
}

pub fn (result &ShadercCompilationResult) bytes() []u8 {
    bytes := C.shaderc_result_get_bytes(result)
    length := C.shaderc_result_get_length(result)
    return unsafe { bytes.vbytes(length) }
}

// Compile Options
pub fn compile_options_initialize() ShadercCompileOptions {
    return C.shaderc_compile_options_initialize()
}

pub fn (options ShadercCompileOptions) set_optimization_level(level ShadercOptimizationLevel) {
    C.shaderc_compile_options_set_optimization_level(options, int(level))
}

pub fn (options ShadercCompileOptions) set_target_env(target ShadercTargetEnv, version ShadercEnvVersion) {
    C.shaderc_compile_options_set_target_env(options, int(target), u32(version))
}
