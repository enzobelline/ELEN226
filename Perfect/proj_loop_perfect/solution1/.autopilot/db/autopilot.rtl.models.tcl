set SynModuleInfo {
  {SRCNAME loop_perfect MODELNAME loop_perfect RTLNAME loop_perfect IS_TOP 1
    SUBMODULES {
      {MODELNAME loop_perfect_mac_muladd_5ns_5s_12s_12_4_1 RTLNAME loop_perfect_mac_muladd_5ns_5s_12s_12_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME loop_perfect_mul_mul_12s_13ns_26_4_1 RTLNAME loop_perfect_mul_mul_12s_13ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME loop_perfect_flow_control_loop_pipe RTLNAME loop_perfect_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME loop_perfect_flow_control_loop_pipe_U}
    }
  }
}
