// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// xbar_${xbar.name}_sim_cfg.hjson file generated by `tlgen.py` tool
{
  // Top level dut name (sv module).
  dut: xbar_${xbar.name}

  // Testplan hjson file.
  testplan: "{proj_root}/${xbar.ip_path}/data/autogen/{dut}_testplan.hjson"

  // Add excl files to tool_srcs so that it gets copied over to the scratch area.
  tool_srcs: ["{proj_root}/${xbar.ip_path}/dv/cov/xbar_cov_excl.el"]

  // Import additional common sim cfg files.
  import_cfgs: [// xbar common sim cfg file
                "{proj_root}/hw/ip/tlul/generic_dv/xbar_sim_cfg.hjson"]
}
