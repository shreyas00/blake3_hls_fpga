set SynModuleInfo {
  {SRCNAME rotate_right MODELNAME rotate_right RTLNAME compress_rotate_right}
  {SRCNAME round_function MODELNAME round_function RTLNAME compress_round_function}
  {SRCNAME compress MODELNAME compress RTLNAME compress IS_TOP 1
    SUBMODULES {
      {MODELNAME compress_data0_m_axi RTLNAME compress_data0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compress_data1_m_axi RTLNAME compress_data1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compress_data2_m_axi RTLNAME compress_data2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compress_ctrl_s_axi RTLNAME compress_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
