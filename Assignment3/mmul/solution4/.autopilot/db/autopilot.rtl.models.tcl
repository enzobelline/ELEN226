set SynModuleInfo {
  {SRCNAME mmul MODELNAME mmul RTLNAME mmul IS_TOP 1
    SUBMODULES {
      {MODELNAME mmul_mul_16s_16s_16_2_1 RTLNAME mmul_mul_16s_16s_16_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME mmul_mux_43_16_1_1 RTLNAME mmul_mux_43_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmul_mux_32_16_1_1 RTLNAME mmul_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmul_mux_63_16_1_1 RTLNAME mmul_mux_63_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmul_flow_control_loop_pipe RTLNAME mmul_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mmul_flow_control_loop_pipe_U}
    }
  }
}
