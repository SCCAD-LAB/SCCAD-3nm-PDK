
Technology {
	name = "OA MW tech conversion"
	dielectric = 3.73e-05
	gridResolution = 1
	unitLengthName = "micron"
	lengthPrecision = 10000
	unitTimeName = "ns"
	timePrecision = 1000
	unitCapacitanceName = "pf"
	capacitancePrecision = 10000000
	unitResistanceName = "kohm"
	resistancePrecision = 10000000
	unitInductanceName = "nh"
	inductancePrecision = 100
	unitPowerName = "pw"
	powerPrecision = 1000
	unitVoltageName = "V"
	voltagePrecision = 1000
	unitCurrentName = "mA"
	currentPrecision = 1000
	fatTblSpacingMode = 0
	minEdgeMode = 1
}




Layer "well" {
	layerNumber			= 1 
	maskName			= "nwell"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "yellow"
	lineStyle			= "solid"
	pattern				= "dotc1"
	pitch				= 0
}


Layer "fin" {
	layerNumber			= 2 
	maskName			= "fin"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "green"
	lineStyle			= "solid"
	pattern				= "dots1"
	pitch				= 0
}


Layer "P_SUB" {
	layerNumber			= 3 
	maskName			= "psub"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "white"
	lineStyle			= "solid"
	pattern				= "blank"
	pitch				= 0
}


Layer "Gate" {
	layerNumber			= 7 
	maskName			= "poly"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "red"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.042
	minArea = 0.06
	minSpacing = 0.030
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "Dummy" {
	layerNumber			= 8 
	maskName			= "dummy"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "babyblue"
	lineStyle			= "dashed"
	pattern				= "dots"
	pitch				= 0
}


Layer "GCut" {
	layerNumber			= 10 
	maskName			= "gcut"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "black"
	lineStyle			= "thickLine"
	pattern				= "solid"
	pitch				= 0
}


Layer "Active" {
	layerNumber			= 11 
	maskName			= "diffusion"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "lime"
	lineStyle			= "solid"
	pattern				= "dots1"
	pitch				= 0
}


Layer "Nselect" {
	layerNumber			= 12 
	maskName			= "nselect"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "cadetBlue"
	lineStyle			= "thickLine"
	pattern				= "blank"
	pitch				= 0
}


Layer "Pselect" {
	layerNumber			= 13 
	maskName			= "pselect"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "chocolate"
	lineStyle			= "thickLine"
	pattern				= "blank"
	pitch				= 0
}

Layer "VBPR" {
	layerNumber			= 14 
	maskName			= "via3"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "white"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.012
	minSpacing = 0.012
	minWidth = 0.012
	defaultWidth = 0.012
}

Layer "MBPR" {
	layerNumber			= 15
	maskName			= "metal3"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "red"
	lineStyle			= "solid"
	pattern				= "backSlash"
	pitch				= 0.120
	minArea = 0.000625
	minSpacing = 0.060
	minWidth = 0.025
	defaultWidth = 0.025
}


Layer "SDT" {
	layerNumber			= 88
	maskName			= "sdt"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "gray"
	lineStyle			= "solid"
	pattern				= "dots1"
	pitch				= 0.024
	minArea = 0.0002
	minSpacing = 0.005
	minWidth = 0.010
	defaultWidth = 0.020
}


Layer "LIG" {
	layerNumber			= 16 
	maskName			= "lig"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "orange"
	lineStyle			= "thickLine"
	pattern				= "dots1"
	pitch				= 0.017
	minArea = 0.000144
	minSpacing = 0.005
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "LISD" {
	layerNumber			= 17 
	maskName			= ""
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "yellow"
	lineStyle			= "thickLine"
	pattern				= "dots"
	pitch				= 0.025
	minArea = 0.0002
	minSpacing = 0.005
	minWidth = 0.010
	defaultWidth = 0.020
}


Layer "V0" {
	layerNumber			= 18 
	maskName			= ""
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "magenta"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.012
	minSpacing = 0.012
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "M1" {
	layerNumber			= 19 
	maskName			= "metal4"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "blue"
	lineStyle			= "solid"
	pattern				= "backSlash"
	pitch				= 0.024
	minArea = 0.000144
	minSpacing = 0.006
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "M2" {
	layerNumber			= 20 
	maskName			= "metal5"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "cyan"
	lineStyle			= "solid"
	pattern				= "backSlash"
	pitch				= 0.024
	minArea = 0.000144
	minSpacing = 0.006
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "V1" {
	layerNumber			= 21 
	maskName			= "via4"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "orange"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.024
	minSpacing = 0.012
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "V2" {
	layerNumber			= 25 
	maskName			= "via5"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "silver"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.024
	minSpacing = 0.012
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "M3" {
	layerNumber			= 30 
	maskName			= "metal6"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "pink"
	lineStyle			= "solid"
	pattern				= "backSlash"
	pitch				= 0.024
	minArea = 0.000144
	minSpacing = 0.006
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "V3" {
	layerNumber			= 35 
	maskName			= "via6"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "cream"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.024
	minSpacing = 0.012
	minWidth = 0.012
	defaultWidth = 0.012
}


Layer "M4" {
	layerNumber			= 40 
	maskName			= "metal7"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "leather"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.036
	minArea = 0.000324
	minSpacing = 0.008
	minWidth = 0.018
	defaultWidth = 0.018
}


Layer "V4" {
	layerNumber			= 45 
	maskName			= "via7"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "violet"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.036
	minSpacing = 0.018
	minWidth = 0.018
	defaultWidth = 0.018
}


Layer "M5" {
	layerNumber			= 50 
	maskName			= "metal8"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "cadetBlue"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.036
	minArea = 0.000324
	minSpacing = 0.008
	minWidth = 0.018
	defaultWidth = 0.018
}


Layer "V5" {
	layerNumber			= 55 
	maskName			= "via8"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "green"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.036
	minSpacing = 0.018
	minWidth = 0.018
	defaultWidth = 0.018
}


Layer "M6" {
	layerNumber			= 60 
	maskName			= "metal9"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "red"
	lineStyle			= "solid"
	pattern				= "cross"
	pitch				= 0.048
	minArea = 0.000576
	minSpacing = 0.010
	minWidth = 0.024
	defaultWidth = 0.024
}


Layer "V6" {
	layerNumber			= 65 
	maskName			= "via9"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "cyan"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.048
	minSpacing = 0.024
	minWidth = 0.024
	defaultWidth = 0.024
}


Layer "M7" {
	layerNumber			= 70 
	maskName			= "metal10"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "lilac"
	lineStyle			= "solid"
	pattern				= "vline"
	pitch				= 0.048
	minArea = 0.000576
	minSpacing = 0.010
	minWidth = 0.024
	defaultWidth = 0.024
}


Layer "V7" {
	layerNumber			= 75 
	maskName			= "via10"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "white"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.048
	minSpacing = 0.024
	minWidth = 0.024
	defaultWidth = 0.024
}


Layer "M8" {
	layerNumber			= 80 
	maskName			= "metal11"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "forest"
	lineStyle			= "solid"
	pattern				= "dotc1"
	pitch				= 0.064
	minArea = 0.00102
	minSpacing = 0.014
	minWidth = 0.032
	defaultWidth = 0.032
}


Layer "V8" {
	layerNumber			= 85 
	maskName			= "via11"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "brown"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.064
	minSpacing = 0.032
	minWidth = 0.032
	defaultWidth = 0.032
}


Layer "M9" {
	layerNumber			= 90 
	maskName			= "metal12"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "violet"
	lineStyle			= "solid"
	pattern				= "dotc2"
	pitch				= 0.064
	minArea = 0.00102
	minSpacing = 0.014
	minWidth = 0.032
	defaultWidth = 0.032
}


Layer "V9" {
	layerNumber			= 95 
	maskName			= "via12"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "white"
	lineStyle			= "solid"
	pattern				= "rectangleX"
	pitch				= 0.064
	minSpacing = 0.032
	minWidth = 0.032
	defaultWidth = 0.032
}


Layer "Pad" {
	layerNumber			= 96 
	maskName			= "metal13"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "leather"
	lineStyle			= "thickLine"
	pattern				= "backslash"
	pitch				= 0.064
	minArea = 0.001024
	minSpacing = 0.032
	minWidth = 0.032
	fatTblDimension = 2
	fatTblThreshold = ( 0, 12.00025 )
	fatTblSpacing = ( 2, 2, 
			  2, 3 )
	fatTblParallelLengthDimension = 2
	fatTblParallelLength = ( 0, 12.00025 )
	defaultWidth = 0.032
}


Layer "SLVT" {
	layerNumber			= 97 
	maskName			= "slvt"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "gray"
	lineStyle			= "thickLine"
	pattern				= "blank"
	pitch				= 0.508
	minSpacing = 0.054
	minWidth = 0.108
	defaultWidth = 0.108
}


Layer "LVT" {
	layerNumber			= 98 
	maskName			= "lvt"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "gold"
	lineStyle			= "thickLine"
	pattern				= "blank"
	pitch				= 0.508
	minSpacing = 0.054
	minWidth = 0.108
	defaultWidth = 0.108

}


Layer "SRAMDRC" {
	layerNumber			= 99 
	maskName			= "sramdrc"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "iceblue"
	lineStyle			= "thickLine"
	pattern				= "blank"
	pitch				= 0

}


Layer "BOUNDARY" {
	layerNumber			= 100 
	maskName			= "boundary"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "leather"
	lineStyle			= "dashed"
	pattern				= "blank"
	pitch				= 0

}


Layer "TEXT" {
	layerNumber			= 101 
	maskName			= "text"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "white"
	lineStyle			= "solid"
	pattern				= "blank"
	pitch				= 0
}


Layer "SRAMVT" {
	layerNumber			= 110 
	maskName			= "sramvt"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "green"
	lineStyle			= "solid"
	pattern				= "blank"
	pitch				= 0

}


Layer "VTSV" {
	layerNumber			= 120
	maskName			= "via2"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "brown"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.480
	minSpacing = 0.06
	minWidth = 0.06
	defaultWidth = 0.06
}


Layer "MB1" {
	layerNumber			= 121
	maskName			= "metal2"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "yellow"
	lineStyle			= "solid"
	pattern				= "backSlash"
	pitch				= 0.08
	minArea = 0.01
	minSpacing = 0.04
	minWidth = 0.04
	defaultWidth = 0.04
}


Layer "VB1" {
	layerNumber			= 122
	maskName			= "via1"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "brown"
	lineStyle			= "solid"
	pattern				= "dots"
	pitch				= 0.08
	minSpacing = 0.04
	minWidth = 0.04
	defaultWidth = 0.04
}


Layer "MB2" {
	layerNumber			= 123
	maskName			= "metal1"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "yellow"
	lineStyle			= "solid"
	pattern				= "backSlash"
	pitch				= 0.08
	minArea = 0.01
	minSpacing = 0.04
	minWidth = 0.04
	defaultWidth = 0.04
}


Layer "text" {
	layerNumber			= 4 
	maskName			= "text"
	visible				= 1
	selectable			= 1
	blink				= 0
	color				= "white"
	lineStyle			= "solid"
	pattern				= "blank"
	pitch				= 0

}




ContactCode	"Pad_M9" {
		contactCodeNumber		= 1
		cutLayer			= "V9"
		lowerLayer			= "M9"
		upperLayer			= "Pad"
		cutWidth			= 0.032
		cutHeight			= 0.032
		upperLayerEncWidth		= 0.011
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.009
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.046
}


ContactCode	"M9_M8" {
		contactCodeNumber		= 2
		cutLayer			= "V8"
		lowerLayer			= "M8"
		upperLayer			= "M9"
		cutWidth			= 0.032
		cutHeight			= 0.032
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.009
		lowerLayerEncWidth		= 0.009
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.046
}


ContactCode	"M8_M7" {
		contactCodeNumber		= 3
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		cutWidth			= 0.024
		cutHeight			= 0.024
		upperLayerEncWidth		= 0.009
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.007
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.024
}


ContactCode	"M7_M6" {
		contactCodeNumber		= 4
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		cutWidth			= 0.024
		cutHeight			= 0.024
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.007
		lowerLayerEncWidth		= 0.007
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.024
}


ContactCode	"M6_M5" {
		contactCodeNumber		= 5
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		cutWidth			= 0.018
		cutHeight			= 0.018
		upperLayerEncWidth		= 0.007
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.005
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.018
}


ContactCode	"M5_M4" {
		contactCodeNumber		= 6
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		cutWidth			= 0.018
		cutHeight			= 0.018
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.005
		lowerLayerEncWidth		= 0.005
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.018
}


ContactCode	"M4_M3" {
		contactCodeNumber		= 7
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		cutWidth			= 0.012
		cutHeight			= 0.012
		upperLayerEncWidth		= 0.005
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.003
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.012
}


ContactCode	"M3_M2" {
		contactCodeNumber		= 8
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		cutWidth			= 0.012
		cutHeight			= 0.012
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.003
		lowerLayerEncWidth		= 0.003
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.012
}


ContactCode	"M2_M1" {
		contactCodeNumber		= 9
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		cutWidth			= 0.012
		cutHeight			= 0.012
		upperLayerEncWidth		= 0.003
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.003
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.012
}


ContactCode	"M1_MBPR" {
		contactCodeNumber		= 10
		cutLayer			= "VBPR"
		lowerLayer			= "MBPR"
		upperLayer			= "M1"
		cutWidth			= 0.012
		cutHeight			= 0.012
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.003
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.012
}


ContactCode	"MBPR_MB1" {
		contactCodeNumber		= 11
		cutLayer			= "VTSV"
		lowerLayer			= "MB1"
		upperLayer			= "MBPR"
		cutWidth			= 0.060
		cutHeight			= 0.060
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.060
}


ContactCode	"MB1_MB2" {
		contactCodeNumber		= 12
		cutLayer			= "VB1"
		lowerLayer			= "MB2"
		upperLayer			= "MB1"
		cutWidth			= 0.040
		cutHeight			= 0.040
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		unitMinResistance		= 0
		unitNomResistance		= 0
		unitMaxResistance		= 0
		minCutSpacing			= 0.040
}


DesignRule {
	layer1 = "Gate"
	layer2 = "Active"
	minSpacing = 0.05
}


DensityRule {
	layer = "Active"
	windowSize = 300
	minDensity = 20
}

DensityRule {
	layer = "Active"
	windowSize = 300
	minDensity = 20
	maxDensity = 80
}

DensityRule {
	layer = "MB1"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}

DensityRule {
	layer = "MB2"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M1"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M2"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M3"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M4"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M5"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M6"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M7"
	windowSize = 20
	minDensity = 15
	maxDensity = 90
}


DensityRule {
	layer = "M8"
	windowSize = 20
	minDensity = 20
	maxDensity = 90
}


DensityRule {
	layer = "M9"
	windowSize = 100
	minDensity = 20
	maxDensity = 80
}


DensityRule {
	layer = "Pad"
	windowSize = 100
	minDensity = 20
	maxDensity = 80
}


Tile	"core" {
	width	= 0.042
	height	= 0.120
}
