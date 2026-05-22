# OpenROAD Run Files

This folder contains generic OpenROAD run scripts for the 3nm front-side examples.
The selected design is controlled by a Tcl config file under `design_configs/`.

## Main Run

Run from this folder:

```bash
OPENROAD_BIN=/path/to/openroad bash run_openroad.sh 3nm_run.tcl
```

By default this runs ECG:

```text
design_configs/ecg.tcl
```

The call chain is:

```text
run_openroad.sh
  -> 3nm_run.tcl
      -> design_configs/ecg.tcl by default
      -> or $DESIGN_CONFIG if set
      -> flow.tcl
```

To select another design config:

```bash
DESIGN_CONFIG=design_configs/openpiton.tcl \
OPENROAD_BIN=/path/to/openroad \
bash run_openroad.sh 3nm_run.tcl
```

Or directly:

```bash
openroad -no_init 3nm_run.tcl
```

## Fast Check

Before running full P&R, check that all inputs load:

```bash
openroad -no_init check_openroad_inputs.tcl
```

Check another design config:

```bash
DESIGN_CONFIG=design_configs/openpiton.tcl \
openroad -no_init check_openroad_inputs.tcl
```

Expected final line:

```text
OPENROAD_INPUT_CHECK_PASS
```

## File Roles

```text
3nm_run.tcl              Generic run driver
flow.tcl                 End-to-end OpenROAD flow
helpers.tcl              Shared helper procedures
flow_helpers.tcl         LEF/lib and flow helper procedures
design_configs/ecg.tcl   ECG design config
design_configs/openpiton.tcl OpenPiton tile design config
3nm/3nm.vars             3nm platform variables and paths
3nm/3nm.pdn.tcl          PDN setup
3nm/3nm.tracks           Routing tracks
run_openroad.sh          Portable launcher
check_openroad_inputs.tcl Fast input-load smoke test
```

## Dependency Structure

```text
3nm_run.tcl
  |-- helpers.tcl
  |-- flow_helpers.tcl
  |-- 3nm/3nm.vars
  |-- design_configs/<design>.tcl
  |     |-- ../TECH-LEF/3nm_GAA_FSPR.tech.lef
  |     |-- ../LEF/3nm_GAA_FSPR.lef
  |     |-- ../LIB/3nm_GAA_FSPR_rvt_nldm.lib
  |     |-- ../RC/setRC.tcl
  |     |-- 3nm/3nm.pdn.tcl
  |     `-- 3nm/3nm.tracks
  `-- flow.tcl
```

## Notes

The helper scripts provide the common OpenROAD flow procedures used by this run.
The `3nm/3nm.vars` file defines platform variables and paths for this GitHub folder layout.
The ECG config points to `Sample Designs/PnR Sample-OpenROAD/ecg`.
The OpenPiton config points to `Sample Designs/PnR Sample-OpenROAD/openpiton`.
