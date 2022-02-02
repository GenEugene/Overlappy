//Maya ASCII 2019 scene
//Name: Samples.ma
//Last modified: Fri, Jun 14, 2019 02:44:33 AM
//Codeset: 1251
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17763)\n";
createNode transform -s -n "persp";
	rename -uid "51B6153A-441D-009C-EE3B-6B8646F2C1DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.0396121577826962 4.411583904454373 20.359489002301089 ;
	setAttr ".r" -type "double3" -11.138352729598109 26.999999999998284 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4D895A1B-4D70-A231-EDE0-5AA8BECB4063";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 27.876360297223876;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -12 0.5 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "359A72D6-4111-3C6C-7B34-33A16A737C81";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8D37E199-4C34-9F7E-2B4C-5C8798FCA221";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.0896521610521868;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "1BD103DB-4011-95C4-D91D-34AFB14F9255";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.94713450928227405 3.4386679333712769 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C0B3E796-4F5B-7EE6-7FED-B4844DCA697D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 31.65160968175692;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 12.1021860701576 1.9140823589222151 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "D6516EAE-4028-4942-6F71-8E94567E2A03";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 4.3619645689505182 -0.12815659541351243 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6378CF6E-4192-5847-4DBC-7B86ED4527E7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 27.696054020078563;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "X_axis";
	rename -uid "9950FD18-4154-9327-F65D-419BBA62B050";
	setAttr -k off -cb on ".v";
createNode mesh -n "X_axisShape" -p "X_axis";
	rename -uid "B1DE8AD4-4F5B-1545-4DD5-CA89B2D72996";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  11 -0.51617581 0.51617581 
		11 0 0.72998285 11 0.51617581 0.51617581 11 0.72998285 0 11 0.51617581 -0.51617581 
		11 0 -0.72998285 11 -0.51617587 -0.51617587 11 -0.72998291 0 -11 -0.51617581 0.51617581 
		-11 0 0.72998285 -11 0.51617581 0.51617581 -11 0.72998285 0 -11 0.51617581 -0.51617581 
		-11 0 -0.72998285 -11 -0.51617587 -0.51617587 -11 -0.72998291 0 11 0 0 -11 0 0;
	setAttr -s 18 ".vt[0:17]"  1 0.70710671 -0.70710671 1 0 -0.99999988
		 1 -0.70710671 -0.70710671 1 -0.99999988 0 1 -0.70710671 0.70710671 1 0 0.99999994
		 1 0.70710677 0.70710677 1 1 0 -1 0.70710671 -0.70710671 -1 0 -0.99999988 -1 -0.70710671 -0.70710671
		 -1 -0.99999988 0 -1 -0.70710671 0.70710671 -1 0 0.99999994 -1 0.70710677 0.70710677
		 -1 1 0 1 0 0 -1 0 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_classic" -p "X_axis";
	rename -uid "0E12BE4C-4041-D6BA-BCE6-1297BC07C36F";
	setAttr ".t" -type "double3" -12 0 0 ;
createNode transform -n "pCube1" -p "Simple_classic";
	rename -uid "A3FB7E81-4495-EF1B-F691-1EA028B46CE8";
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_classic|pCube1";
	rename -uid "F63165A4-4E0C-B9F1-882B-B291A475595C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_classic|pCube1";
	rename -uid "24FF105F-48D1-BC6F-7A93-D0B0CCD4C24B";
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_classic|pCube1|pCube2";
	rename -uid "6AC7DEAC-4680-FFA2-72CD-328C79073E8E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_classic|pCube1|pCube2";
	rename -uid "6E8881F6-4AE8-29E0-C92B-AA89D2684BAE";
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3";
	rename -uid "B84C9D33-49D1-7F81-D0C4-668F0D25BA18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3";
	rename -uid "5EEAFC4F-426F-4281-1EEF-408BD1C401A4";
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4";
	rename -uid "AF9A5180-41C1-DF8B-AE02-CF8674C5B230";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4";
	rename -uid "A5CEAB17-4A52-7A74-456B-A0BA55888095";
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "8118E674-4306-B677-707E-DFBD534839D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "EB0542C8-4163-9CD0-8C8D-9EA0FEF70C1C";
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "0F593D76-41FA-B717-E09A-1B948DBE7EBE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_freezed" -p "X_axis";
	rename -uid "2E25E72F-4953-5091-5D44-CD82A9077D15";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9 0 0 ;
createNode transform -n "pCube1" -p "Simple_freezed";
	rename -uid "F9632C62-471D-D95A-AC10-D49B6609E84D";
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_freezed|pCube1";
	rename -uid "A40273E1-4C06-D1BC-6BF4-9FACD4CDF756";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_freezed|pCube1";
	rename -uid "9D089B38-4BD5-0E38-581A-46810A7FF8B8";
	setAttr ".rp" -type "double3" 0 1 0 ;
	setAttr ".sp" -type "double3" 0 1 0 ;
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_freezed|pCube1|pCube2";
	rename -uid "16049528-4887-2B16-9215-E2B9187F453F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 1.5 0 0 1.5 0 0 1.5 0 0 
		1.5 0 0 1.5 0 0 1.5 0 0 1.5 0 0 1.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_freezed|pCube1|pCube2";
	rename -uid "12795D3F-482B-4707-FA7C-12A72A48173B";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3";
	rename -uid "E2A7B333-46C2-0682-D627-19A0B90B3357";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 2.5 0 0 2.5 0 0 2.5 0 0 
		2.5 0 0 2.5 0 0 2.5 0 0 2.5 0 0 2.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3";
	rename -uid "C59892A7-4FFF-C2BB-B687-09AF82AA2F5C";
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4";
	rename -uid "AEAFA1A0-463D-F0F8-01AF-8EA5EA9625CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 3.5 0 0 3.5 0 0 3.5 0 0 
		3.5 0 0 3.5 0 0 3.5 0 0 3.5 0 0 3.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4";
	rename -uid "AC630FD6-4F40-C5C2-4449-5C9992F9E2F4";
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "CCBFF5BA-451B-9157-4B9C-E58128229AD1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 4.5 0 0 4.5 0 0 4.5 0 0 
		4.5 0 0 4.5 0 0 4.5 0 0 4.5 0 0 4.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "1CA65E93-4021-4174-F9E1-F590CD5F38BE";
	setAttr ".rp" -type "double3" 0 5 0 ;
	setAttr ".sp" -type "double3" 0 5 0 ;
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "EAAA752F-48E2-476F-FD6B-038271B9AE35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 5.5 0 0 5.5 0 0 5.5 0 0 
		5.5 0 0 5.5 0 0 5.5 0 0 5.5 0 0 5.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_classic_preRotated" -p "X_axis";
	rename -uid "FA417879-4F5C-82E4-E0A2-FB864147F176";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6 0 0 ;
createNode transform -n "pCube1" -p "Simple_classic_preRotated";
	rename -uid "C15070C9-4B9F-049E-3144-828E238A0EF4";
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_classic_preRotated|pCube1";
	rename -uid "ECCB2D91-45FE-A5D5-0D5F-EDBAD171CDEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_classic_preRotated|pCube1";
	rename -uid "2F0C5EDF-4B60-6E90-382B-40AF4A43050D";
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2";
	rename -uid "74C21762-4DAF-53B1-D38C-E49BBD289921";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.0019026502 0.45642212 0 
		-0.0019026502 0.54357785 0 -0.08525309 0.45261681 0 -0.089058392 0.53977257 0 -0.08525309 
		0.45261681 0 -0.089058392 0.53977257 0 0.0019026502 0.45642212 0 -0.0019026502 0.54357785 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2";
	rename -uid "BB76DA96-434B-9A59-8BE2-7C88D428409B";
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3";
	rename -uid "83F810D7-41CD-9FDD-BC54-43A4A346E448";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.007596123 0.41317591 0 
		-0.0075961202 0.58682406 0 -0.16605206 0.39798367 0 -0.1812443 0.57163185 0 -0.16605206 
		0.39798367 0 -0.1812443 0.57163185 0 0.007596123 0.41317591 0 -0.0075961202 0.58682406 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3";
	rename -uid "743AADF0-4582-36F7-B629-12832B6BC859";
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4";
	rename -uid "B7D8BE11-4389-8F81-E218-FF8D65075948";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.017037086 0.37059048 0 
		-0.017037081 0.62940949 0 -0.24178196 0.33651632 0 -0.27585614 0.59533536 0 -0.24178196 
		0.33651632 0 -0.27585614 0.59533536 0 0.017037086 0.37059048 0 -0.017037081 0.62940949 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4";
	rename -uid "57D26466-4E43-D8FF-B0B3-35AFCBC834C3";
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "4577E65A-4044-7FF7-4D08-C380085BA7CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.03015369 0.32898992 0 -0.030153681 
		0.67101002 0 -0.31186646 0.26868254 0 -0.37217385 0.61070269 0 -0.31186646 0.26868254 
		0 -0.37217385 0.61070269 0 0.03015369 0.32898992 0 -0.030153681 0.67101002 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "C0EB5064-437C-45EC-7CAF-549580CB4B84";
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "35BB9D45-4D79-0C19-0BED-019146159BAF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.046846107 0.28869087 0 
		-0.046846099 0.71130908 0 -0.37577215 0.19499865 0 -0.46946436 0.61761689 0 -0.37577215 
		0.19499865 0 -0.46946436 0.61761689 0 0.046846107 0.28869087 0 -0.046846099 0.71130908 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_pivotRot" -p "X_axis";
	rename -uid "9BE2706A-4350-B89C-FCED-1FA326826E3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12 0.50711553910641394 0 ;
createNode transform -n "pCube1" -p "Simple_pivotRot";
	rename -uid "94983296-4B2D-EC84-01EA-24A6CC9DFAAE";
	setAttr ".rp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
	setAttr ".rpt" -type "double3" 0.01072386428137273 -1.0047515841511605 0 ;
	setAttr ".sp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_pivotRot|pCube1";
	rename -uid "26097E5F-4E99-47F5-946B-EE842A7BAF56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_pivotRot|pCube1";
	rename -uid "534E3F64-474C-15D2-444D-3DA3C8F0EBA7";
	setAttr ".rp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
	setAttr ".sp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_pivotRot|pCube1|pCube2";
	rename -uid "452CC39A-48A5-7271-704C-9AB604CB89B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_pivotRot|pCube1|pCube2";
	rename -uid "787679FE-47B6-CAAD-2625-84A76E399D20";
	setAttr ".rp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
	setAttr ".sp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3";
	rename -uid "F98DB8EE-45B2-639C-BCEE-239FDAD65375";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3";
	rename -uid "721B5BF3-483C-4299-AA36-829ADA23E476";
	setAttr ".rp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
	setAttr ".sp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4";
	rename -uid "3571C385-4344-08CA-88F3-6B9D0B537E11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4";
	rename -uid "F60B7E74-4875-879B-2BC9-8090CBE9DA5B";
	setAttr ".rp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
	setAttr ".sp" -type "double3" -0.50773772421626662 0.49701385993489389 0 ;
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "D0CED649-4EBA-B16B-F70B-7B8B6BE70FD4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "18DC4B82-4DED-6571-72DA-5487A56D76C0";
	setAttr ".rp" -type "double3" -0.50773772421626617 0.49701385993489389 0 ;
	setAttr ".sp" -type "double3" -0.50773772421626617 0.49701385993489389 0 ;
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "78202E76-458A-7A68-195C-0DA1A58BF240";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_pivotRot_freezed" -p "X_axis";
	rename -uid "39DFBB6B-4F68-D6FC-35DB-49829DD4ADDE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9 0.50711553910641394 0 ;
createNode transform -n "pCube1" -p "Simple_pivotRot_freezed";
	rename -uid "082CB74A-49C8-C9AB-7D04-CB96AF15E015";
	setAttr ".rp" -type "double3" -0.49701385993489389 -0.50773772421626662 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 -0.50773772421626662 0 ;
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_pivotRot_freezed|pCube1";
	rename -uid "2A894745-407A-6741-87F9-039837C0CF22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0 0 -0.5 1 0 -0.5 -1 
		0 -1.5 0 0 -0.5 -1 0 -1.5 0 0 0.5 0 0 -0.5 1 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_pivotRot_freezed|pCube1";
	rename -uid "36B8DA81-4989-4B50-B89B-F2B9D4296DDF";
	setAttr ".rp" -type "double3" -0.49701385993489389 0.49226227578373338 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 0.49226227578373338 0 ;
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2";
	rename -uid "61CCD4B7-4179-CAEC-B08C-738CAE2C2B1C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 1 0 -0.5 2 0 -0.5 0 0 
		-1.5 1 0 -0.5 0 0 -1.5 1 0 0.5 1 0 -0.5 2 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2";
	rename -uid "E364E14D-4D3B-1D95-579C-49A03DBDB948";
	setAttr ".rp" -type "double3" -0.49701385993489389 1.4922622757837334 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 1.4922622757837334 0 ;
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3";
	rename -uid "9C664676-4720-1B5B-2D70-57A2F07992DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 2 0 -0.5 3 0 -0.5 1 0 
		-1.5 2 0 -0.5 1 0 -1.5 2 0 0.5 2 0 -0.5 3 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3";
	rename -uid "511B9428-4E3E-92C0-CCBE-4DA4B7698B27";
	setAttr ".rp" -type "double3" -0.49701385993489389 2.4922622757837334 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 2.4922622757837334 0 ;
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4";
	rename -uid "F77C8D4C-4616-DFDB-0A17-779D65FBDF4F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 3 0 -0.5 4 0 -0.5 2 0 
		-1.5 3 0 -0.5 2 0 -1.5 3 0 0.5 3 0 -0.5 4 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4";
	rename -uid "D95273EE-424C-3309-5038-05AC58AE7A28";
	setAttr ".rp" -type "double3" -0.49701385993489389 3.4922622757837329 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 3.4922622757837329 0 ;
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "1960941A-4D61-CB83-2281-E586EC21C977";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 4 0 -0.5 5 0 -0.5 3 0 
		-1.5 4 0 -0.5 3 0 -1.5 4 0 0.5 4 0 -0.5 5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "831229AA-4858-F7E2-DDC4-7E861EA5BBE6";
	setAttr ".rp" -type "double3" -0.49701385993489389 4.4922622757837338 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 4.4922622757837338 0 ;
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "E3A06E0E-49DE-02BF-016B-A1B6EA14F40B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 5 0 -0.5 6 0 -0.5 4 0 
		-1.5 5 0 -0.5 4 0 -1.5 5 0 0.5 5 0 -0.5 6 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_pivotRot_preRotated" -p "X_axis";
	rename -uid "1DA1F1F9-45CC-1983-E003-30AFA9816392";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6 0.50711553910641394 0 ;
createNode transform -n "pCube1" -p "Simple_pivotRot_preRotated";
	rename -uid "79E4E8AD-4D83-A165-EE06-40A08C137AE8";
	setAttr ".rp" -type "double3" -0.49701385993489389 -0.50773772421626662 0 ;
	setAttr ".sp" -type "double3" -0.49701385993489389 -0.50773772421626662 0 ;
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_pivotRot_preRotated|pCube1";
	rename -uid "88D50CD0-4735-5AC5-34F6-8E86E4666552";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0 0 -0.5 1 0 -0.5 -1 
		0 -1.5 0 0 -0.5 -1 0 -1.5 0 0 0.5 0 0 -0.5 1 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_pivotRot_preRotated|pCube1";
	rename -uid "DFCBBC00-4BFA-C943-3B81-D189F8F2FCD9";
	setAttr ".rp" -type "double3" -0.4012953720754967 -0.58632959835785525 0 ;
	setAttr ".sp" -type "double3" -0.40129537207549681 -0.58632959835785536 0 ;
	setAttr ".spt" -type "double3" 1.1102230246251564e-16 1.1102230246251564e-16 0 ;
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2";
	rename -uid "882AB91C-4830-130D-C215-2BB904718FF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.58682406 0.0075961351 0 
		-0.58682406 0.99240386 0 -0.39798367 -1.1660521 0 -1.5716318 -0.18124431 0 -0.39798367 
		-1.1660521 0 -1.5716318 -0.18124431 0 0.58682406 0.0075961351 0 -0.58682406 0.99240386 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2";
	rename -uid "D4139868-45BF-1C8A-0575-FDA707AD694D";
	setAttr ".rp" -type "double3" -0.2933837274008439 -0.64710614435043257 0 ;
	setAttr ".sp" -type "double3" -0.29338372740084395 -0.64710614435043268 0 ;
	setAttr ".spt" -type "double3" 5.5511151231257821e-17 1.1102230246251564e-16 0 ;
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3";
	rename -uid "9AC74DD7-4480-526B-B56D-639E9909F1CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.67101008 0.030153692 0 
		-0.67101008 0.96984631 0 -0.26868254 -1.3118664 0 -1.6107026 -0.37217385 0 -0.26868254 
		-1.3118664 0 -1.6107026 -0.37217385 0 0.67101008 0.030153692 0 -0.67101008 0.96984631 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3";
	rename -uid "A86B82B1-4A67-479A-2C65-EB872D2782BE";
	setAttr ".rp" -type "double3" -0.17655776662844502 -0.68822069759843174 0 ;
	setAttr ".sp" -type "double3" -0.17655776662844502 -0.68822069759843174 0 ;
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4";
	rename -uid "AFC535DE-4CF6-BA3C-C8B8-5A8D2BA1ACB2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.75 0.066987306 0 -0.75 
		0.93301272 0 -0.1160254 -1.4330127 0 -1.6160254 -0.56698728 0 -0.1160254 -1.4330127 
		0 -1.6160254 -0.56698728 0 0.75 0.066987306 0 -0.75 0.93301272 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4";
	rename -uid "EE453989-498C-C13F-44AD-F585E222FB45";
	setAttr ".rp" -type "double3" -0.054367187459581225 -0.70842401320637782 0 ;
	setAttr ".sp" -type "double3" -0.054367187459581245 -0.70842401320637816 0 ;
	setAttr ".spt" -type "double3" 2.0816681711721679e-17 3.3306690738754686e-16 0 ;
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "668768A0-47F1-39DD-91C6-BA8DB6694F5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82139379 0.11697778 0 -0.82139379 
		0.88302219 0 0.055349361 -1.5258098 0 -1.5874382 -0.75976539 0 0.055349361 -1.5258098 
		0 -1.5874382 -0.75976539 0 0.82139379 0.11697778 0 -0.82139379 0.88302219 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "1EFFAA70-40A0-3A85-5E4A-3DAC14943BC9";
	setAttr ".rp" -type "double3" 0.069475311189115971 -0.70710222365289688 0 ;
	setAttr ".sp" -type "double3" 0.069475311189115985 -0.70710222365289699 0 ;
	setAttr ".spt" -type "double3" -1.3877787807814454e-17 1.1102230246251563e-16 0 ;
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "6A5237AB-47B9-6415-7B6E-F8AE4FE06068";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.88302225 0.17860618 0 -0.88302225 
		0.82139385 0 0.24023461 -1.5874383 0 -1.5258099 -0.94465065 0 0.24023461 -1.5874383 
		0 -1.5258099 -0.94465065 0 0.88302225 0.17860618 0 -0.88302225 0.82139385 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_movedRotated" -p "X_axis";
	rename -uid "A821B29F-4BDB-CC61-8AED-AF80D83F6C1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.225886352816021 0 4.728508716895341 ;
createNode transform -n "pCube1" -p "Simple_movedRotated";
	rename -uid "FD571197-465D-B785-DDDA-1E898037A3B7";
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_movedRotated|pCube1";
	rename -uid "E647BDDF-4FAA-E444-7A15-9CA9EBD0D929";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_movedRotated|pCube1";
	rename -uid "21E801B3-4CDF-2D15-5895-5B87781C6B4F";
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_movedRotated|pCube1|pCube2";
	rename -uid "B4ECE171-403F-0E47-5A0F-D7B389CA75EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_movedRotated|pCube1|pCube2";
	rename -uid "FDC3E3D2-4A9B-04CA-CD72-6CB71BCFDB9F";
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3";
	rename -uid "38BE1D51-4072-FD9D-E9FB-6AB31EB717B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3";
	rename -uid "56D77F8F-4DC6-F0D6-8D49-E69131E71CE9";
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4";
	rename -uid "F79E9A99-48FE-6847-77BF-EC9C6E176F80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4";
	rename -uid "128D71A2-4D5D-3EAD-A69F-43837EFD9054";
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "02547111-4A67-29A9-0760-1EBAD8074354";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "CCFF28D6-4B24-2FD9-FBE8-D29B66244BD0";
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "3C9F781D-4C1D-B5AD-A452-9883B41595D9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Simple_chaos" -p "X_axis";
	rename -uid "BBC9E9BA-40F3-21C2-4BD2-B0A295B5DEE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.0928252335682629 0 -1.4608000613574248 ;
createNode transform -n "pCube1" -p "Simple_chaos";
	rename -uid "1EAA4B5C-498E-DFF3-ED27-02AB3118BEAE";
	setAttr ".rp" -type "double3" 0.010895530259705799 0 0 ;
	setAttr ".sp" -type "double3" 0.010895530259705799 0 0 ;
createNode mesh -n "pCubeShape1" -p "|X_axis|Simple_chaos|pCube1";
	rename -uid "C6DAE5B3-4261-5069-A588-FDB188BDC9C9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "|X_axis|Simple_chaos|pCube1";
	rename -uid "AD6FF711-4B3F-0C6C-0A43-69A68137D783";
	setAttr ".rp" -type "double3" 0 0.5 -0.50000000115767662 ;
	setAttr ".rpt" -type "double3" -0.5 -1.0000000011576766 0.50000000115767662 ;
	setAttr ".sp" -type "double3" 0 0.5 -0.50000000115767662 ;
createNode mesh -n "pCubeShape2" -p "|X_axis|Simple_chaos|pCube1|pCube2";
	rename -uid "3D9A8578-4F18-FB85-AB7B-DEA8737048BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "|X_axis|Simple_chaos|pCube1|pCube2";
	rename -uid "C73D1F03-4177-2C24-3A40-FBB7F99C8DD0";
	setAttr ".rp" -type "double3" 0.49999995311299905 0.50021525379828946 -0.010895530259705577 ;
	setAttr ".rpt" -type "double3" -1.0002152069112884 -0.51111078405799504 -0.48910442285329347 ;
	setAttr ".sp" -type "double3" 0.49999995311299905 0.50021525379828946 -0.010895530259705577 ;
createNode mesh -n "pCubeShape3" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3";
	rename -uid "B88D9AE0-438A-F753-D24F-0BA0934BB014";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3";
	rename -uid "89395BA0-43D1-93AF-7A29-A8BB40A381F0";
	setAttr ".rp" -type "double3" 0 0.5 -0.49999989175889414 ;
	setAttr ".rpt" -type "double3" 0.49999989175889414 -0.5 0.99999989175889414 ;
	setAttr ".sp" -type "double3" 0 0.5 -0.49999989175889414 ;
createNode mesh -n "pCubeShape4" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4";
	rename -uid "09FA2752-4E9D-074B-EC28-B38278C6C2BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4";
	rename -uid "803DB44D-487C-94E3-0E34-6CACB9178C2D";
	setAttr ".rp" -type "double3" 0 0.5 -0.49999983275627802 ;
	setAttr ".sp" -type "double3" 0 0.5 -0.49999983275627802 ;
createNode mesh -n "pCubeShape5" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "A760996D-487A-FBC0-FB64-969F36F3F831";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5";
	rename -uid "C2F29862-4F11-90BD-FCCC-38BA7470EFA1";
	setAttr ".rp" -type "double3" 0.021113440864900745 0 0 ;
	setAttr ".rpt" -type "double3" -0.021113440864900745 -0.021113440864900745 0 ;
	setAttr ".sp" -type "double3" 0.021113440864900745 0 0 ;
createNode mesh -n "pCubeShape6" -p "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6";
	rename -uid "1F9A25C7-43F3-5596-13AC-C7AE5AE91B5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "40676848-4938-0C2A-C6DC-5D97103E9D3A";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "59E1B741-40B9-E529-6215-AFBFFE756872";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2FA6D496-40D4-8F16-2153-51A155EFD85E";
createNode displayLayerManager -n "layerManager";
	rename -uid "23AD42A7-4DBB-BE1D-544D-FD88EA509AFA";
createNode displayLayer -n "defaultLayer";
	rename -uid "A6C4048B-44C4-8A01-FF72-7A85F8FB6C11";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FEA3083A-4587-DA5F-60CE-08A9BE99EE1C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A40F6EE1-4CDE-C433-05CB-B29DBB1D4AAA";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C37FE523-4F5A-2C1A-F3B6-BAB441E48CC5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 936\n            -height 1189\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 1189\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 1189\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "10B906DD-4E8C-D721-BDD8-35BE03E0A68F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 180 -ast 0 -aet 180 ";
	setAttr ".st" 6;
createNode animCurveTL -n "X_axis_translateX";
	rename -uid "78FDE665-435F-6940-07AA-3EA912A93719";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 0 0 0 30 0 60 0 90 0 120 0 150 0;
createNode animCurveTL -n "X_axis_translateY";
	rename -uid "3B742545-422E-DF3D-EECE-C0AD60B602ED";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 0 0 0 30 0 60 0 90 0 120 0 150 0;
createNode animCurveTL -n "X_axis_translateZ";
	rename -uid "771A37AA-4DF1-AB08-55FB-398A82D8AC23";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 0 0 0 30 0 60 0 90 0 120 0 150 0;
createNode animCurveTA -n "X_axis_rotateX";
	rename -uid "8666F24C-45A0-5944-0AF5-A1A6A5C88D32";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 0 0 -20 30 20 60 0 90 0 120 0 150 0;
createNode animCurveTA -n "X_axis_rotateY";
	rename -uid "27A9CE6A-4227-333D-D500-4C80F61CDD2E";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 0 0 0 30 0 60 0 90 0 120 0 150 0;
createNode animCurveTA -n "X_axis_rotateZ";
	rename -uid "B62F979F-47B6-B561-BEC2-AFBA8817605D";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 0 0 0 30 0 60 0 90 -10 120 10 150 0;
createNode animCurveTU -n "X_axis_scaleX";
	rename -uid "D784FA4E-46C8-06D0-A989-DE89011D72C6";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 1 0 1 30 1 60 1 90 1 120 1 150 1;
createNode animCurveTU -n "X_axis_scaleY";
	rename -uid "BF4252DC-4F54-58A1-AC46-5A8110C81222";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 1 0 1 30 1 60 1 90 1 120 1 150 1;
createNode animCurveTU -n "X_axis_scaleZ";
	rename -uid "BCA6FBA7-4484-9870-971C-5DB7A9E689EB";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  -5 1 0 1 30 1 60 1 90 1 120 1 150 1;
createNode animCurveTU -n "pCube1_visibility";
	rename -uid "D9A97B11-4062-7006-CD45-92952A0BE56B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "8144EFA3-415C-D425-CF72-FFB4C5E01E8A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "CEE74C9A-47A9-9D23-75E7-B69C9A09049F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "9C955D08-4B74-F57F-A246-F0B00472D44D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "D48DDC76-428F-0835-13F4-91B147AC75AC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "AF5EF258-4408-A9A3-EE86-8790BB1BCCE2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "2872713F-4FF9-55CB-0259-F19E35ACFC5B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "EC5E0B7D-46D8-D1E4-5284-4E8FCB726F50";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "183572AF-472C-D6C7-6121-51B270563865";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "215FB8EE-4121-6BB7-1F33-5E9DEB04F549";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube2_visibility";
	rename -uid "177FBC47-46CA-F272-8350-118857AE10A2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX";
	rename -uid "4EEDCD46-4F42-D103-DE1B-AFB3B05BDF38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube2_translateY";
	rename -uid "0639D783-4706-ED37-4182-82A152C7F89C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTL -n "pCube2_translateZ";
	rename -uid "BEED1071-44F1-05E3-5EF8-F5BDCA0D579F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube2_rotateX";
	rename -uid "9FEE0F4A-4813-4E4C-364C-CBA1FCFB4932";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube2_rotateY";
	rename -uid "C95C4CA6-4078-7670-0F6E-8B873710730F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube2_rotateZ";
	rename -uid "54EE8EA9-46E8-8CE9-6A59-5DB603C41C61";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube2_scaleX";
	rename -uid "894DFDF3-4A36-37E1-726E-538596600C43";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube2_scaleY";
	rename -uid "43EE335F-4A8C-1FEA-929C-F4A292EDC9FB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube2_scaleZ";
	rename -uid "855B73A3-49B4-2159-293F-E0921C51797E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube3_visibility";
	rename -uid "DB4A9F9B-4B90-A665-4381-F6842750C824";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX";
	rename -uid "00CAD9FC-4805-5021-E815-519D6E605D0E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube3_translateY";
	rename -uid "CFF79B6D-45AD-C8E1-CEFE-7581E75D9A60";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTL -n "pCube3_translateZ";
	rename -uid "D7C5C891-47D5-ADAD-E2EE-649BAE601A81";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube3_rotateX";
	rename -uid "8C9C2BFF-4556-F429-170C-719C0E0A9CE4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube3_rotateY";
	rename -uid "1D964967-4349-FA34-1529-90AB7384FEB1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube3_rotateZ";
	rename -uid "F40C183D-4979-CA40-6C3B-7B847E0483A7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube3_scaleX";
	rename -uid "39E20BB3-4BE8-53E5-D024-83A727767D31";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube3_scaleY";
	rename -uid "313FAA67-47B4-1C9A-8FC2-3B9A8867F180";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube3_scaleZ";
	rename -uid "3007BB6B-417B-9C70-4772-199381A88756";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube1_visibility1";
	rename -uid "897F673A-4073-6AC9-2EF4-95AF8F09451D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX1";
	rename -uid "F9FE37A9-4A2A-60FA-FABD-32B0E2290FAE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube1_translateY1";
	rename -uid "BA4FA85F-4ECA-B86E-8332-BB979056409E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube1_translateZ1";
	rename -uid "47D3851E-4F2B-5DDD-B4B4-53871B7DE4CE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube1_rotateX1";
	rename -uid "3645B54E-4C0C-232B-81FE-A2A08C3FCD27";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube1_rotateY1";
	rename -uid "F7B5DCFD-462D-B659-2927-87A5D9EB3C13";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube1_rotateZ1";
	rename -uid "7BFF8C01-4B1F-95C3-AAD9-9E83B1644410";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube1_scaleX1";
	rename -uid "390AB31D-45E2-094F-27DC-D8B6EF11A014";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube1_scaleY1";
	rename -uid "E5299220-466B-5136-AD4E-95B1F7BEAD4F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube1_scaleZ1";
	rename -uid "F9BFC9CC-40DD-8936-6120-18A083081CED";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube2_visibility1";
	rename -uid "B0F5CAF5-4B6F-95A5-7D88-EFA685203664";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX1";
	rename -uid "2013F09F-4B40-9018-4833-F897C2A7F6C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube2_translateY1";
	rename -uid "6FEFD28E-4290-0130-BEC9-CA9E18C54E01";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube2_translateZ1";
	rename -uid "0CC5B4FD-44F5-C10B-13C5-3DB0A7B1531B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube2_rotateX1";
	rename -uid "79EDA5E4-491A-056E-E228-1FB784B874F1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube2_rotateY1";
	rename -uid "F299BBD2-4124-27A8-9D3F-5084531D275F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube2_rotateZ1";
	rename -uid "AAEC4FF1-4C47-8F4F-8315-71888F09CF0C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube2_scaleX1";
	rename -uid "D45B18ED-4BFF-6D00-7A54-04B4F6D55F66";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube2_scaleY1";
	rename -uid "8E293E67-4D99-5738-0171-A59BE1228A70";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube2_scaleZ1";
	rename -uid "00659916-453F-F3A3-122B-68AE0B17ECA7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube3_visibility1";
	rename -uid "DA19B78A-4294-A143-8F3D-1092164AF610";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX1";
	rename -uid "8C4F4B24-4F31-8522-DCDE-408777E42D74";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube3_translateY1";
	rename -uid "586E0C67-4B31-1DDE-1910-958361D6053B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube3_translateZ1";
	rename -uid "033DA475-4D5F-F8AE-9609-2EA2317D506D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube3_rotateX1";
	rename -uid "F07C1751-4574-FD9C-3A76-60A8ECB75111";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube3_rotateY1";
	rename -uid "A4D71CAF-4A51-B3E1-4B41-A1B960DAC7E6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube3_rotateZ1";
	rename -uid "E667A642-4572-E96F-AE49-1E87052D71CD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube3_scaleX1";
	rename -uid "11D4AD40-49FA-8401-B38F-469B95CEC56C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube3_scaleY1";
	rename -uid "79079096-479F-166F-F421-87BF1226A28D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube3_scaleZ1";
	rename -uid "7DC5BB94-4D8D-C001-50BE-0F8A564B6584";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube4_visibility1";
	rename -uid "93BB4FEB-4F85-65FD-73D2-38B72A661E71";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX1";
	rename -uid "07336F24-432E-8BDA-A364-37886807E3C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube4_translateY1";
	rename -uid "221E0611-4A43-7386-CFDF-FA9025FCB950";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube4_translateZ1";
	rename -uid "4E3FE6B2-4C47-57FE-05BF-0C9CFE2D237C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube4_rotateX1";
	rename -uid "FC10A6BB-4726-C66E-950E-C2A850BF563D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube4_rotateY1";
	rename -uid "2E29F160-4BCD-4C5E-26DA-B9A6EBA2212F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube4_rotateZ1";
	rename -uid "EA71447E-48A7-C2CD-FB0F-89ABBE2EB001";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube4_scaleX1";
	rename -uid "07370591-4802-8ABC-C508-B9AC7132A4BF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube4_scaleY1";
	rename -uid "3148D966-4882-46C5-C674-8FB8666B8FC5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube4_scaleZ1";
	rename -uid "B609A55D-41A7-5E9A-D288-48AD9771F30F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube5_visibility1";
	rename -uid "BC558FC7-4728-E1DD-4593-DA9D02ED308E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX1";
	rename -uid "5C3DFC38-4EF1-0F1A-95A5-949C0677A510";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube5_translateY1";
	rename -uid "3AABBBDB-4758-99D2-7B56-54898010DF8C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube5_translateZ1";
	rename -uid "33514369-446C-ADEC-161B-7DA10B22B407";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube5_rotateX1";
	rename -uid "767F656F-43C6-96BE-8327-E4BF955A9EEB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube5_rotateY1";
	rename -uid "413D470F-4E50-207F-2728-92A507D42DDE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube5_rotateZ1";
	rename -uid "E334B78B-4F72-FC05-B060-3F8AD8EFAA3F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube5_scaleX1";
	rename -uid "CB02F33E-4D8F-872F-C2A8-67A3291E16D6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube5_scaleY1";
	rename -uid "C0A82EDF-46D9-78C3-243E-CE8C5B00DBDB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube5_scaleZ1";
	rename -uid "47B7B6CE-410D-107C-A836-7FA699360002";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube6_visibility1";
	rename -uid "BC8F092F-4E92-F926-0F77-958D12AADB54";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX1";
	rename -uid "E0E15193-42D6-4DC1-EFAA-9383F779C149";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube6_translateY1";
	rename -uid "D918DEED-4AC0-C394-2C45-93BB8124FCB1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "pCube6_translateZ1";
	rename -uid "1BD15A9D-4179-7113-487B-AD93BBCCB60F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube6_rotateX1";
	rename -uid "F7DFBE8B-4DA5-C333-4879-999E7C3E0C55";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube6_rotateY1";
	rename -uid "0DC1566F-4D1D-5186-7905-598DD8411514";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "pCube6_rotateZ1";
	rename -uid "212AACBE-437A-66A9-6ECC-D2B221F93981";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "pCube6_scaleX1";
	rename -uid "B0E7E9FD-44DC-CAAC-78D4-62A6AEC112D4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube6_scaleY1";
	rename -uid "7CCA0181-4AAE-837A-B8A1-BD9913051B93";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "pCube6_scaleZ1";
	rename -uid "1B94DAF6-4C12-D08C-F7B7-D6B8E68BB11C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animLayer -n "BaseAnimation";
	rename -uid "7E753AE8-4EDB-D035-788D-63851DFCF770";
	setAttr ".ovrd" yes;
createNode shadingEngine -n "nParticlePointsSE";
	rename -uid "51B5E8DD-4786-8AE9-9F80-EC99951275BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B3F3D9BC-4112-1619-310F-E7A88EFE18C5";
createNode particleSamplerInfo -n "particleSamplerInfo1";
	rename -uid "4E3A228A-4D7F-872E-7F20-A4865C2C36DE";
createNode blinn -n "npPointsBlinn";
	rename -uid "6BF9AF37-45DA-7168-FF96-C58F030C27BC";
createNode particleCloud -n "npPointsVolume";
	rename -uid "AA614587-4F61-2F7D-D065-23AD59FB4B35";
createNode animCurveTU -n "pCube1_visibility2";
	rename -uid "45A09249-4E10-3FD8-823F-6CA7286FB6F6";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX2";
	rename -uid "4BC4B1F5-4768-14B3-5105-288F006FFA8F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateY2";
	rename -uid "8E860A86-4366-9920-6627-69874CBD15B6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateZ2";
	rename -uid "46205202-4A49-5D39-BA27-B9A202B2EB50";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateX2";
	rename -uid "BE9450A0-4FD1-DF35-0D62-FE89C8FD8E12";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateY2";
	rename -uid "D3323A20-4919-C3D4-0A3B-E6BC1CCC7AA0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateZ2";
	rename -uid "5AFA85B5-427C-3EDF-78BD-15915B4CE082";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 90 180 90;
createNode animCurveTU -n "pCube1_scaleX2";
	rename -uid "1970F042-4B29-A2DF-0239-EB9E288888BF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleY2";
	rename -uid "AFD38585-4BBC-A4AE-2A9F-48926E95A729";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleZ2";
	rename -uid "3722E199-480B-426C-17DF-48ABB700A0CD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_visibility2";
	rename -uid "EECB61C2-45B7-F92D-9282-BC8A9231A69D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX2";
	rename -uid "0C5B4848-4F13-DED4-D4B6-4B810322F96F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube2_translateY2";
	rename -uid "C784B78E-42AB-AD63-5225-278501C319BF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube2_translateZ2";
	rename -uid "56E7A1A4-4460-ED1A-D396-2DBC1AF2B929";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateX2";
	rename -uid "C666D9B6-42AE-4B67-17FA-EA8C1229E57D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateY2";
	rename -uid "DAF81ACC-4C6A-275A-CA66-89B946F67AF7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateZ2";
	rename -uid "DFD72B2B-4A25-FCF9-46D2-3BB758222CF4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube2_scaleX2";
	rename -uid "7FACCFC1-4E6F-496F-E360-BD8220EACD80";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleY2";
	rename -uid "2BE018CB-4EFC-1C86-4518-8E825C22E36F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleZ2";
	rename -uid "666E03CF-4932-05F1-631B-C4B6D7C0DA4F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_visibility2";
	rename -uid "DD8C8BCC-499F-4078-DACD-12B39D16ED88";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX2";
	rename -uid "66012C4B-4C79-C88F-2DA0-22A13F4B7754";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube3_translateY2";
	rename -uid "7CBDD77A-421C-AE48-1C9D-4289F678C43B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube3_translateZ2";
	rename -uid "7331DE5A-46D3-6B34-F09E-8A80C7DA0954";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateX2";
	rename -uid "73EFE4D7-4F22-86EC-1A80-F9A84C681227";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateY2";
	rename -uid "94B1D089-44E2-108C-CA7A-27BCA3DBB68D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateZ2";
	rename -uid "0CC4AC17-481F-6B84-1782-9AA2B9875E1E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube3_scaleX2";
	rename -uid "C43A1638-4923-9CF2-67F6-AAAA148E6465";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleY2";
	rename -uid "870BFFDC-4F23-DBD2-4228-51A1F643036E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleZ2";
	rename -uid "9310BD62-4A79-C898-60DF-18B130D9F94F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility2";
	rename -uid "3A60DD94-433F-DFAF-1B74-FFB904571132";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX2";
	rename -uid "1F78926C-494B-96F4-ACCC-1F875F2417A1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube4_translateY2";
	rename -uid "81771E6C-4EA2-4E66-30C4-2A81B6019FEB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube4_translateZ2";
	rename -uid "46DF21DC-40E6-FCCB-FB98-03AA6E3EA973";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateX2";
	rename -uid "EE0F7C7D-42F3-07B7-F94E-A48537CF94E8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateY2";
	rename -uid "03150E45-4DB1-7CEA-6A5B-62BDDA77D8BD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateZ2";
	rename -uid "A4A82C2F-4F80-477D-8E49-6C9063601304";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube4_scaleX2";
	rename -uid "36C68CA4-4649-461D-2DA3-5DB9BE7622CA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleY2";
	rename -uid "3F8F53FA-4A67-0C73-B2F1-788E53D8A6F0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ2";
	rename -uid "52E17A8D-45C8-4C8A-1C36-E7ADEE59D629";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_visibility2";
	rename -uid "04926DC4-48C1-5299-BBD7-E6B961473B9C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX2";
	rename -uid "5EFD85F1-480E-4E5E-3491-D59A197AFD38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube5_translateY2";
	rename -uid "CC8E4AC7-4CC7-0C54-264B-99A4290BC5BE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube5_translateZ2";
	rename -uid "12A7F192-46BB-2D5D-0EB3-8DA389BC6991";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateX2";
	rename -uid "A580EB43-49EF-FD80-7F91-C98079FC47A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateY2";
	rename -uid "D7F14175-405F-F11C-D2A1-A0B6FA4EC68C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateZ2";
	rename -uid "7DB2960E-4D14-5EB4-4393-1FA1561C9759";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube5_scaleX2";
	rename -uid "B07F387E-4AA0-AA70-A3D5-F09C057AC07F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleY2";
	rename -uid "D8868C4B-44ED-4DC1-5C24-07B9A97B9EAF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleZ2";
	rename -uid "D2FC60FB-43A2-0258-30F1-E99DA612F71A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility2";
	rename -uid "346E0140-455A-BFED-4AE7-609390611D80";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX2";
	rename -uid "F9BB1366-42FD-A172-0AF4-4EA6C4F3A303";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube6_translateY2";
	rename -uid "68547D6F-4F0B-0B1E-06D4-61BD7B4902CE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube6_translateZ2";
	rename -uid "5E404364-4998-1B07-6671-A59927AB94AF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateX2";
	rename -uid "2405F068-4FE0-F6B8-5E2C-019463B1AD3A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateY2";
	rename -uid "F001829A-4341-2D34-E3B6-348861CBFCEB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateZ2";
	rename -uid "7F77BC53-4093-03DD-B1E5-09B95922BA3B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube6_scaleX2";
	rename -uid "4FA2358F-4055-77C3-7FA8-0DBD7DF26A6E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleY2";
	rename -uid "59926080-4401-B088-C86A-0FACD40A489C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleZ2";
	rename -uid "D4F29913-4657-0D4B-0EC0-659213FE0BD6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_visibility3";
	rename -uid "E2EA8CC3-480D-377D-97A0-9FB51D129CAB";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX3";
	rename -uid "F872B109-49C6-CAD3-B40C-B4A24C3B9E87";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateY3";
	rename -uid "EDD5E78D-4873-0E75-A9FF-469F23D7F7DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateZ3";
	rename -uid "43DC6E20-498F-1800-213A-C1997896C997";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateX3";
	rename -uid "ABBF63AB-47F9-4E51-5ECD-88BFEC60481B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateY3";
	rename -uid "D65350E0-45E3-8A49-3968-D0B8A14841D6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateZ3";
	rename -uid "F48A36B3-48B0-3398-7736-C39EB19488AB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube1_scaleX3";
	rename -uid "D02C3727-47C6-0BDD-5B8C-FFB91E74F179";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleY3";
	rename -uid "B4EA1C2A-4258-FC44-BF09-BA936E9D1348";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleZ3";
	rename -uid "33A484AF-4597-16B2-1A1F-6F9D3FFDE612";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_visibility3";
	rename -uid "C072BD1B-4246-FF63-54C7-FD8EC3E219B1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX3";
	rename -uid "59823453-4ACF-B114-EA85-BEB87A76D877";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube2_translateY3";
	rename -uid "DBA8579E-408B-6092-B51D-0095F7D3A1CD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube2_translateZ3";
	rename -uid "C248B970-490E-56FA-4AE5-D3AAA61AFB79";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateX3";
	rename -uid "66E6C34A-44CF-85F4-01A8-53B6E0708851";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateY3";
	rename -uid "16EB8419-4240-5037-9858-CB9231794E99";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateZ3";
	rename -uid "62740F6A-4CDC-298A-E137-689D10F67B60";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube2_scaleX3";
	rename -uid "A5285233-4253-C0F9-9812-9E8B67A3FC2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleY3";
	rename -uid "30BC18E9-449E-45C2-D73F-41A8EE8E0E7B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleZ3";
	rename -uid "5449C0CA-4DAE-F256-E865-42A806561AF4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_visibility3";
	rename -uid "F0D133A0-4DD3-7FB3-7F27-92BA44794927";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX3";
	rename -uid "20488C96-473E-F193-C4C8-5E8E9584135A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube3_translateY3";
	rename -uid "155DF578-4FDD-9DAC-F09A-3A9E318D27E7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube3_translateZ3";
	rename -uid "06ACB98C-4027-68A0-0881-B29BE63519E7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateX3";
	rename -uid "A2C9C6CB-4C72-A1A3-F68A-E9A98AE7AD3B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateY3";
	rename -uid "660A1ACD-4F99-D547-12BB-7ABB873C28D8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateZ3";
	rename -uid "976F446B-4F6D-8647-E3C4-E7A33735187D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube3_scaleX3";
	rename -uid "749D2CB4-4070-24B1-ABE5-4F94BA7A1CFE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleY3";
	rename -uid "4D53C46C-495D-99C2-07A1-38A30DD2E495";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleZ3";
	rename -uid "9B2BFF0F-4AC1-AD56-CF12-ACA707A283A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility3";
	rename -uid "9558E90F-48BA-E2EC-56AA-A997DF3C074C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX3";
	rename -uid "3B2925CD-4244-86F0-5D72-6CB42DC2A09A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube4_translateY3";
	rename -uid "023D80E0-4BAC-23FC-F77A-5E86308CDC7C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube4_translateZ3";
	rename -uid "729EEE7B-4C2C-75B2-7466-818DBFC3B8C3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateX3";
	rename -uid "8D519F05-4B55-DD4D-B04B-458FC2BF8399";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateY3";
	rename -uid "45BB417D-4000-ED9A-0496-49A2C808998E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateZ3";
	rename -uid "4AF88A7C-403F-B6E6-E4D4-EFB4DDE901B4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube4_scaleX3";
	rename -uid "DA49008C-4357-8AF4-D960-5EB41198C134";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleY3";
	rename -uid "ECED7B6C-4500-46C4-F211-88B0E786E0B1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ3";
	rename -uid "4FA3FAF8-4CB4-6862-ABB3-0BB21EF3BFC0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_visibility3";
	rename -uid "6D680968-4D1F-17D8-4951-F9B5FDCB92BD";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX3";
	rename -uid "74764353-440D-125A-F879-EB931E048481";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube5_translateY3";
	rename -uid "CB85D7A6-4F30-B4C6-AE89-55BB742C5078";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube5_translateZ3";
	rename -uid "A57A7D91-4B5A-0782-7014-F792EAD55F85";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateX3";
	rename -uid "3C8A9F33-4B8D-43FF-54C8-6E95892A2F7F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateY3";
	rename -uid "00E19332-41F6-0ED1-B6C6-DD84C3AC4D8D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateZ3";
	rename -uid "5BBB3945-4949-4F85-77B0-F9B287024D7A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube5_scaleX3";
	rename -uid "9E74E244-44D0-797C-C183-B493F87B4676";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleY3";
	rename -uid "EA8282EC-4303-EA3A-C56B-5F91612064E9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleZ3";
	rename -uid "2CE35AAE-465C-0B66-4A8F-5785F1459221";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility3";
	rename -uid "36593FEB-400E-2AA8-90B3-7A8539B7D689";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX3";
	rename -uid "CD3E6876-4850-9329-3BFE-7CBE97002769";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube6_translateY3";
	rename -uid "5AE8DF27-4AC1-FAB0-A82A-3199D61102AA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube6_translateZ3";
	rename -uid "7579EE5A-45AB-7A50-EB36-5BA570499F37";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateX3";
	rename -uid "585DDB70-45CF-5393-725D-3184B05F4AB7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateY3";
	rename -uid "FF1B9F2B-4809-6150-2BE8-539299D2C489";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateZ3";
	rename -uid "66B7B6FC-4614-91A0-09A5-43A9ABDB6E7D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube6_scaleX3";
	rename -uid "96C3423D-4773-3A61-C852-22A467FBAB98";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleY3";
	rename -uid "13A21E3A-4ED8-8156-7910-75B59FFF35CA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleZ3";
	rename -uid "43E4EA4E-4CD1-67F2-1F4A-A68A6E597D6D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_visibility4";
	rename -uid "92B6C2F2-49B3-9D76-0CA2-C49950D72F96";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX4";
	rename -uid "74F18CB9-45F0-6FFE-F942-AEA07C23418C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateY4";
	rename -uid "608FEA30-45FE-9B4B-18CA-E6B335C58DEC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateZ4";
	rename -uid "9DE67A45-4127-59CB-5DB7-01B40BB0CA9D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateX4";
	rename -uid "4554183F-44D1-0794-7D95-3383014CDED2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateY4";
	rename -uid "BA36C156-4F6F-5BB3-9A67-F6ABE6388298";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateZ4";
	rename -uid "A90A6B3F-4CEB-F949-C6C4-A585C563AC22";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube1_scaleX4";
	rename -uid "343F7DFE-42EF-DFD7-DBEA-2CBAC6C9C49E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleY4";
	rename -uid "7AF9EFD5-4C9C-6382-DF4D-79A3463CE5ED";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleZ4";
	rename -uid "F09723EE-4340-31D2-C9D8-D0A139DE42AC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_visibility4";
	rename -uid "B57138FA-4EFD-6629-1AE7-4380E193099E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX4";
	rename -uid "2336E383-4775-AA90-7E17-5995052E0E18";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube2_translateY4";
	rename -uid "48B9C21C-4521-8C40-38A7-26AE00A613B3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube2_translateZ4";
	rename -uid "025C0492-41BB-7C98-B7DD-92B0CBC830A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateX4";
	rename -uid "E3A693A5-47E0-CFF4-FB67-7BBA8FD9A3E2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateY4";
	rename -uid "48CBF057-4CB3-8892-5415-4082BFB2A7DF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateZ4";
	rename -uid "375BBC8E-4BDB-DAD7-8370-AFA307C5309E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -5 180 -5;
createNode animCurveTU -n "pCube2_scaleX4";
	rename -uid "D468FFE5-4201-5614-E070-C98F1F455133";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleY4";
	rename -uid "E10937DB-4B5E-A9CD-B97E-0FB457CBF29D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleZ4";
	rename -uid "4752B72D-4AD4-FB71-F668-7B8FB1D21360";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_visibility4";
	rename -uid "51C23178-464F-2248-8B76-E4AB973229BB";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX4";
	rename -uid "77178D11-4A7B-644A-6001-E9B9E5B05EB3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.087155742747658138 180 -0.087155742747658138;
createNode animCurveTL -n "pCube3_translateY4";
	rename -uid "9213DF9D-4751-1BB0-3D30-2CBF7AFA55C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99619469809174555 180 0.99619469809174555;
createNode animCurveTL -n "pCube3_translateZ4";
	rename -uid "D6318B44-445D-5CB5-76A6-ED8E9406E655";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateX4";
	rename -uid "7A7E0608-44E4-1861-CDC5-888366A65DF8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateY4";
	rename -uid "0B6A55A1-42B6-B7A0-53B8-16857F6DD0A1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateZ4";
	rename -uid "D7EF018F-4705-AA1A-829E-2A91B6E42F88";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -5 180 -5;
createNode animCurveTU -n "pCube3_scaleX4";
	rename -uid "39DBAF6B-42CF-2406-1E3C-0EBC4476C7FC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleY4";
	rename -uid "A25DE4B6-420A-E2C6-F413-A5977C783FFE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleZ4";
	rename -uid "841D6163-4E93-9DE6-DB06-BBA643B917D9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility4";
	rename -uid "04DE2712-4456-3634-442B-AF931AC1C802";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX4";
	rename -uid "09237C50-4913-7CDB-F174-958F8C14B969";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.17364817766693008 180 -0.17364817766693008;
createNode animCurveTL -n "pCube4_translateY4";
	rename -uid "77A81E8B-496E-F4E9-1D68-469C0E74F01B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.98480775301220791 180 0.98480775301220791;
createNode animCurveTL -n "pCube4_translateZ4";
	rename -uid "B4FF5C00-45AB-DD04-0CAF-A79F8A431E68";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateX4";
	rename -uid "FB4FFDC9-4DB8-1C37-50BE-05AB54514F33";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateY4";
	rename -uid "C47C273F-42C7-D243-5598-7681E509C6A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateZ4";
	rename -uid "B006705F-4621-C979-AC24-E3B0AEAFB299";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -5 180 -5;
createNode animCurveTU -n "pCube4_scaleX4";
	rename -uid "DDE281CE-4F75-AB6E-A0E8-4BAA34086346";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleY4";
	rename -uid "D22CF5F3-4F03-3950-29E6-2B9375040B41";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ4";
	rename -uid "128D6569-42CF-34D5-CCF0-67A4A9FA0286";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_visibility4";
	rename -uid "D0489CE2-4310-ABE9-AEEC-9FA6CB6A5D07";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX4";
	rename -uid "DD83E680-4F31-2FC1-8DD7-DDBFEC58A326";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.25881904510252074 180 -0.25881904510252074;
createNode animCurveTL -n "pCube5_translateY4";
	rename -uid "4909D73E-495D-E85D-5F45-1087D864C11E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.9659258262890682 180 0.9659258262890682;
createNode animCurveTL -n "pCube5_translateZ4";
	rename -uid "39E0EA1C-4507-A0C9-3A76-A182C95518FE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateX4";
	rename -uid "32E417D6-48AD-89E8-FC7C-C9B910480CE9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateY4";
	rename -uid "9A38C1B4-4A4A-C482-A59F-B7B6026720A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateZ4";
	rename -uid "ECE5577D-4E48-60AB-B0DE-EE9000144F2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -5 180 -5;
createNode animCurveTU -n "pCube5_scaleX4";
	rename -uid "8617FC30-487A-A48A-BB52-C6ABB10E8CC4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleY4";
	rename -uid "CF61E8CE-4153-0799-AEC1-00BE7B1A6F00";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleZ4";
	rename -uid "3C054979-402C-B133-632C-9FB5A27E3AF8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility4";
	rename -uid "A3190CB2-468A-A1D7-453C-F18A4946677D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX4";
	rename -uid "208FDD24-421A-046F-D1D4-FDBEE03356C8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.34202014332566844 180 -0.34202014332566844;
createNode animCurveTL -n "pCube6_translateY4";
	rename -uid "6BFF35DF-4087-624B-4F5B-8F97A165D830";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.93969262078590843 180 0.93969262078590843;
createNode animCurveTL -n "pCube6_translateZ4";
	rename -uid "22DB2E72-484A-6E03-E26E-76BD0416B325";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateX4";
	rename -uid "95A3E779-42FD-FB0A-7B0B-63B5C1B23617";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateY4";
	rename -uid "DE175DA8-4E1A-7B86-3D6B-4A91DE95B27E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateZ4";
	rename -uid "98D4BE28-4A60-3619-153C-3EB8AE0649F9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -5 180 -5;
createNode animCurveTU -n "pCube6_scaleX4";
	rename -uid "26182BB3-4B7B-3861-9D0F-92ADF36A4793";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleY4";
	rename -uid "C0CB8255-4067-8760-F9A0-26BE49C1DC37";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleZ4";
	rename -uid "F529461E-4D0E-50F3-B8BC-5BA4EFBA9BCC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_visibility5";
	rename -uid "F2A08E4A-4C13-64BF-2867-CF83EF25E82C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX5";
	rename -uid "6F2F913F-4450-89A5-A45A-6E90B6579592";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateY5";
	rename -uid "FFEEAB0B-4C81-A0BD-9E74-8288705BCE25";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateZ5";
	rename -uid "8EA155E9-40CE-C05A-DDFC-838ACFC4050D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateX5";
	rename -uid "C21D73F6-444C-93D3-44E0-CEAB4E9DA776";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateY5";
	rename -uid "A6020E53-4F69-344D-9D7E-239BE868D1D9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateZ5";
	rename -uid "22995B4D-4D23-19B8-C623-D6A493C812B6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube1_scaleX5";
	rename -uid "A52D58B7-4756-C38D-FAE3-5BA5D13EE108";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleY5";
	rename -uid "76186C8F-4DE8-5D7E-0986-D3838AC9676C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleZ5";
	rename -uid "4436327D-4030-53A4-4A33-418874A10D47";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_visibility5";
	rename -uid "10E45D6C-4A6F-B4AD-112E-D2B1A7CC3779";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX5";
	rename -uid "23268FD6-42E1-2398-79BE-B8A73DF6BB8E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.095718487859395296 180 -0.095718487859395296;
createNode animCurveTL -n "pCube2_translateY5";
	rename -uid "D626D21C-41BD-A282-6849-4DB5B4674AB7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0785918741415883 180 1.0785918741415883;
createNode animCurveTL -n "pCube2_translateZ5";
	rename -uid "0419D649-481E-2370-1571-A1961FC51496";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateX5";
	rename -uid "00E91668-4FEC-7A48-0085-25BF42930880";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateY5";
	rename -uid "BBD14592-4366-978B-142B-3ABD8FEDA284";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateZ5";
	rename -uid "A0885FAE-4889-49B9-7553-12BE0E00C418";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -10 180 -10;
createNode animCurveTU -n "pCube2_scaleX5";
	rename -uid "73B5D688-4639-5EDC-1BA1-1CBBC6EF0A0F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999989 180 0.99999999999999989;
createNode animCurveTU -n "pCube2_scaleY5";
	rename -uid "D0340C0F-4A03-82E7-2B8A-C5BFDB122EC7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999989 180 0.99999999999999989;
createNode animCurveTU -n "pCube2_scaleZ5";
	rename -uid "EDA24550-481D-8380-B808-14ADC4291523";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_visibility5";
	rename -uid "D1CD17B9-4A6B-5FC9-FCA1-AFB281A016A1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX5";
	rename -uid "C9F20D8D-40F8-A250-26B6-0E88C40B0762";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.28155982234158472 180 -0.28155982234158472;
createNode animCurveTL -n "pCube3_translateY5";
	rename -uid "1E81461D-40F4-E2DB-7F7F-6EA425917469";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0455842990047854 180 1.0455842990047854;
createNode animCurveTL -n "pCube3_translateZ5";
	rename -uid "B482EF46-49FB-8CDF-67EC-9D9256715A3B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateX5";
	rename -uid "6B9F003E-4A91-4F22-73FC-EFAFBC0A1B11";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateY5";
	rename -uid "FC5F83A4-4DEE-5EDF-8D82-DAA64819D0A9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube3_rotateZ5";
	rename -uid "10970507-4EB2-3BFE-4530-F487FBF39111";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -10 180 -10;
createNode animCurveTU -n "pCube3_scaleX5";
	rename -uid "78FDE163-4EE3-685D-30E6-42BF30471C4F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999989 180 0.99999999999999989;
createNode animCurveTU -n "pCube3_scaleY5";
	rename -uid "58902E29-4563-836B-5AA1-C5A6451DF6FE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999989 180 0.99999999999999989;
createNode animCurveTU -n "pCube3_scaleZ5";
	rename -uid "62CA6F51-4DD3-6C2C-114D-01ABD4444B91";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility5";
	rename -uid "8389249F-416F-F756-EDCF-D8BF4786E44E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX5";
	rename -uid "ABCA5969-4F5B-D403-274A-BB9B3C0A2D12";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.45884610409807003 180 -0.45884610409807003;
createNode animCurveTL -n "pCube4_translateY5";
	rename -uid "163A0F95-4C05-76FB-46CE-B881772C32B0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.98080717403390727 180 0.98080717403390727;
createNode animCurveTL -n "pCube4_translateZ5";
	rename -uid "DCB76E27-4B8C-95AF-5B75-39A92CB2EE0F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateX5";
	rename -uid "5E5E6155-4182-E46B-D36C-FA8DD42D6DDC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateY5";
	rename -uid "11D48A5E-4772-BC1F-8B5A-279D07CF9C3C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateZ5";
	rename -uid "84BD004F-4368-4D99-02F9-01953E17F36F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -10 180 -10;
createNode animCurveTU -n "pCube4_scaleX5";
	rename -uid "F681A772-429F-5E2B-0AC5-1998EC1BD834";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleY5";
	rename -uid "ED6D1B72-493F-3F34-C2C7-ACA28BA84391";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ5";
	rename -uid "4872F973-4F75-5AA3-8B03-1D963EC24B06";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_visibility5";
	rename -uid "512F461F-4258-F528-4285-D9A44CECA98B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX5";
	rename -uid "5F7A4E04-49BD-536B-2616-318F758DB81A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.62219057916886378 180 -0.62219057916886378;
createNode animCurveTL -n "pCube5_translateY5";
	rename -uid "615FCFC8-4ACF-C063-A75E-818DF065F1AD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.8862287193923839 180 0.8862287193923839;
createNode animCurveTL -n "pCube5_translateZ5";
	rename -uid "8CA910F0-4F79-3DDE-EA62-8585109D9CF3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateX5";
	rename -uid "34233D41-436B-934F-80D8-C58CD360B86C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateY5";
	rename -uid "93D5DCC0-44AE-9B41-DC9E-F5A5B90EFC3F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateZ5";
	rename -uid "CDA13CB9-49FD-010F-69C2-8D8E2DB0B8B8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -10 180 -10;
createNode animCurveTU -n "pCube5_scaleX5";
	rename -uid "F477B808-4F42-3DCD-03F1-C78C83C013CA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999967 180 0.99999999999999967;
createNode animCurveTU -n "pCube5_scaleY5";
	rename -uid "436D738A-4439-2288-D62A-33AFE1E5B559";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999967 180 0.99999999999999967;
createNode animCurveTU -n "pCube5_scaleZ5";
	rename -uid "7AA77A37-4F6B-BFEA-2A76-B0A5E2808596";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility5";
	rename -uid "AFC5AFD2-407E-7DE7-235D-8CAC321B6112";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX5";
	rename -uid "16374C97-480A-25A2-B9C3-4BA683539D35";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.76663010833523693 180 -0.76663010833523693;
createNode animCurveTL -n "pCube6_translateY5";
	rename -uid "B7DAEE70-4789-C796-8B28-24A936457B1B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.76472265356549673 180 0.76472265356549673;
createNode animCurveTL -n "pCube6_translateZ5";
	rename -uid "5ECE8DD5-4125-A5D6-7D15-14ABA38BAD50";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateX5";
	rename -uid "39EA41F7-46B8-F9A6-DADE-009315A16C4A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateY5";
	rename -uid "CE1A98CA-43EA-DAAA-5D75-0E9B56AFD9CF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateZ5";
	rename -uid "0D5DCC25-4927-BB41-2886-29B308EFC4F1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -10 180 -10;
createNode animCurveTU -n "pCube6_scaleX5";
	rename -uid "66CA9556-4E09-DDAB-97CB-1095151A308B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999978 180 0.99999999999999978;
createNode animCurveTU -n "pCube6_scaleY5";
	rename -uid "8F3CB05B-4B3A-E0E8-EF35-B2BC7CDB896C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999978 180 0.99999999999999978;
createNode animCurveTU -n "pCube6_scaleZ5";
	rename -uid "53B37278-473F-A1DE-689D-9DBDFDECF2D1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_visibility6";
	rename -uid "8BF85E09-45F0-6678-53AC-2C972F51B949";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX6";
	rename -uid "20346AB3-4DDF-FCC5-1EB2-399DCF5B4935";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateY6";
	rename -uid "37B78D87-4FF7-5284-DDD4-708C5F2E6A14";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateZ6";
	rename -uid "C484685C-437F-7A47-AA5B-8F81BC367E57";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateX6";
	rename -uid "CA790C4F-4246-3D4E-DD4E-47A9D42D3905";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateY6";
	rename -uid "3E284A29-40FA-956E-526B-D9A9BE9B312B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateZ6";
	rename -uid "1CD8BB44-4120-213E-7864-8494601745B5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube1_scaleX6";
	rename -uid "39BAC23A-405A-0D6A-D820-8594BF43EBA9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleY6";
	rename -uid "2D511FDF-4205-C449-D8A1-8E9029C8EF02";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleZ6";
	rename -uid "D4BB6C3B-4E59-DD85-DECB-AE87CCC68BE3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_visibility6";
	rename -uid "1F80E7CA-4401-9351-1668-048F88EF4AEA";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX6";
	rename -uid "4BD0A171-4DE9-F4F2-266A-95B2BDD95EBE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.34264781108783576 180 -0.34264781108783576;
createNode animCurveTL -n "pCube2_translateY6";
	rename -uid "AE285D80-4677-1967-3719-0BA53CF8DA1A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.4293815550772422 180 1.4293815550772422;
createNode animCurveTL -n "pCube2_translateZ6";
	rename -uid "F4C549A5-4E82-2BC0-0A50-958B80292EE8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.078827743381587823 180 -0.078827743381587823;
createNode animCurveTA -n "pCube2_rotateX6";
	rename -uid "D974231D-441D-1DAC-DA5E-3F87502167E4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -20.78114029802213 180 -20.78114029802213;
createNode animCurveTA -n "pCube2_rotateY6";
	rename -uid "9E3D7ADB-4639-82B9-8FFE-70A7B7211C8C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 41.699785496220976 180 41.699785496220976;
createNode animCurveTA -n "pCube2_rotateZ6";
	rename -uid "1BEB2BEE-415F-9C3C-1E46-ED80C1ECE68C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -70.032096119267919 180 -70.032096119267919;
createNode animCurveTU -n "pCube2_scaleX6";
	rename -uid "759DB1B1-4581-A70B-53B7-DFB4CF569A7E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleY6";
	rename -uid "3F84E416-4B1C-425A-B5DA-59AC3651CCB0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleZ6";
	rename -uid "C6EEDB95-4161-4A58-143D-BCAD75160ADD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_visibility6";
	rename -uid "730E6443-40F7-F90C-7EA7-45B4667D7706";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX6";
	rename -uid "EC97418B-4F28-EA1B-F705-02BED6A6D426";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.49396475935649575 180 -0.49396475935649575;
createNode animCurveTL -n "pCube3_translateY6";
	rename -uid "A4973DE5-4D66-905C-DB76-6B8A56540D9D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.69075786445324283 180 0.69075786445324283;
createNode animCurveTL -n "pCube3_translateZ6";
	rename -uid "95B8D0DF-4433-498E-B33A-9A93F4764555";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15080940456317493 180 -0.15080940456317493;
createNode animCurveTA -n "pCube3_rotateX6";
	rename -uid "35181333-4EBE-AD3E-CEBD-57A65431FCFB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -95.214989549593568 180 -95.214989549593568;
createNode animCurveTA -n "pCube3_rotateY6";
	rename -uid "FA95CF4E-4F37-42F2-379F-13BCB4265435";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -17.755461180652439 180 -17.755461180652439;
createNode animCurveTA -n "pCube3_rotateZ6";
	rename -uid "482BC892-4011-6254-AF15-63B2B2DE97BA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 92.115127110973916 180 92.115127110973916;
createNode animCurveTU -n "pCube3_scaleX6";
	rename -uid "005356DE-4E70-0341-A58D-BD80C971E591";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000000000000002 180 1.0000000000000002;
createNode animCurveTU -n "pCube3_scaleY6";
	rename -uid "817B301C-42BB-F653-E5C5-2F887ABBE2C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000000000000002 180 1.0000000000000002;
createNode animCurveTU -n "pCube3_scaleZ6";
	rename -uid "A97232F7-4E27-A7DB-C05C-66B0C0B3EDFF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility6";
	rename -uid "6E1BE3ED-46B7-577D-F7FF-5C9C7FA68954";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX6";
	rename -uid "38B79712-4E13-E22D-AAD0-A7939A5E408A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.81523538670815099 180 0.81523538670815099;
createNode animCurveTL -n "pCube4_translateY6";
	rename -uid "493CE8CB-4E94-AA77-E6CF-C1B5996D2E76";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.1621738956618795 180 1.1621738956618795;
createNode animCurveTL -n "pCube4_translateZ6";
	rename -uid "1F9E3953-4CD3-81F5-A4DA-1392E8E56FFF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.1585408453875035 180 1.1585408453875035;
createNode animCurveTA -n "pCube4_rotateX6";
	rename -uid "13BD708E-47A3-ADDD-08B6-66A35B6A7436";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -172.54957842707896 180 -172.54957842707896;
createNode animCurveTA -n "pCube4_rotateY6";
	rename -uid "D8A4D5A2-4E2E-1393-8265-D4A34D031AE7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 17.9679337487715 180 17.9679337487715;
createNode animCurveTA -n "pCube4_rotateZ6";
	rename -uid "849AB54C-4DAC-6179-D0F9-C3A0B1215566";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -15.393854056438421 180 -15.393854056438421;
createNode animCurveTU -n "pCube4_scaleX6";
	rename -uid "F7AA9FFA-4D20-3C85-C411-B086D250B437";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000000000000002 180 1.0000000000000002;
createNode animCurveTU -n "pCube4_scaleY6";
	rename -uid "6258F7DA-4085-90DD-FC81-ADBF29B3C724";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ6";
	rename -uid "9BF6932E-44E2-83B1-0E91-35BF3467FF9D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999989 180 0.99999999999999989;
createNode animCurveTU -n "pCube5_visibility6";
	rename -uid "B99668A8-4F15-C66D-CD4F-8CA5EAF798E2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX6";
	rename -uid "948A5A10-4025-33E6-9AF4-F7974971C892";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.058257319780377514 180 0.058257319780377514;
createNode animCurveTL -n "pCube5_translateY6";
	rename -uid "4D082D4F-416A-DBF1-6D7F-C390A5E42CBE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.16056853418302808 180 -0.16056853418302808;
createNode animCurveTL -n "pCube5_translateZ6";
	rename -uid "BB9D162D-4161-AB7D-2B71-3DAE92E8AF7E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.023659354664915533 180 0.023659354664915533;
createNode animCurveTA -n "pCube5_rotateX6";
	rename -uid "14A62C47-4342-9A4F-995B-6B8373942BA0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 30.156309500263472 180 30.156309500263472;
createNode animCurveTA -n "pCube5_rotateY6";
	rename -uid "57FBE3C1-4E11-3C46-94F9-1F8BD400B906";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -68.729894437964091 180 -68.729894437964091;
createNode animCurveTA -n "pCube5_rotateZ6";
	rename -uid "1F73C52A-4F71-6E7E-3F99-FA9415589BB6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 151.56815046181566 180 151.56815046181566;
createNode animCurveTU -n "pCube5_scaleX6";
	rename -uid "E26F68CF-4336-899A-9069-C3BC07065643";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000000000000002 180 1.0000000000000002;
createNode animCurveTU -n "pCube5_scaleY6";
	rename -uid "842C45F3-4B29-6A31-D2C6-E5A978118FFF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000000000000002 180 1.0000000000000002;
createNode animCurveTU -n "pCube5_scaleZ6";
	rename -uid "6D5E81F2-41ED-AE44-D9ED-BF99AD1C4C57";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility6";
	rename -uid "A4463851-423C-EB3B-D8D0-89ADD5994E3C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX6";
	rename -uid "5FC156E3-4A52-B15D-71AB-ED98EC232D58";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -1.0987264771140315 180 -1.0987264771140315;
createNode animCurveTL -n "pCube6_translateY6";
	rename -uid "740734F3-4D69-D10D-6772-569B6AFAD9BE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.7438916076728157 180 1.7438916076728157;
createNode animCurveTL -n "pCube6_translateZ6";
	rename -uid "35B4819F-4504-575B-1E54-4CB13943DC96";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.31970558605938004 180 -0.31970558605938004;
createNode animCurveTA -n "pCube6_rotateX6";
	rename -uid "B3B8F5CB-40A3-7518-805A-0B8714E953A6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 20.230183696173786 180 20.230183696173786;
createNode animCurveTA -n "pCube6_rotateY6";
	rename -uid "983327B8-44C7-CA4D-C7FD-229AF6C4E281";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 6.3035804662075847 180 6.3035804662075847;
createNode animCurveTA -n "pCube6_rotateZ6";
	rename -uid "74276E23-4634-CDBF-0853-90918F1C5BC9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -140.36887642100433 180 -140.36887642100433;
createNode animCurveTU -n "pCube6_scaleX6";
	rename -uid "6907A84A-4238-07CE-CD47-1A8F65C4264E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999978 180 0.99999999999999978;
createNode animCurveTU -n "pCube6_scaleY6";
	rename -uid "4812A572-4123-392F-DD6A-0BAFEB036917";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleZ6";
	rename -uid "7327251C-409A-7DA7-6A6F-F4AC1A6290D1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999999999999978 180 0.99999999999999978;
createNode animCurveTU -n "pCube1_visibility7";
	rename -uid "E6D4FBFF-4105-8536-F7D4-338E69DE9783";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube1_translateX7";
	rename -uid "8322C055-42F3-E96D-BA1C-60A3377D0B84";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateY7";
	rename -uid "464D6497-4D14-C66C-6C22-FEBBDB70A436";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube1_translateZ7";
	rename -uid "7C773982-4F78-36DE-E4EE-0E8DDB9E8C12";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateX7";
	rename -uid "B0277281-4FDB-910C-F409-2FA2BF215A92";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateY7";
	rename -uid "68C6A874-4151-DCA1-6EB8-B6A169908647";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube1_rotateZ7";
	rename -uid "A1074EDF-4A35-2228-861C-6C98BA86B975";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube1_scaleX7";
	rename -uid "70BDAB59-42E6-742C-BD71-34AC4C49C273";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleY7";
	rename -uid "D556A78A-4A95-9D50-D1F4-638A1F1BC868";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube1_scaleZ7";
	rename -uid "F2A33120-4DFE-4130-E4B9-B693AFBB34CB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_visibility7";
	rename -uid "D5AAB092-4CDC-9660-15EC-3389E82C5C5C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube2_translateX7";
	rename -uid "BE5E9116-4831-71AB-1685-2ABC27BD368E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.5 180 0.5;
createNode animCurveTL -n "pCube2_translateY7";
	rename -uid "F427E7BD-41BD-ABBE-E97D-01B428C37282";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1.5000000011576766 180 1.5000000011576766;
createNode animCurveTL -n "pCube2_translateZ7";
	rename -uid "4DE67D97-461F-A5D2-41FF-D6AD3DCF9BA8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateX7";
	rename -uid "61E44155-4164-A360-C288-1FBCE5303D1E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube2_rotateY7";
	rename -uid "2B1196AB-47F6-A995-3E9E-028F9BA71965";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 90 180 90;
createNode animCurveTA -n "pCube2_rotateZ7";
	rename -uid "4E6D89E1-4775-37E1-5528-71AB915AAB39";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 90 180 90;
createNode animCurveTU -n "pCube2_scaleX7";
	rename -uid "91A16CC3-4FE3-F5FE-C458-61AD44ED0E34";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleY7";
	rename -uid "1983BBF2-4CF1-18F8-D6F4-A0B67C0A3C53";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube2_scaleZ7";
	rename -uid "03C84B50-4411-3D0D-3F76-0CB0CB62EDB6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_visibility7";
	rename -uid "6FB81DB2-44AD-83C7-EE72-A4B8D46FE32E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube3_translateX7";
	rename -uid "DEBBADFD-4B82-F69D-ECF8-25A2BF69E9DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.50000000000000011 180 0.50000000000000011;
createNode animCurveTL -n "pCube3_translateY7";
	rename -uid "9DA7AD80-4F30-3BFF-77D3-94AF8FBE9EF4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.5 180 0.5;
createNode animCurveTL -n "pCube3_translateZ7";
	rename -uid "260CE385-49DA-C54B-4861-DAA519225DAC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999995195532243 180 0.99999995195532243;
createNode animCurveTA -n "pCube3_rotateX7";
	rename -uid "1A0581AE-4D53-AF7E-4D58-E7833FEB9499";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -90 180 -90;
createNode animCurveTA -n "pCube3_rotateY7";
	rename -uid "7F182AB9-47FE-DF1C-D9BF-A8A07D6953B7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 90 180 90;
createNode animCurveTA -n "pCube3_rotateZ7";
	rename -uid "075898D2-4237-13DB-FD4D-6FA51D23F911";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube3_scaleX7";
	rename -uid "0C790836-4B1C-01F3-166F-11A5C91FEA46";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleY7";
	rename -uid "D1731EC4-4924-01C9-1889-719486E65047";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube3_scaleZ7";
	rename -uid "0CF9F64E-4DD2-618E-2530-A6B76A3F50B1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility7";
	rename -uid "C5BDFFD3-42C7-2B98-39F6-41BC4145595C";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX7";
	rename -uid "4BA6A49A-4B7D-BDEF-8A64-7DBFA1EEF323";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99999993864589509 180 -0.99999993864589509;
createNode animCurveTL -n "pCube4_translateY7";
	rename -uid "F5F5E0B2-4D9B-680C-3B84-CE9F903350A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.50000000000000011 180 0.50000000000000011;
createNode animCurveTL -n "pCube4_translateZ7";
	rename -uid "0264F97C-4572-ACED-1B5D-1ABB84CEDDE6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5 180 -0.5;
createNode animCurveTA -n "pCube4_rotateX7";
	rename -uid "8CFFECCE-43BB-F0E4-3BCD-15A1455C1053";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 90 180 90;
createNode animCurveTA -n "pCube4_rotateY7";
	rename -uid "5E872524-4E56-DD7D-A752-03830ACB986A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateZ7";
	rename -uid "ED8BC913-494C-6058-EB46-4EB4173770D9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -90 180 -90;
createNode animCurveTU -n "pCube4_scaleX7";
	rename -uid "31693159-465A-87F3-61E3-8CB925F8393D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleY7";
	rename -uid "43061CB2-4268-DEDB-0085-E8AF8B9471F4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ7";
	rename -uid "17F8793D-47C6-5981-2EB8-1A8DC800AF68";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_visibility7";
	rename -uid "DAEAF993-42F5-0871-51FA-42A14A13AB77";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX7";
	rename -uid "C9487F77-4F82-9471-FEDA-F2ACFB5CEB53";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube5_translateY7";
	rename -uid "CC433D1E-4861-3B07-3477-30A7186D13B9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube5_translateZ7";
	rename -uid "21B52954-4C66-1C00-9E59-4784D5FE4379";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999994099738387 180 0.99999994099738387;
createNode animCurveTA -n "pCube5_rotateX7";
	rename -uid "51B724E6-4068-9021-3212-7C96BAD3C4A7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateY7";
	rename -uid "13D060B7-4F79-4345-CF3A-0183BA5092B5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateZ7";
	rename -uid "8C7AC74E-4504-2801-5B73-F1B41D07C1B3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube5_scaleX7";
	rename -uid "1DBC2649-41B5-301E-BC8E-7DAAF71CF3B2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleY7";
	rename -uid "B13E9A39-4D7A-2EC9-93DA-3EA29D651FBA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleZ7";
	rename -uid "1F23E418-4843-6821-6FAA-60911763A8AD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility7";
	rename -uid "26B3F61A-4BD5-00D6-7A11-51B9990F8D7B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX7";
	rename -uid "762281A2-4635-E4E3-DF17-3DBEE5DB65C2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube6_translateY7";
	rename -uid "520D0F64-4D73-8C6C-37AE-03818B770F93";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.5 180 0.5;
createNode animCurveTL -n "pCube6_translateZ7";
	rename -uid "EA5138C2-47E2-789E-A8C0-F8B1CF72212E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.50000016724372198 180 0.50000016724372198;
createNode animCurveTA -n "pCube6_rotateX7";
	rename -uid "A9DEE5AC-4F11-75D4-9A8D-7C9B2DAC9B1F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 90 180 90;
createNode animCurveTA -n "pCube6_rotateY7";
	rename -uid "BE74A710-441F-55C8-6BEB-7880AF3CD5D6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateZ7";
	rename -uid "EB0164D7-4C79-3535-91F3-9FAC19ACCFC6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -90 180 -90;
createNode animCurveTU -n "pCube6_scaleX7";
	rename -uid "B5BD293E-4AF0-6E21-229D-8786A49A517C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleY7";
	rename -uid "CE67FF5E-420A-1724-1E79-DEA6BAA67FD8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleZ7";
	rename -uid "8A5DD268-484F-EB60-51D3-82B37DF1EB35";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_visibility";
	rename -uid "83130AFB-4F2C-A74D-E7C2-D39C5FAE97F4";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube4_translateX";
	rename -uid "063D009C-42A6-29BE-A248-D99373727F53";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube4_translateY";
	rename -uid "13DA4C0D-4B14-49FD-AB16-DF82B862BCA0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube4_translateZ";
	rename -uid "E3EA48B0-4259-9D60-72D7-338BF6D8CEF2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateX";
	rename -uid "9581B00F-46EE-9F4B-9677-E792CF384335";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateY";
	rename -uid "387E9E5F-44E8-E774-7B26-D18E08A44BE8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube4_rotateZ";
	rename -uid "2D743F3D-428B-C452-3834-B4853148CDF5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube4_scaleX";
	rename -uid "C40921CC-43C3-F07E-24B6-BA92F854DD56";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleY";
	rename -uid "DFE91B06-49DF-8885-042A-DD9B0290AB25";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube4_scaleZ";
	rename -uid "11F71F20-43AD-A72A-2C65-099047ACD6E2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_visibility";
	rename -uid "5F3A535C-405D-8F1B-01BB-9DAF1DBFDF13";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube5_translateX";
	rename -uid "7693CFCC-4593-4F9E-B5CE-7E8268CB34BB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube5_translateY";
	rename -uid "ED7C08CF-4995-429E-9C4C-6BA78484DCB6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube5_translateZ";
	rename -uid "02C839C9-4071-428B-25C4-69837D3FBF0D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateX";
	rename -uid "DAEF8906-4163-CA0A-4A55-1E8DD0A45F38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateY";
	rename -uid "5F58A7BF-46AD-D7B0-37C0-B6B69D0EF4B0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube5_rotateZ";
	rename -uid "1C3269CC-4F36-47C7-40FF-8CB08B7E3CA5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube5_scaleX";
	rename -uid "A6AB218C-496A-6088-71E9-9B8D669579D7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleY";
	rename -uid "F79051FA-4E45-FE7F-C1E2-80988C3CE49A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube5_scaleZ";
	rename -uid "5FFC3065-45D2-D5F6-D8FA-BCBF3E293C15";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_visibility";
	rename -uid "B00C3FA0-49FC-F9FB-B8AF-ED929176B132";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCube6_translateX";
	rename -uid "B6EE124C-4243-AEB5-2203-4A930ECF6DED";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTL -n "pCube6_translateY";
	rename -uid "6EADBDFF-4C8F-10B5-D9FB-C5875EC6EDCE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTL -n "pCube6_translateZ";
	rename -uid "14872D52-411F-97F1-9036-C1BFB7F2055B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateX";
	rename -uid "00641728-4DC4-5548-80AE-87B7C09DF195";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateY";
	rename -uid "579B6964-4E27-7A6F-76F2-37ADF30D71D0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTA -n "pCube6_rotateZ";
	rename -uid "17488CAB-4CD1-A8CA-1D06-129CF3039858";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 180 0;
createNode animCurveTU -n "pCube6_scaleX";
	rename -uid "A13DEDF8-484D-A992-0F11-37BE37E6951B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleY";
	rename -uid "7EA1970D-41E7-D763-2983-3AB63A7E8413";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
createNode animCurveTU -n "pCube6_scaleZ";
	rename -uid "4D0A464D-40C9-280F-86C9-EE978E3BBA56";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 180 1;
select -ne :time1;
	setAttr ".o" 180;
	setAttr ".unw" 180;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 49 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 2;
	setAttr ".ef" 20;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "X_axis_translateX.o" "X_axis.tx";
connectAttr "X_axis_translateY.o" "X_axis.ty";
connectAttr "X_axis_translateZ.o" "X_axis.tz";
connectAttr "X_axis_rotateX.o" "X_axis.rx";
connectAttr "X_axis_rotateY.o" "X_axis.ry";
connectAttr "X_axis_rotateZ.o" "X_axis.rz";
connectAttr "X_axis_scaleX.o" "X_axis.sx";
connectAttr "X_axis_scaleY.o" "X_axis.sy";
connectAttr "X_axis_scaleZ.o" "X_axis.sz";
connectAttr "pCube1_visibility.o" "|X_axis|Simple_classic|pCube1.v";
connectAttr "pCube1_translateX.o" "|X_axis|Simple_classic|pCube1.tx";
connectAttr "pCube1_translateY.o" "|X_axis|Simple_classic|pCube1.ty";
connectAttr "pCube1_translateZ.o" "|X_axis|Simple_classic|pCube1.tz";
connectAttr "pCube1_rotateX.o" "|X_axis|Simple_classic|pCube1.rx";
connectAttr "pCube1_rotateY.o" "|X_axis|Simple_classic|pCube1.ry";
connectAttr "pCube1_rotateZ.o" "|X_axis|Simple_classic|pCube1.rz";
connectAttr "pCube1_scaleX.o" "|X_axis|Simple_classic|pCube1.sx";
connectAttr "pCube1_scaleY.o" "|X_axis|Simple_classic|pCube1.sy";
connectAttr "pCube1_scaleZ.o" "|X_axis|Simple_classic|pCube1.sz";
connectAttr "pCube2_visibility.o" "|X_axis|Simple_classic|pCube1|pCube2.v";
connectAttr "pCube2_translateX.o" "|X_axis|Simple_classic|pCube1|pCube2.tx";
connectAttr "pCube2_translateY.o" "|X_axis|Simple_classic|pCube1|pCube2.ty";
connectAttr "pCube2_translateZ.o" "|X_axis|Simple_classic|pCube1|pCube2.tz";
connectAttr "pCube2_rotateX.o" "|X_axis|Simple_classic|pCube1|pCube2.rx";
connectAttr "pCube2_rotateY.o" "|X_axis|Simple_classic|pCube1|pCube2.ry";
connectAttr "pCube2_rotateZ.o" "|X_axis|Simple_classic|pCube1|pCube2.rz";
connectAttr "pCube2_scaleX.o" "|X_axis|Simple_classic|pCube1|pCube2.sx";
connectAttr "pCube2_scaleY.o" "|X_axis|Simple_classic|pCube1|pCube2.sy";
connectAttr "pCube2_scaleZ.o" "|X_axis|Simple_classic|pCube1|pCube2.sz";
connectAttr "pCube3_visibility.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.rx";
connectAttr "pCube3_rotateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.ry";
connectAttr "pCube3_rotateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.rz";
connectAttr "pCube3_scaleX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.sx";
connectAttr "pCube3_scaleY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.sy";
connectAttr "pCube3_scaleZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3.sz";
connectAttr "pCube4_visibility.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ.o" "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility1.o" "|X_axis|Simple_freezed|pCube1.v";
connectAttr "pCube1_translateX1.o" "|X_axis|Simple_freezed|pCube1.tx";
connectAttr "pCube1_translateY1.o" "|X_axis|Simple_freezed|pCube1.ty";
connectAttr "pCube1_translateZ1.o" "|X_axis|Simple_freezed|pCube1.tz";
connectAttr "pCube1_rotateX1.o" "|X_axis|Simple_freezed|pCube1.rx";
connectAttr "pCube1_rotateY1.o" "|X_axis|Simple_freezed|pCube1.ry";
connectAttr "pCube1_rotateZ1.o" "|X_axis|Simple_freezed|pCube1.rz";
connectAttr "pCube1_scaleX1.o" "|X_axis|Simple_freezed|pCube1.sx";
connectAttr "pCube1_scaleY1.o" "|X_axis|Simple_freezed|pCube1.sy";
connectAttr "pCube1_scaleZ1.o" "|X_axis|Simple_freezed|pCube1.sz";
connectAttr "pCube2_visibility1.o" "|X_axis|Simple_freezed|pCube1|pCube2.v";
connectAttr "pCube2_translateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2.tx";
connectAttr "pCube2_translateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2.ty";
connectAttr "pCube2_translateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2.tz";
connectAttr "pCube2_rotateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2.rx";
connectAttr "pCube2_rotateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2.ry";
connectAttr "pCube2_rotateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2.rz";
connectAttr "pCube2_scaleX1.o" "|X_axis|Simple_freezed|pCube1|pCube2.sx";
connectAttr "pCube2_scaleY1.o" "|X_axis|Simple_freezed|pCube1|pCube2.sy";
connectAttr "pCube2_scaleZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2.sz";
connectAttr "pCube3_visibility1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.rx"
		;
connectAttr "pCube3_rotateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.ry"
		;
connectAttr "pCube3_rotateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.rz"
		;
connectAttr "pCube3_scaleX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.sx";
connectAttr "pCube3_scaleY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.sy";
connectAttr "pCube3_scaleZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3.sz";
connectAttr "pCube4_visibility1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ1.o" "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility4.o" "|X_axis|Simple_classic_preRotated|pCube1.v";
connectAttr "pCube1_translateX4.o" "|X_axis|Simple_classic_preRotated|pCube1.tx"
		;
connectAttr "pCube1_translateY4.o" "|X_axis|Simple_classic_preRotated|pCube1.ty"
		;
connectAttr "pCube1_translateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1.tz"
		;
connectAttr "pCube1_rotateX4.o" "|X_axis|Simple_classic_preRotated|pCube1.rx";
connectAttr "pCube1_rotateY4.o" "|X_axis|Simple_classic_preRotated|pCube1.ry";
connectAttr "pCube1_rotateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1.rz";
connectAttr "pCube1_scaleX4.o" "|X_axis|Simple_classic_preRotated|pCube1.sx";
connectAttr "pCube1_scaleY4.o" "|X_axis|Simple_classic_preRotated|pCube1.sy";
connectAttr "pCube1_scaleZ4.o" "|X_axis|Simple_classic_preRotated|pCube1.sz";
connectAttr "pCube2_visibility4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.v"
		;
connectAttr "pCube2_translateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.tx"
		;
connectAttr "pCube2_translateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.ty"
		;
connectAttr "pCube2_translateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.tz"
		;
connectAttr "pCube2_rotateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.rx"
		;
connectAttr "pCube2_rotateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.ry"
		;
connectAttr "pCube2_rotateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.rz"
		;
connectAttr "pCube2_scaleX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.sx"
		;
connectAttr "pCube2_scaleY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.sy"
		;
connectAttr "pCube2_scaleZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2.sz"
		;
connectAttr "pCube3_visibility4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.rx"
		;
connectAttr "pCube3_rotateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.ry"
		;
connectAttr "pCube3_rotateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.rz"
		;
connectAttr "pCube3_scaleX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.sx"
		;
connectAttr "pCube3_scaleY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.sy"
		;
connectAttr "pCube3_scaleZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3.sz"
		;
connectAttr "pCube4_visibility4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ4.o" "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility2.o" "|X_axis|Simple_pivotRot|pCube1.v";
connectAttr "pCube1_translateX2.o" "|X_axis|Simple_pivotRot|pCube1.tx";
connectAttr "pCube1_translateY2.o" "|X_axis|Simple_pivotRot|pCube1.ty";
connectAttr "pCube1_translateZ2.o" "|X_axis|Simple_pivotRot|pCube1.tz";
connectAttr "pCube1_rotateX2.o" "|X_axis|Simple_pivotRot|pCube1.rx";
connectAttr "pCube1_rotateY2.o" "|X_axis|Simple_pivotRot|pCube1.ry";
connectAttr "pCube1_rotateZ2.o" "|X_axis|Simple_pivotRot|pCube1.rz";
connectAttr "pCube1_scaleX2.o" "|X_axis|Simple_pivotRot|pCube1.sx";
connectAttr "pCube1_scaleY2.o" "|X_axis|Simple_pivotRot|pCube1.sy";
connectAttr "pCube1_scaleZ2.o" "|X_axis|Simple_pivotRot|pCube1.sz";
connectAttr "pCube2_visibility2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.v";
connectAttr "pCube2_translateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.tx";
connectAttr "pCube2_translateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.ty";
connectAttr "pCube2_translateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.tz";
connectAttr "pCube2_rotateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.rx";
connectAttr "pCube2_rotateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.ry";
connectAttr "pCube2_rotateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.rz";
connectAttr "pCube2_scaleX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.sx";
connectAttr "pCube2_scaleY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.sy";
connectAttr "pCube2_scaleZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2.sz";
connectAttr "pCube3_visibility2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.rx"
		;
connectAttr "pCube3_rotateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.ry"
		;
connectAttr "pCube3_rotateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.rz"
		;
connectAttr "pCube3_scaleX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.sx"
		;
connectAttr "pCube3_scaleY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.sy"
		;
connectAttr "pCube3_scaleZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3.sz"
		;
connectAttr "pCube4_visibility2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ2.o" "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.v";
connectAttr "pCube1_translateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.tx";
connectAttr "pCube1_translateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.ty";
connectAttr "pCube1_translateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.tz";
connectAttr "pCube1_rotateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.rx";
connectAttr "pCube1_rotateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.ry";
connectAttr "pCube1_rotateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.rz";
connectAttr "pCube1_scaleX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.sx";
connectAttr "pCube1_scaleY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.sy";
connectAttr "pCube1_scaleZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1.sz";
connectAttr "pCube2_visibility3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.v"
		;
connectAttr "pCube2_translateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.tx"
		;
connectAttr "pCube2_translateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.ty"
		;
connectAttr "pCube2_translateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.tz"
		;
connectAttr "pCube2_rotateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.rx"
		;
connectAttr "pCube2_rotateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.ry"
		;
connectAttr "pCube2_rotateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.rz"
		;
connectAttr "pCube2_scaleX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.sx"
		;
connectAttr "pCube2_scaleY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.sy"
		;
connectAttr "pCube2_scaleZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2.sz"
		;
connectAttr "pCube3_visibility3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.rx"
		;
connectAttr "pCube3_rotateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.ry"
		;
connectAttr "pCube3_rotateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.rz"
		;
connectAttr "pCube3_scaleX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.sx"
		;
connectAttr "pCube3_scaleY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.sy"
		;
connectAttr "pCube3_scaleZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3.sz"
		;
connectAttr "pCube4_visibility3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ3.o" "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.v"
		;
connectAttr "pCube1_translateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.tx"
		;
connectAttr "pCube1_translateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.ty"
		;
connectAttr "pCube1_translateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.tz"
		;
connectAttr "pCube1_rotateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.rx";
connectAttr "pCube1_rotateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.ry";
connectAttr "pCube1_rotateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.rz";
connectAttr "pCube1_scaleX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.sx";
connectAttr "pCube1_scaleY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.sy";
connectAttr "pCube1_scaleZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1.sz";
connectAttr "pCube2_visibility5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.v"
		;
connectAttr "pCube2_translateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.tx"
		;
connectAttr "pCube2_translateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.ty"
		;
connectAttr "pCube2_translateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.tz"
		;
connectAttr "pCube2_rotateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.rx"
		;
connectAttr "pCube2_rotateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.ry"
		;
connectAttr "pCube2_rotateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.rz"
		;
connectAttr "pCube2_scaleX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.sx"
		;
connectAttr "pCube2_scaleY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.sy"
		;
connectAttr "pCube2_scaleZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2.sz"
		;
connectAttr "pCube3_visibility5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.rx"
		;
connectAttr "pCube3_rotateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.ry"
		;
connectAttr "pCube3_rotateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.rz"
		;
connectAttr "pCube3_scaleX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.sx"
		;
connectAttr "pCube3_scaleY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.sy"
		;
connectAttr "pCube3_scaleZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3.sz"
		;
connectAttr "pCube4_visibility5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ5.o" "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility6.o" "|X_axis|Simple_movedRotated|pCube1.v";
connectAttr "pCube1_translateX6.o" "|X_axis|Simple_movedRotated|pCube1.tx";
connectAttr "pCube1_translateY6.o" "|X_axis|Simple_movedRotated|pCube1.ty";
connectAttr "pCube1_translateZ6.o" "|X_axis|Simple_movedRotated|pCube1.tz";
connectAttr "pCube1_rotateX6.o" "|X_axis|Simple_movedRotated|pCube1.rx";
connectAttr "pCube1_rotateY6.o" "|X_axis|Simple_movedRotated|pCube1.ry";
connectAttr "pCube1_rotateZ6.o" "|X_axis|Simple_movedRotated|pCube1.rz";
connectAttr "pCube1_scaleX6.o" "|X_axis|Simple_movedRotated|pCube1.sx";
connectAttr "pCube1_scaleY6.o" "|X_axis|Simple_movedRotated|pCube1.sy";
connectAttr "pCube1_scaleZ6.o" "|X_axis|Simple_movedRotated|pCube1.sz";
connectAttr "pCube2_visibility6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.v"
		;
connectAttr "pCube2_translateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.tx"
		;
connectAttr "pCube2_translateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.ty"
		;
connectAttr "pCube2_translateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.tz"
		;
connectAttr "pCube2_rotateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.rx";
connectAttr "pCube2_rotateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.ry";
connectAttr "pCube2_rotateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.rz";
connectAttr "pCube2_scaleX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.sx";
connectAttr "pCube2_scaleY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.sy";
connectAttr "pCube2_scaleZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2.sz";
connectAttr "pCube3_visibility6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.rx"
		;
connectAttr "pCube3_rotateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.ry"
		;
connectAttr "pCube3_rotateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.rz"
		;
connectAttr "pCube3_scaleX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.sx"
		;
connectAttr "pCube3_scaleY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.sy"
		;
connectAttr "pCube3_scaleZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3.sz"
		;
connectAttr "pCube4_visibility6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ6.o" "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
connectAttr "pCube1_visibility7.o" "|X_axis|Simple_chaos|pCube1.v";
connectAttr "pCube1_translateX7.o" "|X_axis|Simple_chaos|pCube1.tx";
connectAttr "pCube1_translateY7.o" "|X_axis|Simple_chaos|pCube1.ty";
connectAttr "pCube1_translateZ7.o" "|X_axis|Simple_chaos|pCube1.tz";
connectAttr "pCube1_rotateX7.o" "|X_axis|Simple_chaos|pCube1.rx";
connectAttr "pCube1_rotateY7.o" "|X_axis|Simple_chaos|pCube1.ry";
connectAttr "pCube1_rotateZ7.o" "|X_axis|Simple_chaos|pCube1.rz";
connectAttr "pCube1_scaleX7.o" "|X_axis|Simple_chaos|pCube1.sx";
connectAttr "pCube1_scaleY7.o" "|X_axis|Simple_chaos|pCube1.sy";
connectAttr "pCube1_scaleZ7.o" "|X_axis|Simple_chaos|pCube1.sz";
connectAttr "pCube2_visibility7.o" "|X_axis|Simple_chaos|pCube1|pCube2.v";
connectAttr "pCube2_translateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2.tx";
connectAttr "pCube2_translateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2.ty";
connectAttr "pCube2_translateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2.tz";
connectAttr "pCube2_rotateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2.rx";
connectAttr "pCube2_rotateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2.ry";
connectAttr "pCube2_rotateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2.rz";
connectAttr "pCube2_scaleX7.o" "|X_axis|Simple_chaos|pCube1|pCube2.sx";
connectAttr "pCube2_scaleY7.o" "|X_axis|Simple_chaos|pCube1|pCube2.sy";
connectAttr "pCube2_scaleZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2.sz";
connectAttr "pCube3_visibility7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.v"
		;
connectAttr "pCube3_translateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.tx"
		;
connectAttr "pCube3_translateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.ty"
		;
connectAttr "pCube3_translateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.tz"
		;
connectAttr "pCube3_rotateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.rx";
connectAttr "pCube3_rotateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.ry";
connectAttr "pCube3_rotateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.rz";
connectAttr "pCube3_scaleX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.sx";
connectAttr "pCube3_scaleY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.sy";
connectAttr "pCube3_scaleZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3.sz";
connectAttr "pCube4_visibility7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.v"
		;
connectAttr "pCube4_translateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.tx"
		;
connectAttr "pCube4_translateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.ty"
		;
connectAttr "pCube4_translateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.tz"
		;
connectAttr "pCube4_rotateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.rx"
		;
connectAttr "pCube4_rotateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.ry"
		;
connectAttr "pCube4_rotateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.rz"
		;
connectAttr "pCube4_scaleX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.sx"
		;
connectAttr "pCube4_scaleY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.sy"
		;
connectAttr "pCube4_scaleZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4.sz"
		;
connectAttr "pCube5_visibility7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.v"
		;
connectAttr "pCube5_translateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.tx"
		;
connectAttr "pCube5_translateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.ty"
		;
connectAttr "pCube5_translateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.tz"
		;
connectAttr "pCube5_rotateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.rx"
		;
connectAttr "pCube5_rotateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.ry"
		;
connectAttr "pCube5_rotateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.rz"
		;
connectAttr "pCube5_scaleX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.sx"
		;
connectAttr "pCube5_scaleY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.sy"
		;
connectAttr "pCube5_scaleZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5.sz"
		;
connectAttr "pCube6_visibility7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.v"
		;
connectAttr "pCube6_translateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tx"
		;
connectAttr "pCube6_translateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ty"
		;
connectAttr "pCube6_translateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.tz"
		;
connectAttr "pCube6_rotateX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rx"
		;
connectAttr "pCube6_rotateY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.ry"
		;
connectAttr "pCube6_rotateZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.rz"
		;
connectAttr "pCube6_scaleX7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sx"
		;
connectAttr "pCube6_scaleY7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sy"
		;
connectAttr "pCube6_scaleZ7.o" "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6.sz"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "nParticlePointsSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "nParticlePointsSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "npPointsBlinn.oc" "nParticlePointsSE.ss";
connectAttr "npPointsVolume.oi" "nParticlePointsSE.vs";
connectAttr "nParticlePointsSE.msg" "materialInfo1.sg";
connectAttr "npPointsBlinn.msg" "materialInfo1.m";
connectAttr "particleSamplerInfo1.msg" "materialInfo1.t" -na;
connectAttr "particleSamplerInfo1.oc" "npPointsBlinn.c";
connectAttr "particleSamplerInfo1.ot" "npPointsBlinn.it";
connectAttr "particleSamplerInfo1.oi" "npPointsBlinn.ic";
connectAttr "particleSamplerInfo1.ot" "npPointsVolume.t";
connectAttr "particleSamplerInfo1.oc" "npPointsVolume.c";
connectAttr "particleSamplerInfo1.oi" "npPointsVolume.i";
connectAttr "nParticlePointsSE.pa" ":renderPartition.st" -na;
connectAttr "npPointsBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "npPointsVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|X_axis|Simple_classic|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_freezed|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_freezed|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "X_axisShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|X_axis|Simple_pivotRot|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_freezed|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_freezed|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic_preRotated|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_classic_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_preRotated|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_pivotRot_preRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_movedRotated|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_movedRotated|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_movedRotated|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_chaos|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_chaos|pCube1|pCube2|pCubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|X_axis|Simple_chaos|pCube1|pCube2|pCube3|pCube4|pCube5|pCube6|pCubeShape6.iog" ":initialShadingGroup.dsm"
		 -na;
// End of Samples.ma
