* BSD 3-Clause License
*
* Copyright (c) 2026 <Sungwoo Jung, Cheng-Yu Tsai, Amaan Rahman, Junsik Yoon, Sandra Maria Shaji, Sung Kyu Lim >, University of Southern California
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted under the BSD 3-Clause License.
* See the LICENSE file in the project root for full license terms.

** 3-nm-node NSFET (LVT)

.LIB TT
.MODEL NMOS_LVT NMOS ( LEVEL = 72
+version  = 111            bulkmod  = 1
+geomod   = 5              capmod   = 1
+coremod  = 0              cgeomod  = 0
+igcmod   = 0              igbmod   = 0
+gidlmod  = 0              iimod    = 0
+rdsmod   = 0              rgatemod = 0
+rgeomod  = 0              shmod    = 0
+nqsmod   = 0              tnom     = 25
+eot      = 0.795e-009     epsrox   = 3.9
+epsrsub  = 11.9           epsrsp   = 3.9
+easub    = 4.05           ni0sub   = 1.1e+016
+bg0sub   = 1.12           nc0sub   = 2.86e+025
+nbody    = 1e+021         nsd      = 4e+026
+wgaa     = 2.0e-008       tgaa     = 5.0e-009
+ngaa     = 3              nfin     = 1
+nf       = 1              fpitch   = 3.5e-008
+l        = 1.2e-008       lsp      = 5.0e-9
+sdterm   = 0              devtype  = 1
+cit      = 0              phig     = 4.231052
+rdsw     = 1.384165e+01   cdsc     = 2.750617e-03
+cdscd    = 1.000000e-11   dvt0     = 0.00
+dvt1     = 0.60           dvtp0    = -1.823340e-02
+dvtshift = 0              phin     = 0.05
+eta0     = 3.571000e-01   dsub     = 2.575837e+01
+k1rsce   = 0              lpe0     = 0
+qmfactor = 0.0            etaqm    = 0.54
+qm0      = 8.80479e-02    u0       = 3.994096e-02
+ua       = 3.189484e+01   eu       = 0
+ud       = 0.3            ucs      = 1.561801e+01
+etamob   = 3.53125        up       = 0
+vsat     = 7.030000e+04   vsat1    = 4.600000e+05
+ksativ   = 4.921315e-01   deltavsat= 0.28
+mexp     = 4.174087       ptwg     = -1.185173e+01
+pclm     = 0.013          pclmg    = 0
+pdibl1   = 1.3            pdibl2   = -0.05
+pvag     = 25.8           drout    = 1.06
+rshs     = 0              rshd     = 0
+rth0     = 0.01           cth0     = 1.0e-5
+wth0     = 0.0           
+cfs      = 5.21125e-13    cfd      = 5.21125e-13
+cgso     = 5.94030e-13    cgdo     = 5.62643e-11
+cgsl     = 3.14179e-11    cgdl     = 2.40393e-11
+cgbo     = 1.04819e-11    cgbl     = 1.24624e-09
+ckappas  = 15             ckappad  = 15
+qmtcencv = 5.05598        pqm      = 1.16706
+pclmcv   = 5.00000e-04    deltawcv = -5.49129e-13
+aigc     = 0.0136         bigc     = 0.00171
+cigc     = 0.075          dlcigs   = 0.0
+dlcigd   = 0.0            aigs     = 0.0136
+aigd     = 0.0136         bigs     = 0.00171
+bigd     = 0.00171        cigs     = 0.075
+cigd     = 0.075          poxedge  = 1
+agidl    = 6.055e-012     agisl    = 6.055e-012
+bgidl    = 0.3e+9         bgisl    = 0.3e+9
+egidl    = 0.2            egisl    = 0.2
)

.MODEL PMOS_LVT PMOS ( LEVEL = 72
+version  = 111            bulkmod  = 1
+geomod   = 5              capmod   = 1
+coremod  = 0              cgeomod  = 0
+igcmod   = 0              igbmod   = 0
+gidlmod  = 0              iimod    = 0
+rdsmod   = 0              rgatemod = 0
+rgeomod  = 0              shmod    = 0
+nqsmod   = 0              tnom     = 25
+eot      = 0.795e-009     epsrox   = 3.9
+epsrsub  = 11.9           epsrsp   = 3.9
+easub    = 4.05           ni0sub   = 1.1e+016
+bg0sub   = 1.12           nc0sub   = 2.86e+025
+nbody    = 1e+021         nsd      = 4e+026
+wgaa     = 2.0e-008       tgaa     = 5.0e-009
+ngaa     = 3              nfin     = 1
+nf       = 1              fpitch   = 3.5e-008
+l        = 1.2e-008       lsp      = 5.0e-9
+sdterm   = 0              devtype  = 0
+cit      = 0              phig     = 4.777964
+rdsw     = 3.569246e+02   cdsc     = 2.657889e-03
+cdscd    = 0              dvt0     = 0.00
+dvt1     = 0.60           dvtp0    = -1.151960e-02
+dvtshift = 0              phin     = 0.05
+eta0     = 7.000000e-01   dsub     = 1.417540e+02
+k1rsce   = 0              lpe0     = 0
+qmfactor = 0.0            etaqm    = 0.54
+qm0      = 1.50942        u0       = 9.966630e-03
+ua       = 2.867087e-01   eu       = 5.853179e-01
+ud       = 8.738093e-03   ucs      = 8.813972
+etamob   = 1.000000e+02   up       = 0
+vsat     = 9.065021e+04   vsat1    = 9.066663e+04
+ksativ   = 1.238147       deltavsat= 0.28
+mexp     = 1.194201       ptwg     = 4.316449
+pclm     = 0.013          pclmg    = 0
+pdibl1   = 1.3            pdibl2   = -1.640818e-01
+pvag     = 6.006475       drout    = 1.06
+rshs     = 0              rshd     = 0
+rth0     = 0.01           cth0     = 1.0e-5
+wth0     = 0.0
+cfs      = 7.32656e-12    cfd      = 1.07333e-10
+cgso     = 0              cgdo     = 0
+cgsl     = 1.03723e-10    cgdl     = 1.12177e-10
+cgbo     = 1.37249e-11    cgbl     = 1.50389e-09
+ckappas  = 6.22815e-01    ckappad  = 2.00000e-02
+qmtcencv = 2.30432e-03    pqm      = 40
+pclmcv   = 1.71176e-01    deltawcv = 5.29316e-08
+aigc     = 0.0136         bigc     = 0.00171
+cigc     = 0.075          dlcigs   = 0.0
+dlcigd   = 0.0            aigs     = 0.0136
+aigd     = 0.0136         bigs     = 0.00171
+bigd     = 0.00171        cigs     = 0.075
+cigd     = 0.075          poxedge  = 1
+agidl    = 6.055e-012     agisl    = 6.055e-012
+bgidl    = 0.3e+9         bgisl    = 0.3e+9
+egidl    = 0.2            egisl    = 0.2
)

.ENDL TT