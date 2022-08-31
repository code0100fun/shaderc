module shaderc

// Compiler
fn C.shaderc_compiler_initialize() &ShadercCompiler

fn C.shaderc_compile_into_spv(compiler &ShadercCompiler, source_text charptr, source_text_size Size_t, shader_kind ShaderKind, input_file_name charptr, entry_point_name charptr, additional_options voidptr) &ShadercCompilationResult

// Compile Options
fn C.shaderc_compile_options_initialize() ShadercCompileOptions

fn C.shaderc_compile_options_set_optimization_level(options ShadercCompileOptions, level int)

fn C.shaderc_compile_options_set_target_env(options ShadercCompileOptions, target int, version u32)

// Compilation Result
fn C.shaderc_result_get_compilation_status(result &ShadercCompilationResult) ShadercCompilationStatus

fn C.shaderc_result_get_error_message(result &ShadercCompilationResult) charptr

fn C.shaderc_result_get_length(result &ShadercCompilationResult)

fn C.shaderc_result_get_bytes(result &ShadercCompilationResult) charptr
