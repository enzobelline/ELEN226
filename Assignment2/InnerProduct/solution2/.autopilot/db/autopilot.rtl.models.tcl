set SynModuleInfo {
  {SRCNAME inner_product MODELNAME inner_product RTLNAME inner_product IS_TOP 1
    SUBMODULES {
      {MODELNAME inner_product_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME inner_product_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inner_product_flow_control_loop_pipe RTLNAME inner_product_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME inner_product_flow_control_loop_pipe_U}
    }
  }
}
