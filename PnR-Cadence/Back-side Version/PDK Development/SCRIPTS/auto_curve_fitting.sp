* BSD 3-Clause License
*
* Copyright (c) 2026 <Sungwoo Jung, Cheng-Yu Tsai, Amaan Rahman, Junsik Yoon, Sandra Maria Shaji, Sung Kyu Lim >, University of Southern California
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted under the BSD 3-Clause License.
* See the LICENSE file in the project root for full license terms.

 
.option post nomod ingold=2 vntol=1e-10 numdgt=5 reli=1e-4 relv=1e-4
 
vg gate  0 vgs
vd drain 0 vds
vb bulk  0 0.00
m1 drain gate 0 bulk nmos_lvt w=3e-8 l=1.2e-8 nfin=1
 
.model nmos_lvt NMOS level=72 
.include "model_card.nmos"
+ phig=phig
+ cdsc=cdsc
+ u0=u0
+ ua=ua
+ etamob=etamob
+ eu=eu
+ ud=ud
+ ucs=ucs
+ eta0=eta0
+ vsat=vsat
+ ksativ=ksativ
+ mexp=mexp
+ pvag=pvag
+ pdibl2=pdibl2
+ dvtp0=dvtp0
+ cdscd=cdscd
+ ptwg=ptwg
 
.param
+ phig=opt2(4.5, 4.4, 4.8)
+ cdsc=opt2(2e-3, 1e-3, 1e-1)
+ u0=opt2(0.025145, 0.005, 0.03)
+ ua=opt2(0.5, 0.4, 0.9)
+ etamob=opt2(3.0535, 2.7, 3.3)
+ eu=opt2(0.2, 0.1, 0.3)
+ ud=opt2(0.17116, 0.1, 0.22)
+ ucs=opt2(1.1, 0.9, 1.3)
+ cdscd=opt2(8.6967e-3, 8e-3, 1e-2)
+ eta0=opt2(1.3571, 1.0, 3.0)
+ vsat=opt2(1.1e+5, 1.0e+5, 1.3e+5)
+ ksativ=opt2(1.1063, 1.0, 1.2)
+ ptwg=opt2(0, 0, 10)
+ dvtp0=opt2(-1.2334e-2, -0.013, -0.01)
+ pvag=opt2(1, 0.01, 1.0)
+ pdibl2=opt2(6.4836e-3, 2e-3, 1e-2)
+ mexp=opt2(2.4383, 1, 3)
 
* -----------------------------------------------------------------------------
.dc data=iv optimize=opt2 results=compl2 model=optmod2
.model optmod2 opt itropt=5000 relout=1e-6 relin=1e-8 close=10
 
.measure dc compl2 err2 par(ids) i(m1) minval=1e-11 ignore=1e-12
 
.dc data=iv
.probe par(ids) i(m1)
.print par(vgs) par(ids) i(m1)
 
.data iv merge
+ file=3nm_Ref_iv.dat vds=1 vgs=2 ids=3
.enddata
 
.end