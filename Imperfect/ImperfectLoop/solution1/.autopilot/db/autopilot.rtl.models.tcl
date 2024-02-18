set SynModuleInfo {
  {SRCNAME loop_imperfect_Pipeline_LOOP_I MODELNAME loop_imperfect_Pipeline_LOOP_I RTLNAME loop_imperfect_loop_imperfect_Pipeline_LOOP_I
    SUBMODULES {
      {MODELNAME loop_imperfect_flow_control_loop_pipe_sequential_init RTLNAME loop_imperfect_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME loop_imperfect_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME loop_imperfect MODELNAME loop_imperfect RTLNAME loop_imperfect IS_TOP 1
    SUBMODULES {
      {MODELNAME loop_imperfect_mac_muladd_5s_4ns_10s_11_4_1 RTLNAME loop_imperfect_mac_muladd_5s_4ns_10s_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME loop_imperfect_mac_muladd_5s_4ns_11s_11_4_1 RTLNAME loop_imperfect_mac_muladd_5s_4ns_11s_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME loop_imperfect_mac_muladd_5s_5ns_5s_10_4_1 RTLNAME loop_imperfect_mac_muladd_5s_5ns_5s_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME loop_imperfect_mul_mul_12s_13ns_26_4_1 RTLNAME loop_imperfect_mul_mul_12s_13ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
}
