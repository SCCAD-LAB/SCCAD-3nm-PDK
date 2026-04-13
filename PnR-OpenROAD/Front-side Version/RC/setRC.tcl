# Resistance methodology:
#   ρ_eff(W_min, T)  = rho_values at W_min from ICT [Ω·µm, includes size-effect scattering]
#   R_s              = ρ_eff / T                      [Ω/sq]
#   R/L              = R_s / W_min                    [Ω/µm]  -> / 1000 -> [kΩ/µm]
#
# Capacitance methodology:
#   C/L = eps0 * er_ILD * W_min / T_ILD              [fF/µm] -> / 1000 -> [pF/µm]
#   where T_ILD is the surrounding ILD thickness (parallel-plate through same-level ILD)
#
# Layer   W_min  T      rho@Wmin   R_s(Ω/sq)  ILD   T_ILD  -> R(kΩ/µm)   C(pF/µm)
# M1      0.012  0.024  0.17200    7.167       ILD1  0.022     5.972e-01  1.401e-05
# M2      0.012  0.024  0.17900    7.458       ILD2  0.022     6.215e-01  1.401e-05
# M3      0.012  0.024  0.17200    7.167       ILD3  0.022     5.972e-01  1.401e-05
# M4      0.018  0.036  0.11200    3.111       ILD4  0.034     1.728e-01  1.359e-05
# M5      0.018  0.036  0.11200    3.111       ILD5  0.034     1.728e-01  1.359e-05
# M6      0.024  0.048  0.07510    1.565       ILD6  0.046     6.519e-02  1.340e-05
# M7      0.024  0.048  0.07510    1.565       ILD7  0.046     6.519e-02  1.340e-05
# M8      0.032  0.064  0.07510    1.173       ILD8  0.062     3.667e-02  1.325e-05
# M9      0.032  0.064  0.07510    1.173       ILD9  0.062     3.667e-02  1.325e-05

set_layer_rc -layer M1 -resistance 5.972200e-01 -capacitance 1.400572e-05
set_layer_rc -layer M2 -resistance 6.215300e-01 -capacitance 1.400572e-05
set_layer_rc -layer M3 -resistance 5.972200e-01 -capacitance 1.400572e-05
set_layer_rc -layer M4 -resistance 1.728400e-01 -capacitance 1.359378e-05
set_layer_rc -layer M5 -resistance 1.728400e-01 -capacitance 1.359378e-05
set_layer_rc -layer M6 -resistance 6.519000e-02 -capacitance 1.339677e-05
set_layer_rc -layer M7 -resistance 6.519000e-02 -capacitance 1.339677e-05
set_layer_rc -layer M8 -resistance 3.667000e-02 -capacitance 1.325272e-05
set_layer_rc -layer M9 -resistance 3.667000e-02 -capacitance 1.325272e-05

# Via resistance: contact_resistance from ICT [Ω] / 1000 = [kΩ/cut]
# V1-V3: 12nm vias,  63.5282 Ω/cut  (same geometry as V0LIG/V0LISD)
# V4-V5: 18nm vias,  19.800  Ω/cut  (corrected from placeholder 19.38 Ω)
# V6-V7: 24nm vias,  10.810  Ω/cut
# V8:    32nm vias,   6.130  Ω/cut
set_layer_rc -via V1 -resistance 6.352824070e-02
set_layer_rc -via V2 -resistance 6.352824070e-02
set_layer_rc -via V3 -resistance 6.352824070e-02
set_layer_rc -via V4 -resistance 1.980000000e-02
set_layer_rc -via V5 -resistance 1.980000000e-02
set_layer_rc -via V6 -resistance 1.081000000e-02
set_layer_rc -via V7 -resistance 1.081000000e-02
set_layer_rc -via V8 -resistance 6.130000000e-03
