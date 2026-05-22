# SCCAD 3 nm PDK — Sample PnR Scripts

Reference place-and-route scripts for the SCCAD-Lab 3 nm GAA FSPR PDK, ready to run on two open / openable academic test designs (ECG `point_scalar_mult`, OpenPiton `tile`) under either Cadence Innovus or Synopsys IC Compiler II.

The scripts are end-to-end (synthesis netlist → routed `.def`) and have been sanity-run before this release; see `VERIFICATION_REPORT.md` for the quality-of-results checks. They are intended as starting points: clone, point `PDK_ROOT` at your PDK install, drop in your netlist + SDC, and run.

---

## 1. Contents

| File | Tool | Design | Purpose |
|---|---|---|---|
| `ECG_innovus.tcl` | Cadence Innovus | `point_scalar_mult` (ECG) | Self-contained PnR script (normal2D) |
| `ECG_innovus.run.sh` | bash | — | Launcher: checks `PDK_ROOT`, creates `impl/ log/ RPT/`, calls `innovus -files` |
| `ECG_icc2.tcl` | Synopsys ICC2 | `point_scalar_mult` (ECG) | Self-contained PnR script (normal2D) |
| `ECG_icc2.run.sh` | bash | — | Launcher for ICC2 |
| `OpenPiton_innovus.tcl` | Cadence Innovus | `tile` (OpenPiton) | Self-contained PnR script (normal2D), 28-macro floorplan |
| `OpenPiton_innovus.run.sh` | bash | — | Launcher for OpenPiton + Innovus |
| `OpenPiton_innovus.pin.tcl` | — | `tile` | IO-pin placement in **Innovus syntax** (`moveGroupPins`). Rename to `tile.pin.tcl` before the run. |
| `OpenPiton_icc2.tcl` | Synopsys ICC2 | `tile` (OpenPiton) | Self-contained PnR script (normal2D), 28-macro floorplan |
| `OpenPiton_icc2.run.sh` | bash | — | Launcher for OpenPiton + ICC2 |
| `OpenPiton_icc2.pin.tcl` | — | `tile` | IO-pin placement in **ICC2 syntax** (`set_individual_pin_constraints`). Rename to `tile.pin.tcl` before the run. |
| `OpenPiton_FloorPlan.def` | — | `tile` | Pre-placed locations for the 28 SRAM macros (~5 KB DEF). Rename to `impl/FloorPlan.def` before the run. |

Total: **11 files** (4 TCL scripts + 4 launchers + 2 pin files + 1 floorplan DEF).

---

## 2. Requirements

### Tools (versions tested in this release)

| Tool | Version | Notes |
|---|---|---|
| Cadence Innovus | 25.11-s102_1 | Older 23.x+ should work; not tested |
| Synopsys IC Compiler II | X-2025.06-SP2 | Older 2024.x+ should work; not tested |

### PDK

- **SCCAD 3 nm GAA FSPR PDK** (Front-Side Power Rail variant). FSPR_RVT is the configuration sanity-verified in this release; FSPR_LVT should work with the same script if the PDK ships the LVT 2d_db.

Expected PDK layout under `$PDK_ROOT/`:

```
$PDK_ROOT/
├── 2d_tech_lef/                  # Innovus tech LEF, ICC2 .tf
├── 2d_lef/                       # Standard-cell LEF
├── 2d_db/                        # Liberty .lib / .db
├── 2d_tch/                       # Innovus QRC techfiles
├── 2d_ndm/                       # ICC2 NDM (tech + lib)
├── 2d_tluplus/                   # ICC2 TLU+ parasitics
└── openpiton_mem_L3_256k/        # OpenPiton SRAM hard macros (only needed for OpenPiton)
    ├── 2d_hard_lef/              # SRAM LEF
    └── 2d_hard_lib/              # SRAM Liberty / NDM
```

Innovus consumes `2d_tech_lef`, `2d_lef`, `2d_db`, `2d_tch`. ICC2 consumes `2d_ndm`, `2d_tluplus`, `2d_db`. The scripts derive these paths from `PDK_ROOT`; see §4 if your PDK uses a different directory layout.

### Sample design inputs

Inputs are **not shipped** with this release. Place them in the run directory alongside the script before launch:

| Design | Files needed | Source |
|---|---|---|
| ECG | `point_scalar_mult.netlist.v`, `point_scalar_mult.sdc` | ECG `point_scalar_mult` reference design (10 GHz target, see SDC for clock period) |
| OpenPiton | `tile.netlist.v`, `tile.sdc`, `tile.pin.tcl`, `impl/FloorPlan.def` | OpenPiton 1-core `tile` block (synthesized at user's target frequency) |

A reference set used during sanity verification is available from the SCCAD-Lab release contact on request. For external users, point the scripts at synthesized netlists for your own builds of these designs.

---

## 3. Usage

### Step 1 — set environment

```bash
export PDK_ROOT=/path/to/sccad_fspr
# Optionally source your Cadence / Synopsys setup so innovus / icc2_shell are on PATH:
# source /tools/software/cadence/setup.sh
# source /tools/software/synopsys/setup.sh
```

### Step 2 — assemble a run directory

```bash
mkdir my_run && cd my_run

# Copy the script + launcher for your tool / design:
cp /path/to/release/ECG_innovus.tcl       .
cp /path/to/release/ECG_innovus.run.sh    .

# Drop in the design inputs:
cp /path/to/my/point_scalar_mult.netlist.v .
cp /path/to/my/point_scalar_mult.sdc       .
```

For OpenPiton runs, additionally stage the pin file and the floorplan DEF:

```bash
# Innovus:
cp /path/to/release/OpenPiton_innovus.pin.tcl ./tile.pin.tcl

# ICC2:
cp /path/to/release/OpenPiton_icc2.pin.tcl    ./tile.pin.tcl

# Both tools need the same SRAM-macro floorplan:
mkdir -p impl
cp /path/to/release/OpenPiton_FloorPlan.def ./impl/FloorPlan.def
```

### Step 3 — run

```bash
bash ECG_innovus.run.sh
# or
bash ECG_icc2.run.sh
bash OpenPiton_innovus.run.sh
bash OpenPiton_icc2.run.sh
```

### Step 4 — expected outputs

| Output | Tool | Description |
|---|---|---|
| `impl/normal2D*.enc[.dat]` | Innovus | Per-stage encrypted database checkpoints (place / preCTS / postCTS / route) |
| `impl_normal2D/normal2D/design_label.{place,postCTS,route}/` | ICC2 | Per-stage NDM checkpoints |
| `RPT/PR.*` | Innovus | Post-route timing, power, DRV reports |
| `<design>.{pin.layer, pin.loc, pin.tcl, scaled.cts}` | both | Final pin placement and CTS snapshot |
| `<design>.def`, `out.flat`, `<design>.spef.gz` | both | Routed DEF, flat instance dump, post-route parasitics |
| `innovus.normal2D.log` / `icc2.normal2D.log` | both | Tool log (mirrored on stdout via `tee` for Innovus) |
| `normal2D.analysis.summary.rpt.gz` (Innovus) / `normal2D.logging` (ICC2) | both | Headline summary file |

Typical wall-clock on a 128-core host: ECG_innovus ≈ 2 h, ECG_icc2 ≈ 40 min, OpenPiton_innovus ≈ 2.5 h, OpenPiton_icc2 ≈ 2.5 h.

---

## 4. Configuration

### Required environment variable

| Name | Required | Description |
|---|---|---|
| `PDK_ROOT` | yes | Root directory of the SCCAD-Lab PDK (e.g. `/path/to/sccad_fspr`). All other PDK paths derive from this. |

### Internally-derived variables (set by the script)

All four scripts auto-set the tool-specific path variables from `PDK_ROOT`. You do **not** need to set these unless your PDK uses a non-default directory layout.

| Variable | Tool | Default value |
|---|---|---|
| `TECHLEF_DIR` | Innovus | `$PDK_ROOT/2d_tech_lef` |
| `MACROLEF_DIR` | Innovus | `$PDK_ROOT/2d_lef` |
| `MACROLIB_DIR` | Innovus | `$PDK_ROOT/2d_db` |
| `TCH_DIR` | Innovus | `$PDK_ROOT/2d_tch` |
| `CAPTBL_DIR` | Innovus | optional; only needed if your PDK ships captbl files |
| `HARDMACROLEF_DIR` | Innovus | `$PDK_ROOT/openpiton_mem_L3_256k/2d_hard_lef` (OpenPiton only) |
| `HARDMACROLIB_DIR` | Innovus | `$PDK_ROOT/openpiton_mem_L3_256k/2d_hard_lib` (OpenPiton only) |
| `NDM_DIR` | ICC2 | `$PDK_ROOT/2d_ndm` |
| `TF_DIR` | ICC2 | `$PDK_ROOT/2d_tech_lef` |
| `TLU_DIR` | ICC2 | `$PDK_ROOT/2d_tluplus` |
| `MACRODB_DIR` | ICC2 | `$PDK_ROOT/2d_db` |
| `HARDNDM` | ICC2 | `$PDK_ROOT/openpiton_mem_L3_256k/2d_hard_lib` (OpenPiton only) |
| `build_name` | both | `point_scalar_mult` (ECG) / `tile` (OpenPiton). Controls input filenames. |

To override any of these, export the env var **before** invoking the launcher; the script honors pre-set values.

### Example: override SRAM library path for OpenPiton

```bash
export PDK_ROOT=/path/to/sccad_fspr
export HARDMACROLEF_DIR=/path/to/my_sram_lef
export HARDMACROLIB_DIR=/path/to/my_sram_lib
bash OpenPiton_innovus.run.sh
```

---

## 5. Tested Configurations

The sanity runs in this release used the **FSPR_RVT** PDK variant on a 128-core Linux x86_64 host. Tool versions: Innovus 25.11-s102_1, IC Compiler II X-2025.06-SP2.

| Variant | Innovus | ICC2 |
|---|---|---|
| FSPR_RVT | **bit-exact match** to original pre-consolidation runs (WNS, TNS, density, instance count, power all identical) | structural metrics within ≤ 2.4 % (wirelength, cells, utilization, power); final WNS / TNS drifted within ICC2's intrinsic placement non-determinism — see VERIFICATION_REPORT §5 |
| FSPR_LVT | should work; not tested in this release | should work; not tested in this release |
| BPR_LVT / BPR_RVT | not supported in this release (BS-CDN code paths stripped) | not supported in this release |

Detailed per-script QoR is in `VERIFICATION_REPORT.md`.

---

## 6. Known Limitations

1. **FSPR-only.** The scripts hardcode the FSPR layer stack (`M1..M8`) and contain no backside-route range. BPR-variant support requires re-introducing the BS-CDN code paths that were intentionally stripped during consolidation.
2. **`finalTiming` STAGE not included.** Only the `normal2D` flow is in this release. To produce post-route signoff timing reports from the saved database, re-open `impl/normal2D.enc` (Innovus) or `impl_normal2D/.../design_label.route` (ICC2) and run `report_timing` / `report_power` manually.
3. **OpenPiton has a few minor pre-existing DRCs.** Both the consolidated and original pre-consolidation runs report 4 × `max_cap` and 5 × `max_tran` violations (worst −0.005 ps). These are intrinsic to the tile floorplan + SRAM placement and are not introduced by this script set. A final `optDesign -postRoute -drv` pass would clean them; the release scripts do not run it.
4. **OpenPiton pin files are tool-specific.** Use `OpenPiton_innovus.pin.tcl` with Innovus only, `OpenPiton_icc2.pin.tcl` with ICC2 only. The ICC2 script wraps the `source` call in `catch`, so a syntax mismatch will not abort the run — it will fall back to `place_pins -self`, which gives a reasonable but different IO placement.
5. **OpenROAD scripts not in this release.** Equivalent consolidation for OpenROAD is planned as a separate release.
6. **ICC2 is not bit-deterministic.** Re-running `ECG_icc2.tcl` will not produce identical WNS / TNS numbers each time; structural QoR (wirelength, cells, power) will be stable within ≤ 2 %. See `VERIFICATION_REPORT.md` §5.5.

---

## 7. License

*(placeholder — to be set by Prof. Lim before public release)*

---

## 8. Acknowledgements

See top-level `ACKNOWLEDGEMENTS.md` (provided separately with the full release bundle) for SCCAD-Lab contributors and academic acknowledgements.

---

## 9. Contact / Reporting issues

Please file issues or questions through the SCCAD-Lab release contact (forthcoming on the public release page). Verification artifacts and per-run logs from the sanity tests are preserved on the lab cluster and may be requested for reproducibility cross-checks.
