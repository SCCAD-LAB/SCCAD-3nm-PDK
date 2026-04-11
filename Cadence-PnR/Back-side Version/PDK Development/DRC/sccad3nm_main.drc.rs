//* BSD 3-Clause License
//*
//* Copyright (c) 2026 <Sungwoo Jung, Cheng-Yu Tsai, Amaan Rahman, Junsik Yoon, Sandra Maria Shaji, Sung Kyu Lim >, University of Southern California
//*
//* Redistribution and use in source and binary forms, with or without
//* modification, are permitted under the BSD 3-Clause License.
//* See the LICENSE file in the project root for full license terms.

#define SELECTABLE_VIOLATION_NAMES
#define ICV_ENABLE_WIDE_ANGLED
#include <icv.rh>
#include "string.rh"


aACT	    = assign({ { 11 } });
aGATE	    = assign({ { 7 } });
aGCUT       = assign({ { 10 } });
aLIG        = assign({ { 16 } });
tLIG	    = assign_text({ { 16 } });
aLISD       = assign({ { 17 } });
tLISD	    = assign_text({ { 17 } });
aSDT        = assign({ { 88 } });
tSDT	    = assign_text({ { 88 } });
aNsel       = assign({ { 12 } });
aPsel       = assign({ { 13 } });
aVBPR       = assign({ { 102 } });
aMBPR       = assign({ { 103 } });
tMBPR       = assign_text({ { 103 } });
aV0         = assign({ { 18 } });
aM1         = assign({ { 19 } });
tM1	        = assign_text({ { 19 } });
aV1	        = assign({ { 25 } });
aM2	        = assign({ { 20 } });
tM2	        = assign_text({ { 20 } });
aV2         = assign({ { 25 } });
aM3         = assign({ { 30 } }); 
tM3         = assign_text({ { 30 } }); 
aV3         = assign({ { 35 } }); 
aM4         = assign({ { 40 } }); 
tM4         = assign_text({ { 40 } }); 
aV4         = assign({ { 45 } }); 
aM5         = assign({ { 50 } }); 
tM5         = assign_text({ { 50 } }); 
aV5         = assign({ { 55 } }); 
aM6         = assign({ { 65 } }); 
tM6         = assign_text({ { 65 } }); 


CONNECT_DB : connect_database = NULL_CONNECT_DATABASE;
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aMBPR, aSDT }, aVBPR, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aLIG, aM1 }, aV0, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aLISD, aM1 }, aV0, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM1, aM2 }, aV1, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM2, aM3 }, aV2, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM3, aM4 }, aV3, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM4, aM5 }, aV4, NONE, SHIELDED_OVERLAP }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM5, aM6 }, aV5, NONE, SHIELDED_OVERLAP }} );


#include "Include/sccad3nm.act.drc.rs"
#include "Include/sccad3nm.gate.drc.rs"
#include "Include/sccad3nm.vbpr.drc.rs"
#include "Include/sccad3nm.mbpr.drc.rs"
#include "Include/sccad3nm.gcut.drc.rs"
#include "Include/sccad3nm.lig.drc.rs"
#include "Include/sccad3nm.lisd.drc.rs"
#include "Include/sccad3nm.sdt.drc.rs"
#include "Include/sccad3nm.npsel.drc.rs"
#include "Include/sccad3nm.v0.drc.rs"
#include "Include/sccad3nm.m1.drc.rs"
#include "Include/sccad3nm.v1.drc.rs"
#include "Include/sccad3nm.m2.drc.rs"
#include "Include/sccad3nm.v2.drc.rs"
#include "Include/sccad3nm.m3.drc.rs"
#include "Include/sccad3nm.v3.drc.rs"
#include "Include/sccad3nm.m4.drc.rs"
#include "Include/sccad3nm.v4.drc.rs"
#include "Include/sccad3nm.m5.drc.rs"
#include "Include/sccad3nm.v5.drc.rs"
#include "Include/sccad3nm.m6.drc.rs"


