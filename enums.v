module shaderc

pub enum ShaderKind {
    vertex_shader = C.shaderc_vertex_shader
    fragment_shader = C.shaderc_fragment_shader
    compute_shader = C.shaderc_compute_shader
    geometry_shader = C.shaderc_geometry_shader
    tess_control_shader = C.shaderc_tess_control_shader
    tess_evaluation_shader = C.shaderc_tess_evaluation_shader
    infer_from_source = C.shaderc_glsl_infer_from_source
}

pub enum ShadercOptimizationLevel {
    zero = C.shaderc_optimization_level_zero
    size = C.shaderc_optimization_level_size
    performance = C.shaderc_optimization_level_performance
}

pub enum ShadercTargetEnv {
    vulkan = C.shaderc_target_env_vulkan
    opengl = C.shaderc_target_env_opengl
    opengl_compat = C.shaderc_target_env_opengl_compat
    webgpu = C.shaderc_target_env_webgpu
    _default = C.shaderc_target_env_default
}

pub enum ShadercCompilationStatus {
    success = C.shaderc_compilation_status_success
    invalid_stage = C.shaderc_compilation_status_invalid_stage
    compilation_error = C.shaderc_compilation_status_compilation_error
    internal_error = C.shaderc_compilation_status_internal_error
    null_result_object = C.shaderc_compilation_status_null_result_object
    invalid_assembly = C.shaderc_compilation_status_invalid_assembly
    validation_error = C.shaderc_compilation_status_validation_error
    transformation_error = C.shaderc_compilation_status_transformation_error
    configuration_error = C.shaderc_compilation_status_configuration_error
}

pub enum ShadercEnvVersion {
    vulkan_1_0 = C.shaderc_env_version_vulkan_1_0
    vulkan_1_1 = C.shaderc_env_version_vulkan_1_1
    vulkan_1_2 = C.shaderc_env_version_vulkan_1_2
    vulkan_1_3 = C.shaderc_env_version_vulkan_1_3
    opengl_4_5 = C.shaderc_env_version_opengl_4_5
    webgpu = C.shaderc_env_version_webgpu
}
