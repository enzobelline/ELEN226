set SynModuleInfo {
  {SRCNAME mmul MODELNAME mmul RTLNAME mmul IS_TOP 1
    SUBMODULES {
      {MODELNAME mmul_mux_32_16_1_1 RTLNAME mmul_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmul_mux_43_16_1_1 RTLNAME mmul_mux_43_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmul_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME mmul_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mmul_flow_control_loop_pipe RTLNAME mmul_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mmul_flow_control_loop_pipe_U}
    }
  }
}
