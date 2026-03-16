
rVBPR_1 @= { @ "VBPR.1 : Vertical width of VBPR =12 nm";
        gVBPR1_check = internal1( aVBPR, == 0.011, extension = NONE, direction = VERTICAL);
        aVBPR not gVBPR1_check;
}

rVBPR_2 @= { @ "VBPR.2 : HORIZONTAL width of VBPR =12 nm";
        gVBPR2_check = internal1( aVBPR, == 0.012, extension = NONE, direction = HORIZONTAL);
        aVBPR not gVBPR2_check;
}

rVBPR_3 @= { @ "VBPR.3 : VBPR must not interact with GCUT";
        interacting( aVBPR, aGCUT, include_touch = NONE);
}

rVBPR_4 @= { @ "VBPR.4 : VBPR may not lie outside SDCON";
        not_inside( aVBPR, aSDT, include_touch = ALL);
}
