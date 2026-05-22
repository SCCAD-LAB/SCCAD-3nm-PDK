# PnR Script Patch

This patch adds end-to-end sample PnR scripts for the front-side SCCAD 3 nm PDK.

## Added folders

- `PnR-Cadence/Front-side Version/Runfiles/`
- `PnR-Synopsys/Front-side Version/Runfiles/`
- `PnR-OpenROAD/Front-side Version/OpenROAD_Runfiles/`

## Contents

Cadence Innovus:
- `ECG_innovus.tcl`
- `ECG_innovus.run.sh`
- `OpenPiton_innovus.tcl`
- `OpenPiton_innovus.run.sh`
- `OpenPiton_innovus.pin.tcl`
- `OpenPiton_FloorPlan.def`

Synopsys ICC2:
- `ECG_icc2.tcl`
- `ECG_icc2.run.sh`
- `OpenPiton_icc2.tcl`
- `OpenPiton_icc2.run.sh`
- `OpenPiton_icc2.pin.tcl`
- `OpenPiton_FloorPlan.def`

OpenROAD:
- Adds the missing helper scripts called by `3nm_run.tcl`.
- Adds `design_configs/ecg.tcl` and `design_configs/openpiton.tcl`.
- Adds `run_openroad.sh`, `check_openroad_inputs.tcl`, and README.

The Cadence and Synopsys runfiles are kept as close as possible to the
upload-ready scripts. Their launchers expect `PDK_ROOT` to be set and expect the
design inputs to be staged in the run directory, as described in each
`Runfiles/README.md`.

## How to apply

From the repository root:

```bash
unzip pnr_scripts_patch.zip
cp -r USC-3N-2D/* /path/to/USC-3N-2D/
```

## How to run

Cadence:

```bash
cd "PnR-Cadence/Front-side Version/Runfiles"
export PDK_ROOT=/path/to/sccad_fspr_v_rvt
bash ECG_innovus.run.sh
bash OpenPiton_innovus.run.sh
```

Synopsys:

```bash
cd "PnR-Synopsys/Front-side Version/Runfiles"
export PDK_ROOT=/path/to/sccad_fspr_v_rvt
bash ECG_icc2.run.sh
bash OpenPiton_icc2.run.sh
```

OpenROAD:

```bash
cd "PnR-OpenROAD/Front-side Version/OpenROAD_Runfiles"
OPENROAD_BIN=/path/to/openroad bash run_openroad.sh design_configs/ecg.tcl
OPENROAD_BIN=/path/to/openroad bash run_openroad.sh design_configs/openpiton.tcl
```
