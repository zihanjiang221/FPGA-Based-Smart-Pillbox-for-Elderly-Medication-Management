-makelib ies_lib/xil_defaultlib -sv \
  "C:/digital_system_study/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/digital_system_study/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../pill_box.srcs/sources_1/ip/clk_core/clk_core_clk_wiz.v" \
  "../../../../pill_box.srcs/sources_1/ip/clk_core/clk_core.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

