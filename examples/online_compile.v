import code0100fun.shaderc

fn main() {
    source := '#version 450\nvoid main() {}\n'
    options := shaderc.compile_options_initialize()
    options.set_target_env(.opengl, .opengl_4_5)
    compiler := shaderc.compiler_initialize()
    result := compiler.compile_into_spv(source, .vertex_shader, 'shader.glsl', 'main',
        &options)
    println(result.status())
    println(result.error_message())
}
