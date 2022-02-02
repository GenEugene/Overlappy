//Maya ASCII 2019 scene
//Name: RotationTest.ma
//Last modified: Sun, Jun 16, 2019 04:00:52 PM
//Codeset: 1251
requires maya "2019";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "3.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17763)\n";
createNode transform -s -n "persp";
	rename -uid "0724F12E-4674-FDCE-1CF9-5FA4D601FD8E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 24.438967702967251 16.633242398975703 12.746456036969089 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -11.138352729565588 81.000000000019 5.0828867549299632e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E7436E93-485F-C29B-CA24-31B8A1EECFC1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 34.485792589049161;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.4483469411688858 3.4641016151377548 -1.9999999999999996 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4A339CBB-48EC-7D43-04B3-6AB0582DE4CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.1722650334700546 1000.1 2.4106198326815429 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AC06D8E2-4CDF-017C-DAB0-288DB6918597";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 40.850773147505677;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "1A6CFABA-4829-D1F3-08FD-429CDA1A2E5D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.6369245756385853 15.782384709153749 1000.517881114682 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AFF182B5-4D4E-7FBD-E97A-2694FAFC642C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1011.5941881713862;
	setAttr ".ow" 16.660613288584404;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -7.6369245756385862 15.782384709153749 -11.076307056704231 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "FBA16757-487D-DBBB-7119-AEA2860B3BB1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1066262792609 8.7023190779905377 -14.586506973965678 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3128C4CD-4E19-BEE4-B8E5-2B98DF81DED0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1066262792609;
	setAttr ".ow" 43.64018098188707;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 9.9920478814449023 0.39872187664141445 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "persp1";
	rename -uid "52DAF7B5-47A6-F24D-216F-C7A06894D4B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.949822843217433 19.923994900385335 12.604722506002176 ;
	setAttr ".r" -type "double3" -31.538352729573603 67.800000000020134 4.2088556773442622e-15 ;
createNode camera -n "persp1Shape" -p "persp1";
	rename -uid "8366542E-4FC8-440E-1607-7C994FFE3FF6";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 37.264243574521522;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.4641016151377548 -1.9999999999999998 -2.8970917752736671 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "cone_1";
	rename -uid "2A446700-47FC-AD9B-2888-1AA1FF66E787";
	setAttr ".v" no;
createNode mesh -n "cone_Shape1" -p "cone_1";
	rename -uid "13B59E84-456B-0575-9F96-3B962E462A5F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_2" -p "cone_1";
	rename -uid "CEBE6D3E-441F-1759-2831-139C1105EE61";
createNode mesh -n "cone_Shape2" -p "|cone_1|cone_2";
	rename -uid "80A6F489-4B33-96FF-190F-B9BCEE80FB57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_3" -p "|cone_1|cone_2";
	rename -uid "C3272AE4-4C1A-C9FB-CA37-2D8691994F2C";
createNode mesh -n "cone_Shape3" -p "|cone_1|cone_2|cone_3";
	rename -uid "ACB9F38E-4E07-0CD5-8A8E-B78936162BB7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_4" -p "|cone_1|cone_2|cone_3";
	rename -uid "F12A596C-4EB4-2BF5-1456-7AAD133DB949";
createNode mesh -n "cone_Shape4" -p "|cone_1|cone_2|cone_3|cone_4";
	rename -uid "708951C9-44E2-2433-0CCD-B5984627EAE8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_5" -p "|cone_1|cone_2|cone_3|cone_4";
	rename -uid "04504D8A-43A7-2DD6-7165-A39719BE6028";
createNode mesh -n "cone_Shape5" -p "|cone_1|cone_2|cone_3|cone_4|cone_5";
	rename -uid "2468B8D6-4B2A-0D04-AB24-DFA20D86117F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aim_for_last_object" -p "|cone_1|cone_2|cone_3|cone_4|cone_5";
	rename -uid "96742ECD-488D-76CA-118C-DDBEA922B7DD";
createNode locator -n "aim_for_last_objectShape" -p "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object";
	rename -uid "5339FD56-4688-FF1E-C7E6-C19E0E2C1118";
	setAttr -k off ".v";
createNode transform -n "cone_6";
	rename -uid "28BD7277-4BA2-2FE5-E15B-1981305B588E";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.0046517066657543182 -1.5332934166833739e-19 ;
createNode mesh -n "cone_Shape6" -p "|cone_6";
	rename -uid "69F4439A-4D44-A6AA-A2E8-E08BC3052DD3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_2" -p "|cone_6";
	rename -uid "363CED34-4B75-A7AC-BBEF-EA8A667A53C6";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape2" -p "|cone_6|cone_2";
	rename -uid "C60A2E07-42C6-5154-14C9-C2A97A7804F4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_3" -p "|cone_6|cone_2";
	rename -uid "613EF5A4-431B-FD2B-1F8E-A89301627EE4";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape3" -p "|cone_6|cone_2|cone_3";
	rename -uid "A8D26072-480F-1D2B-5939-8F9CD8E97B94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_4" -p "|cone_6|cone_2|cone_3";
	rename -uid "132531BB-4E58-9DE8-8CCE-14ADF87ABE8B";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape4" -p "|cone_6|cone_2|cone_3|cone_4";
	rename -uid "B7C64DAC-4A44-2FBA-0A8D-5C89642D63E7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_5" -p "|cone_6|cone_2|cone_3|cone_4";
	rename -uid "7786685B-4A16-6C78-4319-C6B90F539081";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape5" -p "|cone_6|cone_2|cone_3|cone_4|cone_5";
	rename -uid "2D23EDAA-456A-C91A-117B-A8AC113A50F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aim_for_last_object" -p "|cone_6|cone_2|cone_3|cone_4|cone_5";
	rename -uid "685D668A-4969-0179-2630-27AF1103B091";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode locator -n "aim_for_last_objectShape" -p "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object";
	rename -uid "D7A3BEEC-454D-B49A-40CD-88946249053C";
	setAttr -k off ".v";
createNode transform -n "cone_12";
	rename -uid "B87FA47D-4592-EFEA-62D4-1B8C06466EE7";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.0309274716070647 -0.0046517066657543182 -1.5332934166833739e-19 ;
createNode mesh -n "cone_Shape12" -p "cone_12";
	rename -uid "11639580-422F-6552-45F0-A7846B6DE473";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_2" -p "cone_12";
	rename -uid "64A1083A-45D0-14CA-EAB5-55985EEB0903";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape2" -p "|cone_12|cone_2";
	rename -uid "97AD42A0-45FE-6901-0B87-3BA46E3E0B29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_3" -p "|cone_12|cone_2";
	rename -uid "66FBA2AF-45E5-9B87-94A7-97A94BD05CB5";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 0 3.9981516117629736 0.0018483882370263771 ;
	setAttr ".sp" -type "double3" 0 3.9981516117629736 0.0018483882370263771 ;
createNode mesh -n "cone_Shape3" -p "|cone_12|cone_2|cone_3";
	rename -uid "CA9C78E8-455C-DC73-15A7-AD8764974F6D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 3.9981515 0.0018483882 
		0 3.9981515 0.0018483882 0 3.9981515 0.0018483882 0 3.9981515 0.0018483882 0 3.9981515 
		0.0018483882 0 3.9981515 0.0018483882 0 3.9981515 0.0018483882 0 3.9981515 0.0018483882 
		0 3.9981515 0.0018483882;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_4" -p "|cone_12|cone_2|cone_3";
	rename -uid "B5810739-4CE6-C457-F3AE-0BB376537A77";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape4" -p "|cone_12|cone_2|cone_3|cone_4";
	rename -uid "7104997D-4D13-99EE-85A2-28BFDA57CC43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_5" -p "|cone_12|cone_2|cone_3|cone_4";
	rename -uid "C69E4156-4293-C499-7CDE-569724791C53";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "cone_Shape5" -p "|cone_12|cone_2|cone_3|cone_4|cone_5";
	rename -uid "CFD13737-4DA5-5F9D-7FB8-F59A803AC978";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aim_for_last_object" -p "|cone_12|cone_2|cone_3|cone_4|cone_5";
	rename -uid "284DF4CE-4221-F68C-DF94-0FB8C89DB83C";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode locator -n "aim_for_last_objectShape" -p "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object";
	rename -uid "4807DF2A-46BE-CB63-C8F7-2FA665946876";
	setAttr -k off ".v";
createNode transform -n "cone_7";
	rename -uid "76AFCBD0-42D7-4127-08D6-A8819A19EED8";
	setAttr -k off -cb on ".v" no;
	setAttr ".t" -type "double3" 0 -0.0020376904867589474 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape7" -p "|cone_7";
	rename -uid "5F97A456-4882-DC54-A5F9-7DBBCC3F9AE7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_2" -p "|cone_7";
	rename -uid "EB4C45CF-402B-9332-26FC-5BAB51CDAB64";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape2" -p "|cone_7|cone_2";
	rename -uid "F12090C8-412F-F7D8-A6B0-6C825A81C73B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_3" -p "|cone_7|cone_2";
	rename -uid "5B9D5479-4DED-B11C-5ACD-2598E71B119E";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape3" -p "|cone_7|cone_2|cone_3";
	rename -uid "71EF5DC6-406F-8A75-2417-CA99DAB3789A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_4" -p "|cone_7|cone_2|cone_3";
	rename -uid "39715F3B-4333-6D8F-9EC3-96970F04A670";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape4" -p "|cone_7|cone_2|cone_3|cone_4";
	rename -uid "F265DA8F-4285-CD71-F5F2-EFA0AE809D71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_5" -p "|cone_7|cone_2|cone_3|cone_4";
	rename -uid "6AE005A4-40CD-4C5D-D45B-158AA853177C";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape5" -p "|cone_7|cone_2|cone_3|cone_4|cone_5";
	rename -uid "8F15F8BD-4B54-2B9B-3EE0-278A84BBA45E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_6" -p "|cone_7|cone_2|cone_3|cone_4|cone_5";
	rename -uid "7C803CE7-483B-2FE1-45C4-E58D0D3E1A75";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape6" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6";
	rename -uid "5CC59FA3-479B-16B4-CC3E-22B423914623";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_7" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6";
	rename -uid "1E463A22-4E14-C4B2-AA0F-ECA32F87C9F1";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape7" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7";
	rename -uid "49B98BA5-4E22-3F11-A715-FB815C24A2A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_8" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7";
	rename -uid "A8FA4634-4BF8-4A84-C56E-46BF322979C8";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape8" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8";
	rename -uid "550C33D8-4F0A-5A16-CCDF-49A5159E5ED6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_9" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8";
	rename -uid "0DE5E452-46F8-9C12-9BAB-3FB9FC3B8307";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape9" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9";
	rename -uid "A8177BDB-4566-6C4F-8B6F-70B9A4AF37E8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_10" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9";
	rename -uid "531C7B56-4F29-0261-451C-0DB1C62A5128";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape10" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10";
	rename -uid "D399CAF5-47AB-034D-DFD2-3DB7895B6A00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aim_for_last_object" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10";
	rename -uid "FE10FD76-4AD7-D9D8-B677-9E8CFCD5FCA9";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode locator -n "aim_for_last_objectShape" -p "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object";
	rename -uid "41C98456-472A-3843-C47D-5B9FE57F1F11";
	setAttr -k off ".v";
createNode transform -n "cone_13";
	rename -uid "B49C11B6-4D4C-68B4-42E5-B6914C2F0D51";
	setAttr -k off -cb on ".v" no;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape13" -p "cone_13";
	rename -uid "27F369CB-4DB8-DE7D-0519-B8ADD63ACCBB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_2" -p "cone_13";
	rename -uid "5B645EC9-4FF2-084A-13D5-B9B2DEDCE37E";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "cone_Shape2" -p "|cone_13|cone_2";
	rename -uid "9D03E16D-4D42-39C4-6686-B4BA8A24659F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 2 0 0 2 0 0 2 0 0 2 0 0 
		2 0 0 2 0 0 2 0 0 2 0 0 2 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_3" -p "|cone_13|cone_2";
	rename -uid "C06CB5B1-4D61-BF2A-8CB9-34914BBE861E";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
createNode mesh -n "cone_Shape3" -p "|cone_13|cone_2|cone_3";
	rename -uid "CDAD1FB3-4C86-1CC7-84C3-B3A9B1EE514B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 4 0 0 4 0 0 4 0 0 4 0 0 
		4 0 0 4 0 0 4 0 0 4 0 0 4 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_4" -p "|cone_13|cone_2|cone_3";
	rename -uid "7903D6D2-4996-70A7-BF5D-8F900D14087B";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 6 0 ;
	setAttr ".sp" -type "double3" 0 6 0 ;
createNode mesh -n "cone_Shape4" -p "|cone_13|cone_2|cone_3|cone_4";
	rename -uid "B82C919A-4A49-1748-32C0-DF84ED184BFA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 6 0 0 6 0 0 6 0 0 6 0 0 
		6 0 0 6 0 0 6 0 0 6 0 0 6 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_5" -p "|cone_13|cone_2|cone_3|cone_4";
	rename -uid "80B5B135-4D88-D14A-6DB9-5F8B96BE0B26";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 8 0 ;
	setAttr ".sp" -type "double3" 0 8 0 ;
createNode mesh -n "cone_Shape5" -p "|cone_13|cone_2|cone_3|cone_4|cone_5";
	rename -uid "A89E65CF-4B19-3163-EBB7-45BFB47C4CE4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 8 0 0 8 0 0 8 0 0 8 0 0 
		8 0 0 8 0 0 8 0 0 8 0 0 8 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_6" -p "|cone_13|cone_2|cone_3|cone_4|cone_5";
	rename -uid "98D99414-4A77-CF9D-FE85-FB921B1BE4BB";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 10 0 ;
	setAttr ".sp" -type "double3" 0 10 0 ;
createNode mesh -n "cone_Shape6" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6";
	rename -uid "717D00C0-41A3-D23D-78BC-F380D73834E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 10 0 0 10 0 0 10 0 0 10 
		0 0 10 0 0 10 0 0 10 0 0 10 0 0 10 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_7" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6";
	rename -uid "AEB6A1F2-42E3-9DB4-AA05-E8A2708E09CC";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 12 0 ;
	setAttr ".sp" -type "double3" 0 12 0 ;
createNode mesh -n "cone_Shape7" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7";
	rename -uid "3A5D6C4A-4660-523E-6CE1-8DBD3E8498EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 12 0 0 12 0 0 12 0 0 12 
		0 0 12 0 0 12 0 0 12 0 0 12 0 0 12 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_8" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7";
	rename -uid "52229FF0-47F5-F50B-CBDC-76AC6141D1B9";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 14 0 ;
	setAttr ".sp" -type "double3" 0 14 0 ;
createNode mesh -n "cone_Shape8" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8";
	rename -uid "861CC2C5-46D6-187C-EC21-CFA4FEFB2CD7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 14 0 0 14 0 0 14 0 0 14 
		0 0 14 0 0 14 0 0 14 0 0 14 0 0 14 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_9" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8";
	rename -uid "135D2727-401E-1720-0824-BF814C6B0DD8";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 16 0 ;
	setAttr ".sp" -type "double3" 0 16 0 ;
createNode mesh -n "cone_Shape9" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9";
	rename -uid "3560A14A-4AA7-2704-12E2-2C8929E10DC5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 16 0 0 16 0 0 16 0 0 16 
		0 0 16 0 0 16 0 0 16 0 0 16 0 0 16 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_10" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9";
	rename -uid "D4FD584E-4178-C869-A128-F6828E74CBB1";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 18 0 ;
	setAttr ".sp" -type "double3" 0 18 0 ;
createNode mesh -n "cone_Shape10" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10";
	rename -uid "F9B7372D-4F0E-9A24-6912-EAA37ECD2711";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 18 0 0 18 0 0 18 0 0 18 
		0 0 18 0 0 18 0 0 18 0 0 18 0 0 18 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aim_for_last_object" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10";
	rename -uid "89AA41F3-4D24-5BB4-603C-2AB05269B3D1";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 20 2.6415697902848478e-05 ;
	setAttr ".sp" -type "double3" 0 20 2.6415697902848478e-05 ;
createNode locator -n "aim_for_last_objectShape" -p "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object";
	rename -uid "97B99749-4F68-A751-D76B-75AC20D0E343";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 20 2.6415697902848478e-05 ;
createNode transform -n "cone_14";
	rename -uid "9E3B489B-4D0F-3BE1-A8C1-ABB21D89E91B";
	setAttr -k off -cb on ".v" no;
	setAttr ".t" -type "double3" 0 -22.861269181177711 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode mesh -n "cone_Shape14" -p "cone_14";
	rename -uid "2EA012E6-4608-E003-0074-EFA3CDEF964F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_2" -p "cone_14";
	rename -uid "5F7A0E0B-46B2-7A8F-0EA5-3DB9F931EABF";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 1.0952191854055648 -1.7836400078328112 ;
	setAttr ".r" -type "double3" 63.102846258696474 0 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -1.0952191854055651 1.7836400078328112 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "cone_Shape2" -p "|cone_14|cone_2";
	rename -uid "88E24331-481C-D31A-237C-E08B6F6AEDD0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 2 0 0 2 0 0 2 0 0 2 0 0 
		2 0 0 2 0 0 2 0 0 2 0 0 2 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_3" -p "|cone_14|cone_2";
	rename -uid "EBFEE9DC-4ED9-0EC8-3DD0-21B197007780";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 2.662634067168959 2.2090238839456191 ;
	setAttr ".r" -type "double3" -86.529381341717453 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 3.9999999999999991 0 ;
	setAttr ".rpt" -type "double3" 0 -3.7578532525745243 -3.9926638917784274 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
	setAttr ".spt" -type "double3" 0 -8.8817841970012504e-16 0 ;
createNode mesh -n "cone_Shape3" -p "|cone_14|cone_2|cone_3";
	rename -uid "77C59DAE-4DE2-61FC-DDC5-8CA8C105AAF8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 4 0 0 4 0 0 4 0 0 4 0 0 
		4 0 0 4 0 0 4 0 0 4 0 0 4 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_4" -p "|cone_14|cone_2|cone_3";
	rename -uid "80898F3F-4843-B89F-B400-F18E19C1597F";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0.29002655378742404 -0.79870997240617747 ;
	setAttr ".r" -type "double3" 23.426535083020973 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 6.0000000000000018 0 ;
	setAttr ".rpt" -type "double3" 0 -0.49457641005564373 2.3854372964478072 ;
	setAttr ".sp" -type "double3" 0 6 0 ;
	setAttr ".spt" -type "double3" 0 1.7763568394002509e-15 0 ;
createNode mesh -n "cone_Shape4" -p "|cone_14|cone_2|cone_3|cone_4";
	rename -uid "874A865C-400C-75B2-4830-E19B944E365E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 6 0 0 6 0 0 6 0 0 6 0 0 
		6 0 0 6 0 0 6 0 0 6 0 0 6 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_5" -p "|cone_14|cone_2|cone_3|cone_4";
	rename -uid "18147F4E-4DC3-3132-2777-D8848056E4DB";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 22.582977162189106 -0.74211205063628505 ;
	setAttr ".r" -type "double3" 37.172019066267083 0 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 -14.861269181177711 0 ;
	setAttr ".sp" -type "double3" 0 -14.861269181177711 0 ;
createNode mesh -n "cone_Shape5" -p "|cone_14|cone_2|cone_3|cone_4|cone_5";
	rename -uid "6012670E-4FA2-24E8-7FD8-618A551F3CDE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.10274842 -15.131386 0.18636504 
		0.22950611 -14.917734 0.028332004 0.22182225 -14.671007 -0.14629753 0.084197909 -14.535732 
		-0.23522796 -0.10274842 -14.591154 -0.18636504 -0.22950612 -14.804804 -0.028332006 
		-0.22182226 -15.051533 0.14629754 -0.084197916 -15.186806 0.23522799 0.65919191 -14.973585 
		0.046004742;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_15" -p "|cone_14|cone_2|cone_3|cone_4|cone_5";
	rename -uid "DF3E1713-412D-FED6-6916-6A8AF4176B6D";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -22.536595159024337 0.74211205063628505 ;
	setAttr ".r" -type "double3" 4.7343379671128609 0 0 ;
	setAttr ".s" -type "double3" 0.79171088942746803 0.79171088942746803 0.79171088942746803 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 10 0 ;
	setAttr ".sp" -type "double3" 0 10 0 ;
createNode mesh -n "cone_Shape15" -p "cone_15";
	rename -uid "2343F791-493D-EFBD-0A4D-5BA61DE4EA56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 10 0 0 10 0 0 10 0 0 10 
		0 0 10 0 0 10 0 0 10 0 0 10 0 0 10 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_16" -p "cone_15";
	rename -uid "469847CB-40CD-2893-A89A-50BEB1504487";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0.51957062476598637 9.9117878480975836 ;
	setAttr ".r" -type "double3" 12.081548675708701 0 0 ;
	setAttr ".s" -type "double3" 1.2630873382620238 1.2630873382620236 1.2630873382620236 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 15.157048059144284 0 ;
	setAttr ".rpt" -type "double3" 0 -5.1856819224834503 -11.415251343525602 ;
	setAttr ".sp" -type "double3" 0 12 0 ;
	setAttr ".spt" -type "double3" 0 3.1570480591442833 0 ;
createNode mesh -n "cone_Shape16" -p "cone_16";
	rename -uid "84042D16-4D1C-7252-A63E-108CB336678E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 12 0 0 12 0 0 12 0 0 12 
		0 0 12 0 0 12 0 0 12 0 0 12 0 0 12 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_8" -p "cone_16";
	rename -uid "97185E67-4E92-324C-BEB2-DC9D1556E3F0";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -0.15148643254703131 -1.4423473892920082 ;
	setAttr ".r" -type "double3" 20.505533284467379 0 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 14 0 ;
	setAttr ".rpt" -type "double3" 0 -0.2058983876523198 2.3922292340465905 ;
	setAttr ".sp" -type "double3" 0 14 0 ;
createNode mesh -n "cone_Shape8" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8";
	rename -uid "882A5286-4F9C-22D8-C6D0-5CA42897787E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 14 0 0 14 0 0 14 0 0 14 
		0 0 14 0 0 14 0 0 14 0 0 14 0 0 14 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_9" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8";
	rename -uid "5CF08AF3-442D-6232-63C5-FCAB0F53E10D";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 23.667760340285412 1.2364034528709968 ;
	setAttr ".r" -type "double3" 35.596577585222526 0 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 -7.8816732508025691 -0.60296604114198171 ;
	setAttr ".rpt" -type "double3" 0 0.18894717396403171 -1.2153592284166619 ;
	setAttr ".sp" -type "double3" 0 -7.8816732508025691 -0.60296604114198171 ;
createNode mesh -n "cone_Shape9" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9";
	rename -uid "036FDDC7-4A55-2C89-4325-5C99A95DC665";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.14296168 -8.1461449 -0.35131368 
		0.26668844 -8.0705719 -0.54805595 0.23419273 -7.8843441 -0.77696377 0.064510085 -7.6965523 
		-0.9039461 -0.14296168 -7.6172028 -0.85461837 -0.26668847 -7.6927757 -0.65787613 
		-0.23419274 -7.8790016 -0.42896831 -0.064510092 -8.0667934 -0.30198595 0.4636201 
		-7.9528942 -0.857651;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "cone_10" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9";
	rename -uid "D272729F-4A4B-5F26-A754-03B3D05D65D3";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -24.159965269791179 0.18552801265907126 ;
	setAttr ".r" -type "double3" -19.202210456019539 0 0 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 18 0 ;
	setAttr ".sp" -type "double3" 0 18 0 ;
createNode mesh -n "cone_Shape10" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9|cone_10";
	rename -uid "5CC7243D-48F8-F4AA-0E32-09B97ABF5F7E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 18 0 0 18 0 0 18 0 0 18 
		0 0 18 0 0 18 0 0 18 0 0 18 0 0 18 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 0 -0.70710671 0 0 -0.99999988
		 -0.70710671 0 -0.70710671 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994
		 0.70710677 0 0.70710677 1 0 0 0 2 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aim_for_last_object" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9|cone_10";
	rename -uid "04C3A562-4B20-E70C-B551-7D97B36FD984";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.8918614229780228 1.1669072353625474 2.6362355043496981 ;
	setAttr ".r" -type "double3" -9.2725685119711798 2.7231182613652587 -13.258248740882001 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 19.999999999999996 2.6415697902848472e-05 ;
	setAttr ".rpt" -type "double3" 4.3778521787415761 -0.75233267320685981 -3.218987859841862 ;
	setAttr ".sp" -type "double3" 0 20 2.6415697902848478e-05 ;
	setAttr ".spt" -type "double3" 0 -3.5527136788005005e-15 -6.776263578034402e-21 ;
createNode locator -n "aim_for_last_objectShape" -p "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9|cone_10|aim_for_last_object";
	rename -uid "289F2833-44CB-C7F1-25B1-6990C11A3B57";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 20 2.6415697902848478e-05 ;
createNode transform -n "pCube1";
	rename -uid "8EE07B1A-47B4-BF14-E837-6BA4992929ED";
	setAttr -k off -cb on ".v" no;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "2596F436-4B8B-0BC5-522D-A79369857EA0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7" -p "pCube1";
	rename -uid "8AFA8637-4544-E4D4-9E36-4A9D0D591408";
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "38B93460-42CF-AF84-2DA7-6A83CD306DB7";
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
createNode transform -n "pCube8" -p "pCube7";
	rename -uid "A97B3040-4F49-E88E-02F1-5C8FDE90369C";
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "CA0BFE4A-47B4-2810-AB83-889956E48608";
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
createNode transform -n "pCube9" -p "pCube8";
	rename -uid "CA85CBE0-49D2-BABB-A096-EFBBA3AC6B78";
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "D765BB1F-4ED8-E353-51D4-BEB72CF39203";
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
createNode transform -n "pCube10" -p "pCube9";
	rename -uid "0B6F900F-40EB-FC61-E13E-DF9FEE570D59";
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "FA0C1C35-45BD-A726-65D6-02848370EEE3";
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
createNode transform -n "pCube11" -p "pCube10";
	rename -uid "72BBFA47-4AAE-DA8A-E9C3-E1B4037597AD";
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "54E34712-4543-3A41-F93E-5CB63BDD3390";
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
createNode transform -n "pCube21";
	rename -uid "EF4F8D86-4433-D5C6-9686-438EE3A09E95";
	setAttr -k off -cb on ".v" no;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "498F450B-43D3-537A-4F5F-9B8DDEB125B2";
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
createNode transform -n "pCube22" -p "pCube21";
	rename -uid "0E5CB979-4F3A-4B20-0201-5EADD1E33546";
createNode mesh -n "pCubeShape22" -p "|pCube21|pCube22";
	rename -uid "C2169AC4-434D-0F13-36C6-29AC79E6993F";
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
createNode transform -n "pCube20" -p "|pCube21|pCube22";
	rename -uid "3707E085-4C08-9D20-9CDE-E3A03C010AF9";
createNode mesh -n "pCubeShape20" -p "|pCube21|pCube22|pCube20";
	rename -uid "BBF0A8AA-420E-3642-A8E0-CA83AC9210F0";
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
createNode transform -n "pCube19" -p "|pCube21|pCube22|pCube20";
	rename -uid "57D4DB9B-4953-BF83-2006-838C7DC0312B";
createNode mesh -n "pCubeShape19" -p "|pCube21|pCube22|pCube20|pCube19";
	rename -uid "4544F6BB-4307-64F0-9DD6-F7A06B7C0125";
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
createNode transform -n "pCube18" -p "|pCube21|pCube22|pCube20|pCube19";
	rename -uid "18BF7156-43CD-61E7-40ED-429712155FFA";
createNode mesh -n "pCubeShape18" -p "|pCube21|pCube22|pCube20|pCube19|pCube18";
	rename -uid "C67C78E8-4C5C-B93A-729C-D6BD14D74643";
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
createNode transform -n "pCube17" -p "|pCube21|pCube22|pCube20|pCube19|pCube18";
	rename -uid "042AB837-487F-B6A5-C57A-6E9D52E28D06";
createNode mesh -n "pCubeShape17" -p "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17";
	rename -uid "89D6C02E-4EAA-1339-7109-F6860247BEDA";
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
createNode transform -n "locator1" -p "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17";
	rename -uid "04D227B7-4A0C-E2BC-D5F8-4B9367BD2F68";
	setAttr -k off -cb on ".v";
createNode locator -n "locatorShape1" -p "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1";
	rename -uid "2B9C2F7D-4F42-CE17-D6B9-61BECEE16816";
	setAttr -k off ".v";
createNode transform -n "pCube26";
	rename -uid "244564C6-4B66-9F0C-1CF9-E1B6311C3812";
	setAttr -k off -cb on ".v";
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "FF7AAE5F-479B-F8B3-614C-C983D655AB9D";
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
createNode transform -n "pCube25" -p "pCube26";
	rename -uid "A94439B9-4417-A4CB-FABC-209DD6C726E4";
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "3322BB1A-4CA7-300D-1E6F-ADBE120B1891";
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
createNode transform -n "pCube23" -p "pCube25";
	rename -uid "1F8EA678-41B9-AE65-3B40-7F814AE47CF3";
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "312D6769-41F4-B51C-B433-DBB13D293186";
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
createNode transform -n "pCube24" -p "pCube23";
	rename -uid "F0C9636C-48D7-71D7-5DFB-00BAA74FB0D7";
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "E69F3C10-44CF-18E3-F53F-2C86C90754A7";
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
createNode transform -n "pCube28" -p "pCube24";
	rename -uid "F12D185A-475A-E0A9-C0E2-54957505DBA9";
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "8E6CB788-4B5D-FE1B-360A-FF99F35E0839";
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
createNode transform -n "pCube27" -p "pCube28";
	rename -uid "E1A36E71-4F5C-6611-391C-1F8E9F11C316";
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "B4EE331C-414C-3957-160C-82A666EA522E";
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
createNode joint -n "joint14";
	rename -uid "9984F642-4784-C368-453B-EABCCA81EB28";
	setAttr -av ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint2" -p "joint14";
	rename -uid "14DFEEA9-4D87-B227-575B-89B17AADDFD6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint3" -p "|joint14|joint2";
	rename -uid "084CC304-4C48-2D94-D363-CB9816B08DDA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint4" -p "|joint14|joint2|joint3";
	rename -uid "B2AB05A9-4E91-80A9-789A-B7B6AE949C3E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint5" -p "|joint14|joint2|joint3|joint4";
	rename -uid "6BCAED15-4A8D-30B3-CB36-269064C78C1F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint6" -p "|joint14|joint2|joint3|joint4|joint5";
	rename -uid "ECB0DE44-474E-0064-FD97-8A911C93980B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint7" -p "|joint14|joint2|joint3|joint4|joint5|joint6";
	rename -uid "8F195619-4E72-831C-F32C-ACA7C4AAA91A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint8" -p "|joint14|joint2|joint3|joint4|joint5|joint6|joint7";
	rename -uid "85563392-467F-12BF-6158-AC92FE366358";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint9" -p "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8";
	rename -uid "8A2DD6E8-4BC6-D03F-A37E-BDAA6A5BE4C3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint10" -p "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9";
	rename -uid "D6DEAB01-4386-8F66-0A28-4691AB1FDC47";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint11" -p "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10";
	rename -uid "56D55E94-4C27-C1A6-6283-E0852A197B93";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint12" -p "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11";
	rename -uid "B6F6F9E0-48F2-5B1F-E34D-59B7FE46C129";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint13";
	rename -uid "ED774150-4D68-2D8A-35FF-A0845D0CBB3B";
	setAttr -av ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint2" -p "joint13";
	rename -uid "F163EDB0-47E5-25FC-1E9C-00B8BCC2FDAC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint3" -p "|joint13|joint2";
	rename -uid "DE988EB3-434D-12AA-A27B-83A6A7BAFB95";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint4" -p "|joint13|joint2|joint3";
	rename -uid "94C1662A-4D8F-8460-D333-03BC447DFBCF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint5" -p "|joint13|joint2|joint3|joint4";
	rename -uid "7A62AB5F-491B-B0EF-3732-73B741CBFFFE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint6" -p "|joint13|joint2|joint3|joint4|joint5";
	rename -uid "CCC62D9B-4B36-D5EF-CB65-C39871398A49";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint7" -p "|joint13|joint2|joint3|joint4|joint5|joint6";
	rename -uid "E7529A7A-4695-3545-BC27-7ABC5CB37DE1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint8" -p "|joint13|joint2|joint3|joint4|joint5|joint6|joint7";
	rename -uid "08F866C4-4A61-31FF-738C-499E054B4021";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint9" -p "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8";
	rename -uid "49063DEB-4513-1C33-5A3D-B3BA12450646";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint10" -p "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9";
	rename -uid "76BBED02-43B7-1165-0743-DB9428B3D06E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint11" -p "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10";
	rename -uid "7F75AF3F-488D-B74B-A156-D39BBC3C7574";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint12" -p "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11";
	rename -uid "FD443682-4A7F-6C26-5E22-60B75A7C9AA7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -6.3611093629270335e-15 -89.999999999999957 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint1";
	rename -uid "E119BAAD-4D8B-EEE0-40B9-9A800E6138A6";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint2" -p "joint1";
	rename -uid "9F244D5F-4F01-237A-A250-E997F6C8E9ED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint3" -p "|joint1|joint2";
	rename -uid "3ACE9429-4F5C-AFEC-6037-E59A68A36C8E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint4" -p "|joint1|joint2|joint3";
	rename -uid "338EAD13-474B-351D-0BB7-FBB1CAAA84AA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint5" -p "|joint1|joint2|joint3|joint4";
	rename -uid "D1DEA600-4438-47FD-C680-43A8E6EBB382";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint6" -p "|joint1|joint2|joint3|joint4|joint5";
	rename -uid "A8409275-4BDB-B857-A101-A48C1AA98544";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint7" -p "|joint1|joint2|joint3|joint4|joint5|joint6";
	rename -uid "19304EBB-4AA9-8F9B-2BA4-868D41A51E28";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint8" -p "|joint1|joint2|joint3|joint4|joint5|joint6|joint7";
	rename -uid "CF30965E-4C9A-31AB-9AF9-09901129B303";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint9" -p "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8";
	rename -uid "A8C2A922-4284-D6A0-E387-58AEDA1FC6A0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint10" -p "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9";
	rename -uid "49BD2DAD-4B17-885E-B76F-E191023AB6F1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint11" -p "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10";
	rename -uid "F74F00E1-4C9D-5C08-3695-79970448D6B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "joint12" -p "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11";
	rename -uid "4AC52FAA-4AB7-19E8-A9A5-EA9BAE4FC3D1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
	setAttr ".radi" 0.55172413793103448;
createNode transform -n "pCube29";
	rename -uid "35A09E24-40C0-5786-20E7-5BB3DB498B3C";
	setAttr -k off -cb on ".v" no;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "B194EA2D-4CC8-68D0-CC20-EE9AB8DA251A";
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
createNode transform -n "pCube22" -p "pCube29";
	rename -uid "E5EA1899-4A60-9CA6-0FAB-A29EDFD7C547";
createNode mesh -n "pCubeShape22" -p "|pCube29|pCube22";
	rename -uid "9A25AF1D-4885-7EB4-C8D6-158039478308";
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
createNode transform -n "pCube20" -p "|pCube29|pCube22";
	rename -uid "E9846743-4BE9-D994-2C13-C4B90293191E";
createNode mesh -n "pCubeShape20" -p "|pCube29|pCube22|pCube20";
	rename -uid "A039EFE8-47FE-ADEE-AEA6-FBAB5D2828B4";
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
createNode transform -n "pCube19" -p "|pCube29|pCube22|pCube20";
	rename -uid "742C0331-4674-76E3-ED1E-0788FD1619F1";
createNode mesh -n "pCubeShape19" -p "|pCube29|pCube22|pCube20|pCube19";
	rename -uid "D9CD834D-4FDD-F213-FB86-F785AC97013D";
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
createNode transform -n "pCube18" -p "|pCube29|pCube22|pCube20|pCube19";
	rename -uid "770B8114-4475-5AD0-C39A-F684E5A6E6E2";
createNode mesh -n "pCubeShape18" -p "|pCube29|pCube22|pCube20|pCube19|pCube18";
	rename -uid "9E513E55-4A0F-0165-E6A7-C7BC9BC59233";
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
createNode transform -n "pCube17" -p "|pCube29|pCube22|pCube20|pCube19|pCube18";
	rename -uid "F44489CB-4421-7381-3FAE-F985AF70251F";
createNode mesh -n "pCubeShape17" -p "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17";
	rename -uid "414A2E65-4DBB-C216-BA1E-5EA53AB8C45C";
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
createNode transform -n "locator1" -p "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17";
	rename -uid "994A5158-42D6-D4CB-3E17-F392D097343A";
	setAttr -k off -cb on ".v";
createNode locator -n "locatorShape1" -p "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1";
	rename -uid "F7B72523-4A29-4BD8-E6B6-45B7BC10E535";
	setAttr -k off ".v";
createNode transform -n "pCube30";
	rename -uid "406001D8-4166-6CE8-DFEE-E38118BF3FF7";
	setAttr -k off -cb on ".v" no;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "BEC6F8E1-40CB-09BE-1011-2EB6D287EADF";
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
createNode transform -n "pCube22" -p "pCube30";
	rename -uid "E34E008F-4F41-9D0A-153A-2B91EE75DDAA";
createNode mesh -n "pCubeShape22" -p "|pCube30|pCube22";
	rename -uid "9633B87C-40B0-7BBA-A027-5EB5C659E6A2";
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
createNode transform -n "pCube20" -p "|pCube30|pCube22";
	rename -uid "96FC86F6-4F80-883A-818D-338BA1A4BE4A";
createNode mesh -n "pCubeShape20" -p "|pCube30|pCube22|pCube20";
	rename -uid "848280A1-40AC-5335-F1E3-0AB84C3E2290";
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
createNode transform -n "pCube19" -p "|pCube30|pCube22|pCube20";
	rename -uid "56B134E2-49B3-BADB-0D21-9AB565C58FEB";
createNode mesh -n "pCubeShape19" -p "|pCube30|pCube22|pCube20|pCube19";
	rename -uid "4CFE5DEE-4CCF-B37C-4FF3-A3861BB3DEC6";
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
createNode transform -n "pCube18" -p "|pCube30|pCube22|pCube20|pCube19";
	rename -uid "F2CB94E2-4D33-4D3C-4A79-5684BB04CD09";
createNode mesh -n "pCubeShape18" -p "|pCube30|pCube22|pCube20|pCube19|pCube18";
	rename -uid "CAAD079B-485C-09C8-60C4-29845928500F";
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
createNode transform -n "pCube17" -p "|pCube30|pCube22|pCube20|pCube19|pCube18";
	rename -uid "A559E202-436F-68E6-639E-0EB2D6FAFB45";
createNode mesh -n "pCubeShape17" -p "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17";
	rename -uid "58F50819-4B54-5668-26D7-F597F672839B";
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
createNode transform -n "locator1" -p "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17";
	rename -uid "B7C7FEAD-479F-824D-44FB-48B470C03B71";
	setAttr -k off -cb on ".v";
createNode locator -n "locatorShape1" -p "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1";
	rename -uid "C20F838F-4465-3D14-43BF-93A7BA006DAE";
	setAttr -k off ".v";
createNode transform -n "pCube31";
	rename -uid "66AA698E-4942-CE55-72F5-7089141213CA";
	setAttr ".t" -type "double3" 0 0 1.0427094293531349 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "0404E7C4-4045-920D-FCCD-4D8B3493C4FC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube32";
	rename -uid "9889EF02-4798-71B0-4BF7-E2BCB9364F76";
	setAttr ".t" -type "double3" 0 0 3.6027827035235438 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "B5B837B2-4CB5-290E-18B3-AC815B4E3F6B";
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
createNode transform -n "pCube33";
	rename -uid "5A18E7EE-4663-ADE8-7183-1A84147502EF";
	setAttr ".t" -type "double3" 0 0 5.9467745234780862 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "CCB88FCB-4FE7-0CAB-E145-4A8CB780FA07";
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
	rename -uid "BA354EE9-458F-5262-370F-ACB14BA8A192";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EDF6A104-45FA-DABD-E7A0-558D2AFF5A3F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9DA4C9E8-43EC-0A01-C884-2BA0439F055F";
createNode displayLayerManager -n "layerManager";
	rename -uid "3788123A-40BE-31BC-4888-88B8C53F32D9";
createNode displayLayer -n "defaultLayer";
	rename -uid "1933A215-4CF9-92BA-91E1-E8992F553721";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4E371E6C-4479-7F42-7DC8-AF94FFBB5A31";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BDC8FABC-43CE-BFAE-B4E3-608F93DF2EF1";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "35EA2849-45E5-AD7A-5B29-8E910F1A548D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 571\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1519\n            -height 1189\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 570\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 571\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1519\\n    -height 1189\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1519\\n    -height 1189\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3B95DE4C-4D4F-1BDE-2751-4A9DB3BBD090";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode animCurveTL -n "cone_1_translateX";
	rename -uid "E074C012-438C-DE71-BE2A-CB989504E004";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 9.6 0 27.2 0 39.2 0 52.8 0 68 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_1_translateY";
	rename -uid "8E066BD4-43D4-1185-CFF1-23818D3168C9";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 9.6 0 27.2 0 39.2 0 52.8 0 68 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_1_translateZ";
	rename -uid "BC0B300C-448B-B048-5318-66BD8AB9A76E";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 9.6 0 27.2 0 39.2 0 52.8 0 68 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_1_rotateX";
	rename -uid "D279CBD7-4168-8667-C46B-7D92DE783E22";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 9.6 -43.659120575899337 13 -43.659120575899337
		 25 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_1_rotateY";
	rename -uid "BA1A6215-4163-C469-2A74-0484376CB9E3";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 9.6 0 27.2 0 39.2 0 52.8 0 68 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_1_rotateZ";
	rename -uid "7B893CA2-40FB-D40B-A710-38B087CC7934";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 25 0 39 -55.81101485767207 43 -55.81101485767207
		 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_1_scaleX";
	rename -uid "A31425BC-42EA-8D76-5AD3-E2B5F87F6066";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 9.6 1 27.2 1 39.2 1 52.8 1 68 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_1_scaleY";
	rename -uid "DE109BE2-4EED-E16C-7EBC-ED84DF58E6EA";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 9.6 1 27.2 1 39.2 1 52.8 1 68 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_1_scaleZ";
	rename -uid "10B12811-4E27-FD95-CC96-3DB331DA5628";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 9.6 1 27.2 1 39.2 1 52.8 1 68 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode shadingEngine -n "nParticlePointsSE";
	rename -uid "32955BA4-46DE-8BC7-1556-208E65B531E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "ABB69022-4DBA-C28B-9456-D89F5D098139";
createNode particleSamplerInfo -n "particleSamplerInfo1";
	rename -uid "BBF5B36A-4A33-1803-3E56-00ABE53B5E2D";
createNode blinn -n "npPointsBlinn";
	rename -uid "E2327432-4656-FE71-A2B3-B0A933EF8940";
createNode particleCloud -n "npPointsVolume";
	rename -uid "2EDDEF49-49B4-B0A8-C70D-E095BAE3BD7B";
createNode animCurveTU -n "cone_2_visibility";
	rename -uid "049AF630-4B3D-56D8-3D2C-5C95012DC481";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateX";
	rename -uid "ED9B0FD9-495B-EAA5-A4F1-00B1658C68A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateY";
	rename -uid "CEFA6918-469D-B2C5-5C17-C0B11AD6BE97";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 96 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateZ";
	rename -uid "9C3DA2C3-46D6-D326-33F3-EC87D3FF503F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateX";
	rename -uid "B595F81F-44AC-ED6C-39C1-358D96DB9E54";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateY";
	rename -uid "60409B17-429A-E1C1-CB7B-E083F15BF1DD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateZ";
	rename -uid "EB88EF74-42D5-B05C-CCEC-B596C27D556D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleX";
	rename -uid "4C6635D7-4EEB-4DEE-8CD1-28AFE5328438";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleY";
	rename -uid "206FA960-4627-BA25-9A4C-5591D314EB19";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleZ";
	rename -uid "DB7589AC-41B1-4F92-0F3A-B09EC13336FE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_visibility";
	rename -uid "7BE2182A-4CD7-0D86-A63B-858288DF11D6";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateX";
	rename -uid "E08AA897-4BB7-FC71-36B3-60B516A1E1B9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateY";
	rename -uid "9820B9B1-4A5F-1903-009D-7A89BC115711";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 96 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateZ";
	rename -uid "C1E2A2AD-4E7B-C290-EB6B-92B744D2052B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateX";
	rename -uid "35A419DC-40A0-E80F-3B93-BC8D04CDAEC7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateY";
	rename -uid "4B960390-4458-981E-7C1B-B5B446A1AC2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateZ";
	rename -uid "E040E2BB-48E8-DB79-A623-EBA55963D605";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleX";
	rename -uid "FF11B293-49BF-FF06-3437-728188FDD9F6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleY";
	rename -uid "B820A970-4EC9-C19B-C336-A9883B9539E8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleZ";
	rename -uid "1165ECCD-4034-AC09-A51E-B1B5B6620E78";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_visibility";
	rename -uid "F69904C1-4C8D-8C89-9033-B696B62CBCB0";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateX";
	rename -uid "33BC79FD-4123-935B-5594-7C91AB5F62B6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateY";
	rename -uid "69A29F1C-427C-A91B-F864-8BBEB4BE1F36";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 96 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateZ";
	rename -uid "8D61341D-4BA8-FD3B-51C3-9F80CE2C8CBE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateX";
	rename -uid "2014A8CE-48C0-720C-4ECE-E3BB706662F3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateY";
	rename -uid "6FD94EDB-4DC6-6B7C-8447-E8AC50E43287";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateZ";
	rename -uid "EBDC6B53-4ED6-7374-D33B-328AE9B0BCDE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleX";
	rename -uid "80CC3C41-4157-1045-2774-01A8F2EC3EDF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleY";
	rename -uid "16B8D417-4DF3-4687-461D-AF8B56F4B961";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleZ";
	rename -uid "B338AABF-4651-8349-6A74-F8859BEC8E5B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_visibility";
	rename -uid "56F86C66-4FCF-745D-F88D-61B77BBF3C34";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateX";
	rename -uid "7BE54EAE-4D7E-870F-6B38-4EAA80E66A6D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateY";
	rename -uid "314AC7B5-44C8-6638-BCD2-278F58A1A8F4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 96 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateZ";
	rename -uid "3EBE81BC-47D9-C1AE-AB5D-E29357E12108";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateX";
	rename -uid "A926A6CA-4565-DC2A-48B6-36AF6371EB2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateY";
	rename -uid "C5B31681-4F2C-934F-EEB1-4D9C05E0800A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateZ";
	rename -uid "50389FDB-4F9B-D0DF-F3CB-FA96B8B47191";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleX";
	rename -uid "EB489643-42D3-0BB5-D0E4-8BB7ED0EC9C2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleY";
	rename -uid "53588195-4E8B-5AE2-0B72-A4957685E487";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleZ";
	rename -uid "086F0FAB-454C-3854-30A3-3998B9E039C5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animLayer -n "BaseAnimation";
	rename -uid "4C498708-4FDF-B4CB-2086-2FA13F86EA34";
	setAttr ".ovrd" yes;
createNode animCurveTL -n "aim_for_last_object_translateY";
	rename -uid "76FFFCEA-43E8-C649-873D-B29347A96AC3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 96 2;
createNode animCurveTU -n "cone_1_blendParent1";
	rename -uid "4CCABEE1-4E1C-B72B-0C29-B28EF65D83B1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_blendParent1";
	rename -uid "24086894-4D13-7557-9DED-ACA8219AA7E8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_blendParent1";
	rename -uid "7A4BC1C8-4821-E8D6-838B-3B95E0D977B1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_blendParent1";
	rename -uid "EE182AF9-481E-5BF5-F4E5-29B27058B6DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_blendParent1";
	rename -uid "B75DCCD9-4E86-DD8C-B63A-A09723ED4C3A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_visibility";
	rename -uid "8B810E17-4D45-3475-70DA-538D7D98D4BA";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "aim_for_last_object_translateX";
	rename -uid "8CEEF3D4-4326-87FD-0A77-3FB70F431E76";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
createNode animCurveTL -n "aim_for_last_object_translateZ";
	rename -uid "6D196AA9-4BE6-5EFC-A54F-6B87A7D3F271";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2.6415697902848478e-05 96 2.6415697902848478e-05;
createNode animCurveTA -n "aim_for_last_object_rotateX";
	rename -uid "96216DFA-42AB-CC67-2388-D2961C2901A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateY";
	rename -uid "6790CB83-4D90-D9ED-2F0C-97BADE7B2351";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateZ";
	rename -uid "92242E0B-4789-9E4B-062E-7E90CE8DFCB2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 96 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleX";
	rename -uid "60967637-45DF-5B21-C50A-E494ACA374DF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleY";
	rename -uid "6CE9520C-45D8-741F-B5E8-FC935B2CC5B4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleZ";
	rename -uid "D0A8C6E4-4BA1-73E3-13AF-8783E802CA36";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 96 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_blendParent2";
	rename -uid "219E44E0-4B29-A6E2-6856-15A26B2C8473";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "cone_5_blendParent2";
	rename -uid "22D9D353-4097-2C8C-3EEF-F38152DE04B4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "cone_6_rotateX";
	rename -uid "6A476A70-41BA-0CAB-43B0-E9B2C1476DEF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 45 30 -45 60 45;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_visibility1";
	rename -uid "C55C832F-4D41-DB44-4378-418D646E486A";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateX1";
	rename -uid "9477CD7A-4B24-FF2A-7468-EEBD0F97E026";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateY1";
	rename -uid "BF706053-4B7C-D12D-9AFC-EF8F0E1F4530";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateZ1";
	rename -uid "0CBFFE60-44D1-C736-C0D7-DBB7B9300D20";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateX1";
	rename -uid "F66E12D5-4432-1065-03A9-B58663018D65";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateY1";
	rename -uid "0D1D46FD-4F12-FD61-7169-9CB5982A42FD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateZ1";
	rename -uid "7D33E31C-49A6-2484-8DBF-FE87C45EB56A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleX1";
	rename -uid "B1742E4C-48BE-F92F-9F2A-F7B26E3B9B5C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleY1";
	rename -uid "DDA3E557-4DA5-D20C-1EBF-4BA34CC043EB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleZ1";
	rename -uid "18CFDF5D-4692-FB5D-3D5F-BFBE2AA27060";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_visibility1";
	rename -uid "09111820-487A-E1F8-AD74-45B294EE9183";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateX1";
	rename -uid "7BAA92C8-439E-3C95-175C-D2921A9C2585";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateY1";
	rename -uid "3F827BF1-4E8F-FB49-8E64-949AB03B785B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateZ1";
	rename -uid "480EDED3-404D-BB2B-AA98-1EA66D29D625";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateX1";
	rename -uid "32B68B92-4055-C181-4E76-8E8EB88D1BDD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateY1";
	rename -uid "BFFE4290-4871-FEEB-E867-509C73AA0156";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateZ1";
	rename -uid "C253945F-46C4-2100-E1E0-EDAC7CF82A1A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleX1";
	rename -uid "FC7FBF5A-457F-0BA8-E5AF-888C6D8E29F7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleY1";
	rename -uid "E76B3D7E-4CF1-98BD-1A95-6492545B0654";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleZ1";
	rename -uid "804C3FDB-445E-312A-B99B-77B99149A949";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_visibility1";
	rename -uid "1D5191FA-4D66-0E7F-7665-009A2A740C4D";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateX1";
	rename -uid "1D9003A8-4167-50B0-EF7A-A894A01FF671";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateY1";
	rename -uid "AF261CA4-49AF-BF19-2F78-56A3C1D5BF71";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateZ1";
	rename -uid "7CE5AFF5-403B-20A3-BD31-948717AFBCA7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateX1";
	rename -uid "3387C3F9-43AB-6034-A463-11B5C67768E4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateY1";
	rename -uid "F7472964-430E-7DA4-3B15-98A56E10E6F1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateZ1";
	rename -uid "EF37097C-47EB-7EFE-EE05-A88C7A5113EC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleX1";
	rename -uid "643C8AAD-4A02-4ED2-40FC-DE833F9916A8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleY1";
	rename -uid "E65924AC-45CE-0378-BED8-E098698E2098";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleZ1";
	rename -uid "6CC19A93-4624-6BFB-004F-509C46308D4D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_visibility1";
	rename -uid "B4191A11-4D1A-7ED0-D8EC-23AAD84DE4C7";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateX1";
	rename -uid "171D330E-45C2-881E-8031-DC84249CA81E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateY1";
	rename -uid "2FD62E6E-48ED-8F26-1B19-ABAE093416F4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateZ1";
	rename -uid "CEF723F9-4561-A158-D8B6-0BAE7D595B71";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateX1";
	rename -uid "D1AFEFFA-4AD2-5962-DF12-59B0399824B0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateY1";
	rename -uid "AE7E24B4-4F7A-9487-8612-91B5BF52C554";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateZ1";
	rename -uid "59A7FA8C-4873-ADF4-A46A-05BD241CA5A4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleX1";
	rename -uid "BBB31E80-44AC-BEFC-20ED-D7863110C9BC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleY1";
	rename -uid "714871BB-4496-1BD2-985C-1EB0BE637679";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleZ1";
	rename -uid "9A27F39F-435F-5898-59C3-C2BEE1F06F92";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_visibility1";
	rename -uid "652B7E72-47D9-FE5F-A548-2B8322F06AB1";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "aim_for_last_object_translateX1";
	rename -uid "CCA6ADB4-4077-837C-ADC9-459BA971CF69";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTL -n "aim_for_last_object_translateY1";
	rename -uid "DEDD0F63-4F99-43DD-9D0C-859B5D191EBB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
createNode animCurveTL -n "aim_for_last_object_translateZ1";
	rename -uid "24B0E529-46CC-30DA-9146-98B0CBC4A1AE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2.6415697902848478e-05 24 2.6415697902848478e-05
		 48 2.6415697902848478e-05;
createNode animCurveTA -n "aim_for_last_object_rotateX1";
	rename -uid "17DDB639-4BDB-64E8-0DE7-04A7192DB5A9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateY1";
	rename -uid "F3E40C02-4B2B-FED8-9359-D5A64058D3A6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateZ1";
	rename -uid "06226A8E-4485-4AE8-AB00-F797357DE9DF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleX1";
	rename -uid "15E5A3D1-4BE9-7A7C-4364-DBA4FDF6D869";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleY1";
	rename -uid "9A9A9F30-47DC-E490-A711-A0885B5D8EC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleZ1";
	rename -uid "818DD2B2-4A40-9C32-6ACD-4D9F52C226B0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_6_rotateX1";
	rename -uid "A3C82086-4C05-3EC3-AFC7-90ACC16AE518";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 20 30 -20 60 20;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateX2";
	rename -uid "9FDED963-4CC0-AAB1-FA4F-B0B922D62DB7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_2_translateY2";
	rename -uid "0263AD49-470F-BCFB-B097-AA98F4C57D38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_2_translateZ2";
	rename -uid "E0A62E5E-405F-174D-CA05-0AB920334237";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_2_rotateX2";
	rename -uid "BC3C9A22-42B1-5B28-C732-7F98E5D32E8A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_2_rotateY2";
	rename -uid "D28AFBCB-4118-BEA3-8191-39B759F7D7B3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_2_rotateZ2";
	rename -uid "053C92DE-445C-9D88-4FC9-908F8FFFFA39";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_3_translateX2";
	rename -uid "28B37353-4E6F-6024-B721-E0A54BE71789";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_3_translateY2";
	rename -uid "E935602A-4E70-F443-E8E0-3594642CB13C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_3_translateZ2";
	rename -uid "89E0BBDC-40A6-162F-6C8C-3FB1665EAD67";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_3_rotateX2";
	rename -uid "83C30474-4306-033A-4FEE-45B85895AEB8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_3_rotateY2";
	rename -uid "1236A74D-4419-B234-3845-10AED7C732D6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_3_rotateZ2";
	rename -uid "67A8F823-4E93-8ABA-70E6-78881F086577";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_4_translateX2";
	rename -uid "35776081-4D32-FA86-5C24-A59DD59F3D53";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateY2";
	rename -uid "4A7B6457-4756-44C4-5962-448EFA67F0AE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateZ2";
	rename -uid "D7E0C2C5-4E45-3EC0-57CA-8A90A34727FD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateX2";
	rename -uid "C65BC67B-4DCF-04CE-DDC5-B0884FE9209A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_4_rotateY2";
	rename -uid "D1AD59F3-4A93-AAB2-2D97-7A9CD656E415";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTA -n "cone_4_rotateZ2";
	rename -uid "54490764-4709-81E6-1AB7-86901F35C8A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_5_translateX2";
	rename -uid "3C71DC07-4B17-A235-86F0-9F83C60A473F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateY2";
	rename -uid "7AD4D23C-4861-9042-CC86-D5916FE741AC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateZ2";
	rename -uid "4BF55BC5-4A72-D9A4-14E8-A098BB254B58";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateX2";
	rename -uid "E0DC8483-4386-49EF-D268-88B2260E8C14";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateY2";
	rename -uid "0CCFC798-429B-B621-F13A-D2B340DBA650";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateZ2";
	rename -uid "44C3C9A7-4660-ED2D-9EC8-F88EFA1D3D17";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "aim_for_last_object_translateX2";
	rename -uid "DC82AEFA-40D3-48ED-1DD0-5E968A878FB0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "aim_for_last_object_translateY2";
	rename -uid "55F2FD8B-4839-45C6-9FF4-8E9CE1689313";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "aim_for_last_object_translateZ2";
	rename -uid "1396E112-469D-F72D-4C5A-6AB0BC46946B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2.6415697902848478e-05 120 2.6415697902848478e-05;
createNode animCurveTA -n "aim_for_last_object_rotateX2";
	rename -uid "2DBD674B-4D1B-0A75-6510-C6AFB6AB2D78";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateY2";
	rename -uid "2E94FB40-4A62-FAD8-8FD1-8889D217E4AE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateZ2";
	rename -uid "B40458F4-4EA4-82E5-795A-A8B747BADDA3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_10_translateX";
	rename -uid "D2B77C57-4104-F0CD-D426-9ABE11F13127";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_10_translateY";
	rename -uid "1580FB0B-4BDC-59ED-11EC-2BB545989A75";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_10_translateZ";
	rename -uid "B1F44C66-47EC-5E64-5915-24B40C8AAD29";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_9_translateX";
	rename -uid "43DC65D6-409F-3184-7456-A6A9EC3C57C6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_9_translateY";
	rename -uid "1BC6895F-478D-28B5-32BB-A9BDDB49831B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_9_translateZ";
	rename -uid "2374DDF5-4595-152C-30B3-369E82A3DBB5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_8_translateX";
	rename -uid "46CC67A3-4638-0D7F-F5A7-2B99C2D5738A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_8_translateY";
	rename -uid "EAE20E65-4688-64F0-66DB-D0BC6419C90F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_8_translateZ";
	rename -uid "057214F9-4C5A-6CA4-62E9-C1B4E3FA299B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_7_translateX1";
	rename -uid "8266A5C1-467C-1D5D-3CBE-D49A7955CA4C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_7_translateY1";
	rename -uid "587450F3-4AAB-E0FC-D514-1D802A188BFD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_7_translateZ1";
	rename -uid "2BF95EF0-4B54-9335-4F7E-39A38FB6F6FD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_6_translateX";
	rename -uid "24BD9940-4617-99F3-EB74-378049AE47EF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode animCurveTL -n "cone_6_translateY";
	rename -uid "910C14D6-4967-57B8-3249-10914B54D2B5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 120 2;
createNode animCurveTL -n "cone_6_translateZ";
	rename -uid "AECB44BF-4796-1432-ABFB-2987BE91AD89";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "AF1D9729-4FD0-4E0B-99E4-C7AD439D2719";
	setAttr ".version" -type "string" "3.1.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "EFC7D56E-46BA-FDD6-B653-7EA5023F6F56";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "E0D21A7E-400E-A3D5-6D72-2283E1223C35";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "8885D0AA-4E48-C2DC-3F4F-2E96957DB560";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTU -n "cone_2_blendParent2";
	rename -uid "A9A1CD77-48AF-872D-0152-F9971B33FF52";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_2_blendParent3";
	rename -uid "A692810D-4ED4-CE34-9DA4-ABAA5A854591";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_2_blendParent4";
	rename -uid "0A561A77-4080-39F0-7E4C-9BBE7E675795";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_3_blendParent2";
	rename -uid "4293619B-4041-A960-93AD-23AC8761E68D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_3_blendParent3";
	rename -uid "DB78D0D3-4D47-5432-C2A8-94862724C753";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_3_blendParent4";
	rename -uid "10D053C6-4CE8-3AD3-F5BC-91965FE02C67";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_4_blendParent3";
	rename -uid "044DF01E-4123-1E18-8DA8-CF8455469500";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_blendParent4";
	rename -uid "1AD431DA-4DF6-0B1C-EC3D-899DB0D7C690";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_blendParent5";
	rename -uid "C4A461FF-4E37-97CF-AC83-84AB2DBFF551";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_blendParent3";
	rename -uid "3F7AD249-4635-F761-6ACB-5EAD45B0F343";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_5_blendParent4";
	rename -uid "2B1CFCEA-462E-FA59-563D-C08475F9B294";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_5_blendParent5";
	rename -uid "D072E98F-4146-516A-1D9C-E08470970508";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTA -n "cone_6_rotate_Merged_Layer3_inputAX";
	rename -uid "4D3C9E25-4A19-43D7-F5E9-2FA2DE1711A2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_6_rotate_Merged_Layer3_inputAY";
	rename -uid "6960F517-436D-5C58-E088-C199943F3BD3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_6_rotate_Merged_Layer3_inputAZ";
	rename -uid "E8526851-488C-9CBD-4BC8-66875F724C8C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_6_blendParent1";
	rename -uid "4DB05386-4981-3DA6-C26E-C0852C2392C2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_6_blendParent2";
	rename -uid "F9F314BC-48FB-BE87-6692-E19A55798443";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_6_blendParent3";
	rename -uid "C14A9FEC-43F9-8808-B02E-6984F1C22464";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTA -n "cone_7_rotate_Merged_Layer3_inputAX";
	rename -uid "85012BB9-4296-D7EB-1FF6-77AAE2BA99B8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_7_rotate_Merged_Layer3_inputAY";
	rename -uid "A8F21E3D-47A0-C4D1-9FBD-67AD03E63AB9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_7_rotate_Merged_Layer3_inputAZ";
	rename -uid "961E5A17-4F65-4057-BAE8-53B65F0FCAEF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_7_blendParent1";
	rename -uid "6877C857-4117-108D-1CED-698D3D68C510";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_7_blendParent2";
	rename -uid "D4724997-4250-57FE-1062-2F8DEE21612E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_7_blendParent3";
	rename -uid "5496DC87-48A1-A043-1C0A-80820A0353ED";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_8_rotate_Merged_Layer3_inputAX";
	rename -uid "A928CF23-47DC-F52A-482F-08ABAB5EB582";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_8_rotate_Merged_Layer3_inputAY";
	rename -uid "8103297B-4CD0-25A3-9424-FD8DA55C1DE1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_8_rotate_Merged_Layer3_inputAZ";
	rename -uid "2489864C-4FC7-E37C-C608-64B723FA19DC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_8_blendParent1";
	rename -uid "D53DE355-499F-31DF-D422-A8BE6A37CA5C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_8_blendParent2";
	rename -uid "80FD515F-4433-2360-8B89-558A944CC9DF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_8_blendParent3";
	rename -uid "7348941C-44A0-074E-C055-20B41744534C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_9_rotate_Merged_Layer3_inputAX";
	rename -uid "D91C1BFA-4AE3-0C49-E197-7CBEBA2FEA4F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_9_rotate_Merged_Layer3_inputAY";
	rename -uid "12221935-42B6-A001-BBD5-E49988C7467F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_9_rotate_Merged_Layer3_inputAZ";
	rename -uid "03876B0A-4D81-FBFF-39BC-D2974D243E81";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_9_blendParent1";
	rename -uid "E8C1625E-44FB-9468-FC44-A5B7FB3F7F1F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_9_blendParent2";
	rename -uid "21EB20E2-4F44-A1F9-D327-518EAC60723C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_9_blendParent3";
	rename -uid "0483A267-48B3-86E8-0F00-828DC4E72AE3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_10_rotate_Merged_Layer3_inputAY";
	rename -uid "593D98B4-4779-E2F4-3568-2D81A5D57156";
	setAttr ".tan" 18;
	setAttr -s 62 ".ktv[0:61]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_10_rotate_Merged_Layer3_inputAZ";
	rename -uid "4919421F-4EE8-D5AE-7506-2C876A395149";
	setAttr ".tan" 18;
	setAttr -s 62 ".ktv[0:61]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 120 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_10_blendParent1";
	rename -uid "2F876E14-48D3-D3A9-E225-2CA490811B6D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_10_blendParent2";
	rename -uid "62BF7349-4FF5-DB35-251C-C186FCB67589";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_10_blendParent3";
	rename -uid "5BC587AD-4E30-0592-07F0-DCA286695669";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
createNode animCurveTU -n "cone_8_blendParent4";
	rename -uid "003347B5-4BC0-3D31-046E-5A9A43E277DE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_8_blendParent5";
	rename -uid "4979C13C-4974-8B9D-1499-A28199C702CA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_8_blendParent6";
	rename -uid "A8BACEB6-4DF1-63C6-720F-E1B7CB820626";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_9_blendParent4";
	rename -uid "31556143-4EDB-A0AD-66FC-5C8B2FD7B236";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_9_blendParent5";
	rename -uid "4A2E1FDC-46AF-CBAE-983F-3EB431AC9C5B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_9_blendParent6";
	rename -uid "0487DE38-478D-3C79-F2AE-2D83FE350ED9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_10_blendParent4";
	rename -uid "961699D0-43D8-511F-9DD9-EBAC0A499DC8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_10_blendParent5";
	rename -uid "9DD74D63-4FD7-D8D7-CAA5-4285A09C965D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_10_blendParent6";
	rename -uid "689CB007-4E8B-8511-BF66-C1A281BAD3E0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 120 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_6_rotateX3";
	rename -uid "FCA898B4-4E3B-4F50-7570-BEBCA1554B52";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 45 30 -45 60 45;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateX4";
	rename -uid "A2B8EDD5-401B-AEDB-75F3-3F95502AD786";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateY4";
	rename -uid "1A94D8DE-40A4-2FAA-6838-AFA81E9F1989";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_2_translateZ4";
	rename -uid "5DEEBF67-4C3F-9275-9744-A995FB525C28";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateX4";
	rename -uid "F4625B70-4141-5FF5-75C4-3FA0D1145001";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateY4";
	rename -uid "8DAE5309-4213-242F-9277-8699F3E68F09";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_2_rotateZ4";
	rename -uid "EDF8D787-4843-5459-8E3B-698BD9B93A82";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleX2";
	rename -uid "A6564E5D-4EB5-CA46-7250-C09B7D8C94BE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleY2";
	rename -uid "410F70AB-40D7-5D7E-F0CF-D4908BE31277";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_scaleZ2";
	rename -uid "B562B4D3-478B-EE05-E84A-29B9C9197E8C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_2_visibility2";
	rename -uid "4ED8B164-4EF1-75FB-1FC1-67A043F5A065";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_visibility2";
	rename -uid "B0E3BA0E-4D90-E063-EA22-29BAF81370E3";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateX4";
	rename -uid "D560F58C-455F-0EC2-D77B-88B861BCC65C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.4;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateY4";
	rename -uid "05E1FCF1-471D-9D43-E3CC-EDA970B32059";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.4;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_3_rotateZ4";
	rename -uid "64DD4DC9-4FF6-7055-875D-E5BB5BED5236";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.4;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleX2";
	rename -uid "B6322CE2-471C-E5C8-63FA-D8825D20C1F2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.4;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleY2";
	rename -uid "444E1E49-4759-0C46-67CB-ACB97F3E80D5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.4;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_3_scaleZ2";
	rename -uid "8B795BF8-4BBE-D98E-1818-2CB8E192E687";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.4;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.4;
	setAttr -s 3 ".koy[2]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_visibility2";
	rename -uid "EE52C964-47D5-EDB8-9603-0BBD6475A6B3";
	setAttr ".tan" 5;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateX4";
	rename -uid "6992E7A9-48B5-4CDE-0BC8-2EA88B7B8C64";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateY4";
	rename -uid "3A954510-45F7-0BD2-C83C-CEB07059CC00";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 5.9981516117629745 48 5.9981516117629745;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_4_translateZ4";
	rename -uid "F3D4D042-4DEA-7006-24F1-668FE0CAF9EA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.0018483882370257197 48 0.0018483882370257197;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateX4";
	rename -uid "D0AD1EFE-4B59-9113-6541-CDB932E70B1D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateY4";
	rename -uid "4BA86F83-4A06-0AB4-4A01-9B9CF48D2619";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_4_rotateZ4";
	rename -uid "969873B8-4A93-A47D-2AF6-E293CA66DE1C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleX2";
	rename -uid "10726A9F-4E56-D471-6225-84A0AE172398";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleY2";
	rename -uid "739848CA-46DE-1FA4-5969-C1AFB9B84FF7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_4_scaleZ2";
	rename -uid "1A82D936-42FD-027A-55C2-A1B3AFAB560D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.4;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.4;
	setAttr -s 2 ".koy[1]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_visibility2";
	rename -uid "BD67778F-442D-B094-CA5B-279B1D8E4707";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateX4";
	rename -uid "2C12E0FA-4A8A-BCF9-7733-A2A789D1782A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateY4";
	rename -uid "C540AEC0-4538-E757-60F7-F9A13F4CBB66";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_5_translateZ4";
	rename -uid "AA8C7D71-48A6-C54B-8EAD-81BE79A844F1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateX4";
	rename -uid "3334AE84-4690-2F37-F3A1-0CB1C35D3989";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateY4";
	rename -uid "B8F15526-40B0-7D6F-5867-E48877430B35";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_5_rotateZ4";
	rename -uid "517D7D9A-4D19-8CE0-C2D8-FCA453169BEA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleX2";
	rename -uid "80921A7A-4220-2804-D8C4-B69A9C329174";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleY2";
	rename -uid "84FC667B-461C-57ED-6DA9-229F003678F5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "cone_5_scaleZ2";
	rename -uid "4540EE56-4368-9BA1-978C-F1BA99B57F1A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_visibility2";
	rename -uid "0A54A3C1-4279-38B9-08A7-15854A1E4F8F";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "aim_for_last_object_translateX4";
	rename -uid "A4B2A604-49C2-F7B8-B02F-47BC8371409B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTL -n "aim_for_last_object_translateY4";
	rename -uid "8B4BF1A3-470C-587E-6983-4E8A5A8BFB56";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 24 2 48 2;
createNode animCurveTL -n "aim_for_last_object_translateZ4";
	rename -uid "C0B771BC-4D32-3EA5-A696-C6AB900F5350";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2.6415697902848478e-05 24 2.6415697902848478e-05
		 48 2.6415697902848478e-05;
createNode animCurveTA -n "aim_for_last_object_rotateX4";
	rename -uid "AD3DDFFD-41F5-582A-4191-15915E60DFA7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateY4";
	rename -uid "FB138823-42CD-0A17-352A-37A9B838B09C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "aim_for_last_object_rotateZ4";
	rename -uid "F3F1E157-4E35-8299-FF2E-1284081C1D73";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleX2";
	rename -uid "16E4F8A2-47EF-EE3A-8368-FB802196917B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleY2";
	rename -uid "25C2E814-443D-98FA-F1CF-A4B442E79F12";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "aim_for_last_object_scaleZ2";
	rename -uid "C5B4911D-4057-A460-652A-5EA00D6C2557";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_3_translateX4";
	rename -uid "DF2D9309-432D-99BF-5B44-2FBCEE8EA630";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.8;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.8;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "cone_3_translateY4";
	rename -uid "39C40630-483A-03FF-7690-65956A034AFE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -1.9981516117629741 48 -1.9981516117629741;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.8;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.8;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "cone_3_translateZ4";
	rename -uid "D5D9292C-4300-C28C-EF93-288DBB20F279";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0018483882370260527 48 -0.0018483882370260527;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.8;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.8;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "cone_10_rotateX1";
	rename -uid "D7B14544-44C4-7699-5F9F-0F92F2836A9B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  8 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "cone_13_rotateX";
	rename -uid "A69108BF-4BC1-90D9-C82C-698FF0F5E757";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 20 30 -20 60 20;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "cone_13_translateX";
	rename -uid "5663148C-4A6D-4EA1-3C99-E082044574A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_13_translateY";
	rename -uid "671466D0-4883-C6DB-9308-B39492410F10";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -22.861269181177711 60 -22.861269181177711;
createNode animCurveTL -n "cone_13_translateZ";
	rename -uid "30D369F7-4B56-9F0D-02A1-AAAEB311F610";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_13_rotateY";
	rename -uid "C49E255C-4A3B-980A-5775-46AC5E2A635F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_13_rotateZ";
	rename -uid "301AD1E3-44A8-C9AC-A4AF-6AAA78B9F44B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_2_translateX5";
	rename -uid "D53A9BB8-4744-737C-00E8-FA84A8AAEA3E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_2_translateY5";
	rename -uid "36719DAA-427D-FE75-B59F-BDBB434B431A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_2_translateZ5";
	rename -uid "CF492267-4215-7B6C-831C-E699CD69731C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_2_rotateX5";
	rename -uid "21A8BC3E-4D25-FFBB-5FA6-45BC9EB70743";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_2_rotateY5";
	rename -uid "52C10718-4750-3C1A-DA93-3EBF383FBA3F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_2_rotateZ5";
	rename -uid "221C414B-49AE-87B9-D365-D7B9202E1F3D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_3_translateX5";
	rename -uid "CA21B777-48E1-C822-4194-F7A41B9BD117";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_3_translateY5";
	rename -uid "AC671934-4B32-D26A-DE98-209162786863";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_3_translateZ5";
	rename -uid "D78AA2E3-41FF-7805-1632-C786A119D21C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_3_rotateX5";
	rename -uid "4EE6AD48-49F9-532F-3A75-279B96829813";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_3_rotateY5";
	rename -uid "57BBEC4D-48C5-53C7-488C-33A1CBC89B64";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_3_rotateZ5";
	rename -uid "9E37AF10-4172-FF88-7F9A-60BFCB5656BF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_4_translateX5";
	rename -uid "BE52DB29-42B1-D76D-3BD9-00B61B5D72D2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_4_translateY5";
	rename -uid "D315B746-44C8-2933-9E27-B9AA511071EF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_4_translateZ5";
	rename -uid "99CE7CB4-49E0-653D-3053-1AB5811BF109";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_4_rotateX5";
	rename -uid "F7DCCF4F-4D28-5141-8608-B9B9938F8433";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_4_rotateY5";
	rename -uid "4A5E8583-448F-5DBE-DA7C-ECA1C9D290A4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_4_rotateZ5";
	rename -uid "489E138F-43CB-3E11-68EA-44A88764A007";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_5_translateX5";
	rename -uid "9552F7D2-4DB5-3046-7D29-2ABB2C5AD34C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_5_translateY5";
	rename -uid "7C05FD2C-4238-B25A-6476-BE9B011ACFA1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_5_translateZ5";
	rename -uid "DF171817-4697-F3A5-B36D-2F9FB898F347";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_5_rotateX5";
	rename -uid "F50A68AF-4DAF-2099-4EE2-6AAD46E26BA5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_5_rotateY5";
	rename -uid "4AF0C3EA-4561-B850-113C-E1AC653A936D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_5_rotateZ5";
	rename -uid "4C1830C5-4067-4C44-1741-049704D0E86C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_6_translateX1";
	rename -uid "36D7FE91-4DCF-833F-7B1C-7BA73B5B2894";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_6_translateY1";
	rename -uid "118DC1DF-4B1E-0CF5-48D3-C4994774897F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_6_translateZ1";
	rename -uid "EEED8562-4CEB-871E-1B8F-B5ACF0F2C0FF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_6_rotateX4";
	rename -uid "0941846B-42A5-EE73-BB82-B5812641F8A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_6_rotateY";
	rename -uid "44E2094B-4CDC-F313-09CA-4E8848BFC5B2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_6_rotateZ";
	rename -uid "7D7F1B63-4F8D-7FF1-A691-47BA5C7C1998";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_7_translateX";
	rename -uid "6186D947-4D10-7E62-7881-959CE9CBE670";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_7_translateY";
	rename -uid "84DF8D01-49ED-61F4-1F60-7C9321DC35C2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_7_translateZ";
	rename -uid "B67F1A60-4551-EDC3-BA7C-53AA8A0A3334";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_7_rotateX";
	rename -uid "5DED1845-4D2E-4A7D-E0E4-50822F3C71E6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_7_rotateY";
	rename -uid "FEC41729-432D-4E98-2BA0-1083DEA33082";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_7_rotateZ";
	rename -uid "2A63D35F-4C79-D50B-BFC3-AE83B6628061";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_8_translateX1";
	rename -uid "CD392422-426A-4533-77E2-6EAF7E345D99";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_8_translateY1";
	rename -uid "AD61E90D-499C-FD33-8CB9-E6B42922C788";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_8_translateZ1";
	rename -uid "F1D96D6F-460A-3CBC-CF1B-70B6B2D3A883";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_8_rotateX";
	rename -uid "A379088E-41A2-E850-A277-D09C88ED9E45";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_8_rotateY";
	rename -uid "24726D59-4CC4-5DB9-FD9C-3DA21BB67699";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_8_rotateZ";
	rename -uid "B59ECA85-4047-D64B-B40F-55AEACE28CAD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_9_translateX1";
	rename -uid "FBC1CAC0-4AC0-1102-3722-E2801D822EE2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_9_translateY1";
	rename -uid "7727A160-4744-05EE-6A5A-5DA455DC7635";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_9_translateZ1";
	rename -uid "5EEC1D54-4E3E-F4F9-5F39-01B39589BFEE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_9_rotateX";
	rename -uid "62F16D40-43AE-A52A-DFC6-7A97666C2210";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_9_rotateY";
	rename -uid "46C18AA2-4F80-3B69-3548-2D9FBCC6AC82";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_9_rotateZ";
	rename -uid "E9EDF466-4827-0889-EBCF-958341D3BC8F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_10_translateX1";
	rename -uid "1273DBA7-45F2-1A11-1291-9E9F4EA89B0A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_10_translateY1";
	rename -uid "341FEA9F-495F-B78C-B405-36909BE5C8A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "cone_10_translateZ1";
	rename -uid "37074EAD-4707-C030-33A0-39A1506A7A2D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_10_rotateX";
	rename -uid "B6E2FC7A-4A65-F50C-4CA3-11851D6C9A93";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_10_rotateY";
	rename -uid "284FF55A-43DB-9E55-7D8D-57ACF38A90B4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "cone_10_rotateZ";
	rename -uid "B670FFAC-454F-9BFF-CAD4-3AAF25BA3C9D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "aim_for_last_object_translateX5";
	rename -uid "40BD61A6-4F11-D88D-4510-AD83C2A2DA0D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "aim_for_last_object_translateY5";
	rename -uid "45F3DFFF-46AE-005F-A067-488D1AFBBF85";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "aim_for_last_object_translateZ5";
	rename -uid "2692C48E-4FF7-FA33-469A-DB97CD86E66F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "aim_for_last_object_rotateX5";
	rename -uid "EC559878-4C75-789F-3D1F-07BEC83ACF8D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "aim_for_last_object_rotateY5";
	rename -uid "802513AE-4B0B-CC86-D047-378C73552BCD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "aim_for_last_object_rotateZ5";
	rename -uid "3373BF20-4403-6EF1-AB54-A8A2405CED32";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "024D4E86-4A0B-C7E8-40DE-DC9F771B237D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -20 30 20 60 -20;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "7E97CD24-4D9B-F18E-D0E6-20B34BA08510";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "BD478791-4981-0014-211E-5CB065542E82";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "EE305CFA-44FE-7333-0863-0085C75B6A2B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -15.35507399438497 60 -15.35507399438497;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "FD5EB5B9-4815-AEB1-3068-27B80915E93D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "1D05FAB0-4065-99F7-1347-F6812EA47C38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "561BD9DD-4FB7-727B-5916-AB922525C5D4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "CD6EDB71-4136-436F-6308-B3933EB720EB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "5D75317C-4661-153F-FAD7-B7B31EED6E88";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "6A8F4ED8-4F9B-5238-2491-CDA09A0B2454";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "13F1F424-4DA0-D208-1C0F-8297016150BE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "688C25FF-43A3-9FEA-CE74-FEAEA62A939D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "45EC1F88-4287-18E5-395F-D8BEDE27DAEE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "B9ACDF03-4477-4C2A-1C86-3AAE0EA8BFDB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "41FD4088-43B5-6180-A237-979E52235DB6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "F264AC75-4AA9-0C0C-7EBB-1CAFF2DE3E49";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "634E22B8-4E3E-9C97-12D8-84B5066217E4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "24BB7615-4359-AC84-84D4-A0930DFCA660";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "42B512F4-40A7-EC7D-BCFF-DEB92EE95D93";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "10248623-4A20-406C-657B-8BB69F4C8FDC";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "56D0C64A-472D-B64F-2BFF-85A1476376E3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "9C160EF0-40AA-47D8-0377-02BF4C2CEDCF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "BE4920E5-4F75-8A7E-BD69-DCBCCCA4FE06";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "74167624-4CC6-1D91-C024-8DB61C4B1628";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "671DB5DC-494B-A865-6531-30A4CA2A9DF3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "EFE2F5AA-427D-BC6D-EE5E-F79B7A3EEE2F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "F2436220-49C3-7974-729E-80AF5D9DEF47";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "8C588442-445A-4480-D34B-388483CC579E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "19B537ED-4D07-5009-54BA-1EB6A111D908";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "2B31F7BE-47D5-2210-A607-069065B658EC";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "53DCC7DF-414F-C2C2-C687-0E89177E2BCC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "6C63D4A4-484D-29E2-CAA2-C58E0B3CB79C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "8852529B-452F-D13D-CA23-5DA5FA489455";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "A167BC1D-4750-6E35-9450-25AC565E0608";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "0F28692F-4F80-3560-4BC2-3AA00766322D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "2A1E93CE-4ED6-3CD9-C0B9-5BA0A775C618";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "F851F4C5-495A-49A6-590D-C9B1154789A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "0C3EEFCC-4CB4-BAF1-7655-7391072307D0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "A756CE2E-402C-6384-DB0C-BC8CCD4A7ABF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "F4D52C80-42F8-8727-5654-4097D0FEC387";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "4E8FBF52-41A5-8BB6-38D0-EF84A6A7A82E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "42F7C3EA-4D52-CD2B-B072-358DCD83919F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "2E026DE1-4964-A01A-EEAF-BBBE4A2B5BC2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "B0E58B3B-4D0B-5488-94E7-E4BA4FFA2F37";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "C714341B-440C-FA2E-64D2-B98C9355E75E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "856BB677-4571-754C-D777-CDA68B120D5A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "199A220A-46B6-8DE0-62EC-B08C501AADA9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "B55C5DEA-4AB8-9B94-8727-45A90F69DDEC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "D208007D-43DD-3A2F-4C23-FDAA7B2FF86B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint6_visibility";
	rename -uid "F3EB9DB6-41AA-DA62-6E30-3ABFE2DA2A2E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint6_translateX";
	rename -uid "3953DF6E-4505-2724-EB72-2C8E6E74CE03";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint6_translateY";
	rename -uid "F866E369-4902-5DEB-0407-839C971CE313";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint6_translateZ";
	rename -uid "193D64DF-42E6-8194-1819-3C9741A8B26A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint6_rotateX";
	rename -uid "AE068822-406B-BAD7-6CD9-16ADF649B95B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint6_rotateY";
	rename -uid "C462733F-48C1-974C-0635-A5ABF03106BC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint6_rotateZ";
	rename -uid "91DC5D93-4443-9190-C7C7-7680A472791E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint6_scaleX";
	rename -uid "2F369FD6-46FA-5E5F-3B25-2F9376E0E2A4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint6_scaleY";
	rename -uid "C82FA8D3-4521-253C-7565-48BAAE54FC8E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint6_scaleZ";
	rename -uid "72E406A6-45B0-072C-779E-05ADDCBA0BED";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "030BAC2B-4397-18DA-DAFA-44BFC3884500";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "5EA3106E-40FF-19AA-5C12-97B8F158E5BB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "6A92CB22-4F59-DD34-04F9-F3B7F1208588";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "A22DE9A0-49B5-5D3D-0684-B39A9F4B2BBA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "2D984CA6-40EC-EA96-5C9C-9384F47A8764";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "7C7EB056-491A-F3B2-6009-9E9AC72E1835";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "39F3D456-4EE5-C955-665C-86B6CEE6EC60";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "0F7EA18F-4B7F-2383-790B-2C99721B46F2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "160398D3-484E-C5BA-C122-C59170D3D470";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "96842BCC-4772-A49B-CA96-29BF69AF071F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint8_visibility";
	rename -uid "1632A37B-4C5C-4188-3377-9EA7782BDB01";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint8_translateX";
	rename -uid "3BCEB285-41DC-87ED-5EA0-4BBB52575E77";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint8_translateY";
	rename -uid "BFAE2E09-4FBB-C27F-41A8-11A0FF410C54";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint8_translateZ";
	rename -uid "989A4ACE-4EFA-8792-4805-2A84350C9E64";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint8_rotateX";
	rename -uid "21D550B8-4B7C-DD0A-C7F1-4CB749FD824C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint8_rotateY";
	rename -uid "F0A4A899-4667-AB91-0E7A-079B2F92F3F6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint8_rotateZ";
	rename -uid "623544C2-405E-C4BB-3213-888719BF8A58";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint8_scaleX";
	rename -uid "64AD2CFC-4215-684D-5140-43887B8B2A38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint8_scaleY";
	rename -uid "324677CF-49D3-9894-7AF0-06B76CF75047";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint8_scaleZ";
	rename -uid "C1609AE4-4823-E0E4-8C05-5FB07B903A07";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "CC269EE6-4E00-B839-86FA-22A99A9929B3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "BEC5A9EE-43E1-6AE2-0B83-CFA6DADA1D8B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "BD2D5AA0-44B1-EDFD-F44C-918296D29EB2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "538050E9-4540-6E61-34E1-2FA7EB270CB3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "E650D56B-4677-F8B4-B46A-3CBF1B8D43A6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "59A7D325-44B9-3FE6-771B-B6883E9BC973";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "1CBF049E-47F9-234C-B33F-38B5556DD961";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "4CAB5CB3-4DD6-C537-86F5-088D99249388";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "58163EFE-4531-E441-2499-C5987CEA17EE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "C6C429A7-4582-0C63-CFC5-69A03E0D0347";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "C5226921-4521-3614-81DF-CA826A41BB1D";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "ACD27CFE-4CC3-44F5-F6FB-878A273B6FC9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "EA91D023-4012-8741-6FDC-86BD131DD58E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "FD9C62D3-455D-9FAB-ADF1-A2B06DDA9C3D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "CB9A1DB7-4860-FA48-ECA0-03B1CBA714A3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "B93E0CB3-4F6B-2F93-2577-08878FE35C5E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "36C64066-4E3D-72CE-D078-4E92DAC6D112";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "50F5402B-452F-1CCE-C908-A5A10AC9FB24";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "6FA84054-4EA0-71F8-0E49-61ACAE8C9F82";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "ECEBD1D5-4D11-4EDD-57A4-21AABACAB88F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint11_visibility";
	rename -uid "3BB1E0F3-49A4-C15B-3BA5-70B7D032BE58";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint11_translateX";
	rename -uid "6D1A1702-487B-6DC2-4CA2-CB9CB93DAD68";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint11_translateY";
	rename -uid "CC538F1E-46FC-6E55-609F-4AA7CFC17926";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint11_translateZ";
	rename -uid "BC135171-4FEC-7D37-ED60-BAB0D8433387";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint11_rotateX";
	rename -uid "C8291C1B-48A1-542D-7262-76BB9268983B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint11_rotateY";
	rename -uid "E6E66F70-4B9C-5FD7-CD4B-D18D75198836";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint11_rotateZ";
	rename -uid "9EAE5677-4200-899E-93C9-EE86CC637B1A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint11_scaleX";
	rename -uid "FEDE92FA-4507-C376-3CA0-A7B56CE39EDF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint11_scaleY";
	rename -uid "6EDDD972-432C-4F93-27C8-D9905986A1B5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint11_scaleZ";
	rename -uid "30B23C2F-4315-C689-9F23-F5A871341C26";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint12_visibility";
	rename -uid "C77B1F90-4FB6-F643-1F32-C98902553B7F";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint12_translateX";
	rename -uid "30D608C1-42C5-C6FF-058C-57AF841BB80D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2 60 2;
createNode animCurveTL -n "joint12_translateY";
	rename -uid "F2F2FF00-467F-D6F4-0D5D-C7BA442FCD81";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "joint12_translateZ";
	rename -uid "7FD2774C-4354-34E1-D6BB-F5B8039FFD50";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint12_rotateX";
	rename -uid "0E131781-4639-7C58-5E7E-84B9B90EBBC1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint12_rotateY";
	rename -uid "D34C2FDA-41ED-8717-8733-C187CB9FA3C9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "joint12_rotateZ";
	rename -uid "DD56A821-4664-F880-B25A-42A0D50E2204";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "joint12_scaleX";
	rename -uid "BFA7E1B3-4D52-10D6-6949-C7AA7CC38876";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint12_scaleY";
	rename -uid "3E3031C2-4D23-423D-8343-0589400DC613";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTU -n "joint12_scaleZ";
	rename -uid "6F05E508-409A-F655-1926-0E9A13765787";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTA -n "cone_14_rotateX";
	rename -uid "869E8EA4-4760-F93A-3022-EFA5E1288379";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 29.999999999999996 40 -29.999999999999996
		 80 29.999999999999996;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode polyCube -n "polyCube1";
	rename -uid "F0662998-43D1-4AFB-B9E0-648F2A836739";
	setAttr ".cuv" 4;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "2A3A8CF2-420D-05F5-3D2D-409455F869F1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "DB7A7679-41AB-8DB5-9706-29AD5CBDB1E9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "E16E6D70-4B70-BBC1-B7A9-6B9BA1615FD6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 3.0879018778580223 30 3.1077149631549004
		 60 3.1077149631549004;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "C1CEFA67-4168-BAD5-84E0-C1B2A41556BD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "3DA4B944-4E65-EC71-683E-949BCDC257E9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -29.999999999999996 30 29.999999999999996
		 60 -29.999999999999996;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "8AD44CC7-47A5-2F18-C0B9-0D8FA82FDCBF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "D7C46168-47CF-DFB0-4712-C78C50140646";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "8E1D5733-4D75-F3F4-56AA-9C9649F85BB7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "C71CD125-4FE6-21D8-6AA2-45B939E36B8C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube7_visibility";
	rename -uid "13BD6936-4858-F1C6-027A-51B21F327638";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube7_translateX";
	rename -uid "0235EB9B-4EA5-07C7-73C0-0BAA37C0D3F9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube7_translateY";
	rename -uid "5FA61489-4163-72BB-45CD-4CB6ABEC1251";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube7_translateZ";
	rename -uid "FF76BEA5-474F-81DF-F073-EDB0C006227B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube7_rotateX";
	rename -uid "D95EAEDE-4984-D1E5-00AD-FB80EBE7700F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube7_rotateY";
	rename -uid "08FB1C84-475E-6E24-E3C0-2A9618BFFDA5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube7_rotateZ";
	rename -uid "F2A305D7-4424-433C-FB12-D3BFC6EA04D6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube7_scaleX";
	rename -uid "CD8DE27E-4CD1-C4C5-C2D8-61A3DA340E5A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube7_scaleY";
	rename -uid "07637A9F-4FF8-C7C8-8B1C-D3A9E0938249";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube7_scaleZ";
	rename -uid "3F12A6D0-4B42-650D-4A96-49BC83EE57CE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube8_visibility";
	rename -uid "A8AAE66D-4A75-5349-888C-459B7B04D776";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube8_translateX";
	rename -uid "BC93E12B-4368-74B7-4A6E-7C98C1BCEED0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube8_translateY";
	rename -uid "A0A524B9-4D1C-A863-AED0-F0AFA58F88A7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube8_translateZ";
	rename -uid "7A19D370-4A3D-E054-09BE-A1A1DB3C03C8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube8_rotateX";
	rename -uid "995E6FB1-41C6-5E21-D0A9-09B75D1ACF89";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube8_rotateY";
	rename -uid "8D8ED031-41F5-6F10-4E2A-0F819F169BCA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube8_rotateZ";
	rename -uid "99C683BE-4865-6F7C-ED3F-53B226F3918D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube8_scaleX";
	rename -uid "714866EE-4489-14EC-EE0E-1CBB55570BB5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube8_scaleY";
	rename -uid "8B117CF6-4D18-F6F4-32AD-C5ACB0BB1395";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube8_scaleZ";
	rename -uid "85A97EC1-4B33-D1A6-84DD-D9BCEFE3CF9F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube9_visibility";
	rename -uid "9C68251D-4EB4-ADDB-6F9E-20983BB217E5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube9_translateX";
	rename -uid "35F53582-4518-4A2F-A7E8-2CA7419FDD6B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube9_translateY";
	rename -uid "40860703-42FA-3AD8-F0FD-FFB0DAD50CB3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube9_translateZ";
	rename -uid "03EA6E84-4412-7277-6BF9-BEA6FEF7C15D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube9_rotateX";
	rename -uid "74F21DBE-4AA0-8CCE-E0EB-7381AA3E9A5B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube9_rotateY";
	rename -uid "A60C1303-42E1-0BAD-40F4-D99D340645D2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube9_rotateZ";
	rename -uid "6E0DB53B-49AB-F28E-8BFC-B59F5EB795E6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube9_scaleX";
	rename -uid "F774147A-4B9B-6E66-E562-7AB61F3998E6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube9_scaleY";
	rename -uid "68ADDF88-41A9-42B1-40A2-99B4BD821282";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube9_scaleZ";
	rename -uid "C2BD209A-41CC-3B56-70B4-02AF8E6825F8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube10_visibility";
	rename -uid "179C2C16-4179-6C9C-F243-59A88E1C2AA0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube10_translateX";
	rename -uid "0901CA65-49D3-B9E7-1453-8BBF354B14D6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube10_translateY";
	rename -uid "71DBFAE0-40DB-C973-522A-C588446F4178";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube10_translateZ";
	rename -uid "7ED08D4B-4867-413E-C836-74A65397DE8B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube10_rotateX";
	rename -uid "2E6172ED-4705-C98A-7728-02A74FD4F274";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube10_rotateY";
	rename -uid "3839F09C-4708-2A8E-1E93-828D14AFEC27";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube10_rotateZ";
	rename -uid "C7AAA077-4D6B-7FCF-1132-23969BE00905";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube10_scaleX";
	rename -uid "4EE11122-45BF-92BF-D200-0EBBA38B8905";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube10_scaleY";
	rename -uid "B1390D8B-4B95-0382-BD4A-6E825AECAD89";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube10_scaleZ";
	rename -uid "2207CD47-4E92-F420-9999-EDB6026B5348";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube11_visibility";
	rename -uid "75431B41-4388-6A1C-DB5D-6699704C533C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube11_translateX";
	rename -uid "CD1D1A5F-45DB-AA4A-911D-A38ACAC97F61";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube11_translateY";
	rename -uid "3940B1B4-464C-6A82-8DF8-1196114DFA69";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube11_translateZ";
	rename -uid "55AC5D10-4B50-5281-EC7C-BC84A6E8474B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube11_rotateX";
	rename -uid "C4058510-4F0B-2850-56C0-74A437EFF99B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube11_rotateY";
	rename -uid "0B2F59AB-487B-E5B9-A670-8FADD0488A95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube11_rotateZ";
	rename -uid "BC2BF594-422D-4D91-D36F-06ABDCB51DC9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube11_scaleX";
	rename -uid "6670EF76-486A-B657-5AB4-A49BF9F357F2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube11_scaleY";
	rename -uid "8F73F630-431F-A266-371C-C78FFF896DC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube11_scaleZ";
	rename -uid "7C5DF6E0-4F47-E79F-EFF7-B499A33A1628";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateX";
	rename -uid "2DFF612B-45EA-9C4A-0D1E-72B82EF2566D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -5.4483469411688858 30 -5.4483469411688858
		 60 -5.4483469411688858;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateY";
	rename -uid "7EB4F2B1-4B19-FCD2-C531-7CA45A08184A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateZ";
	rename -uid "7342B8B8-455A-EAAB-F2C6-2D88B69D63C7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateX";
	rename -uid "5A92BD9C-4D6B-765F-EF68-0BA17C507A6E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -29.999999999999996 30 29.999999999999996
		 60 -29.999999999999996;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateY";
	rename -uid "A0D042C4-405E-CE68-9E7D-1BABD0BD63F2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateZ";
	rename -uid "3285AC8D-4D13-1D83-76D0-E99EDD038615";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleX";
	rename -uid "7893217D-41A0-785A-7E16-D9A447694C54";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleY";
	rename -uid "288130A5-4669-A6BC-C1A7-3ABA941BCA62";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleZ";
	rename -uid "95FADA29-4098-423A-5720-ED8D4BFFFF83";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_visibility";
	rename -uid "916CE512-4832-3A80-1C50-B1A6BA8FD488";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateX";
	rename -uid "29F4FBE1-443E-79D7-F018-6A825175B6EF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateY";
	rename -uid "1393E89C-46C5-7D23-FADE-0A8BFAD1C26D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateZ";
	rename -uid "268E1D5F-4A3B-0FAF-2A7E-CBBAE4EB446C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateX";
	rename -uid "39F32F8A-4FA0-3510-F96A-5DA7E4D60459";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateY";
	rename -uid "9EED2455-4EB9-8025-CCA4-84AA3AE52A6A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateZ";
	rename -uid "F678BC94-47CB-10BC-E9D6-92B6B6BEFBDD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleX";
	rename -uid "EFF20CD7-49C6-AB82-0CA5-F68D0CC77598";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleY";
	rename -uid "9DC16ECF-4ED0-F296-645D-79A4F05CC245";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleZ";
	rename -uid "DE5BE35F-4546-8946-4D29-A29EEF0CAC1C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_visibility";
	rename -uid "0C628FB3-469D-FCE0-2557-FB84F96505CC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateX";
	rename -uid "CCDACE16-4315-590A-AC58-29AFB97EC94F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateY";
	rename -uid "61424AA3-4B3C-5F9F-B202-67A30A1626AF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateZ";
	rename -uid "DADA9894-453D-B8CB-9431-C6B77ACA19BA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateX";
	rename -uid "9C4BC523-488B-2879-B7C1-A8AE7A930629";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateY";
	rename -uid "062F8DA1-41DC-D385-B822-C7A456F765DF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateZ";
	rename -uid "1730EB4E-4725-A870-FDD6-7386970E60BC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleX";
	rename -uid "D4D2780F-4EB1-4C6E-18AD-65A88976FE99";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleY";
	rename -uid "2D9E9BE2-4320-4FE6-4A8C-6F9B0090E226";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleZ";
	rename -uid "CBF85BE3-4453-1E56-19A2-588C59757C11";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_visibility";
	rename -uid "BE2CEC9C-4FC7-296E-379D-27BCD49BDF7C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateX";
	rename -uid "53C49A39-4D2A-C9B7-CF42-788B37F6754B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateY";
	rename -uid "D3894C91-4F2D-6264-7CD0-FD960453E0F9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateZ";
	rename -uid "BC89C875-41EB-690E-5676-498277806BBE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateX";
	rename -uid "C1EFBCBC-4C79-072B-2D58-76AC3292B6EC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateY";
	rename -uid "8CEA982B-4780-4731-3BDB-4180C3AB6526";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateZ";
	rename -uid "85E87268-4169-E7CC-B123-8CB94229A78E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleX";
	rename -uid "FCFAE2A7-4826-5012-5A96-1080E60D87FB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleY";
	rename -uid "FC7E65E3-4B14-8B8F-7E46-41A365C61D32";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleZ";
	rename -uid "394BF535-4B82-3B61-1825-27A5E8E9E68C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_visibility";
	rename -uid "36185B7A-4F52-4E9F-B982-A4B29501E76D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateX";
	rename -uid "AB0D8D48-4D85-2EDE-FA5D-539569F94BD8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateY";
	rename -uid "85335028-40AC-FD80-2451-C0860DE50BFA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateZ";
	rename -uid "F47B94EF-4FAD-48A8-7C25-E790FD0D41DF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateX";
	rename -uid "48587ADA-4A94-8E26-549E-8FB38B8DDCA4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateY";
	rename -uid "291BA423-461F-786C-0774-2592A6F005BD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateZ";
	rename -uid "715EE38F-4CBB-D6E1-A2A1-E48D35143827";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleX";
	rename -uid "48200114-4901-B996-07ED-19821C1B4B82";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleY";
	rename -uid "6BB116C5-49F7-CA23-9F5E-FE9DB7E026AD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleZ";
	rename -uid "BEA6E3E6-41A3-8405-AA22-2EAF78B1B04A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_visibility";
	rename -uid "E00EDD4B-48CD-5885-3C20-33B8EEBC3657";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateX";
	rename -uid "1D4FBCF2-439B-2120-C681-B8BEB64E79AE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateY";
	rename -uid "57E8269E-440D-D245-224E-8E902458E38D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateZ";
	rename -uid "56629BF0-420D-70CD-4211-49B822741CCC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateX";
	rename -uid "B0646058-450E-7401-FDCC-8CB31A54A2B8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateY";
	rename -uid "B208BC5F-4E38-F0AF-9534-0D96D65897D2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateZ";
	rename -uid "66FEBF1D-48FA-EA5B-CD86-57BAD20DFB56";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleX";
	rename -uid "559EC208-44EA-0BB7-4EA8-7CBFECFB6380";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleY";
	rename -uid "2FBD58C9-4018-BA94-BE81-ADB0B8F95989";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleZ";
	rename -uid "86120DD0-42AD-AED5-21A4-2F94625B18C1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube26_translateX";
	rename -uid "0241612E-4750-34BA-C615-AB98DCA38F24";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube26_translateY";
	rename -uid "E61D3C56-442F-D5E3-880D-6A8D4C955984";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube26_translateZ";
	rename -uid "6AFE005C-4826-D6DB-2240-B2922BDC1FB9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -2.8970917752736671 30 -2.8970917752736671
		 60 -2.8970917752736671;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube26_rotateX";
	rename -uid "DBCF1B4F-48F6-857F-0E21-DBB9BCC9B1E2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube26_rotateY";
	rename -uid "85F6C70C-4519-7EB1-E773-BA9F2E4842BB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube26_rotateZ";
	rename -uid "211132DA-4E2F-6C5F-E289-41873F537990";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -29.999999999999996 30 29.999999999999996
		 60 -29.999999999999996;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube26_scaleX";
	rename -uid "5BC41307-486A-0E1B-81CE-67A975E5ABC8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube26_scaleY";
	rename -uid "64F37EFB-4343-1378-949B-8DBF4FD690C6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube26_scaleZ";
	rename -uid "0AF108F5-488D-1638-109B-0C977EE6BF4F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube25_visibility";
	rename -uid "E948718F-4B53-5DB1-535F-E4822AD9AAFA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube25_translateX";
	rename -uid "A586ACA4-4FDE-479E-F498-65B5F26AC989";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube25_translateY";
	rename -uid "DBE22F33-425F-86AB-B0DF-ED90539476FC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube25_translateZ";
	rename -uid "0E84AEAB-4E5A-CAA0-0244-E1BD5D0E6D4F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube25_rotateX";
	rename -uid "14052F9B-4EE2-61A6-7CD3-8F8F5A8A1F18";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube25_rotateY";
	rename -uid "BAEAD31B-49B2-B3E0-7FA2-A3B482DF966B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube25_rotateZ";
	rename -uid "A25C4568-422A-2FA5-2A1F-EE8E4F53957F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube25_scaleX";
	rename -uid "BFBCCCB4-4D46-80CB-C294-CDB48D8C594E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube25_scaleY";
	rename -uid "7C8DCD65-4131-CB90-77C5-FB9778D4D2E1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube25_scaleZ";
	rename -uid "70435A56-4A00-9C82-1631-7BB82A456C86";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube23_visibility";
	rename -uid "55FAA57E-411A-C841-EADB-C19DE5B6893C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube23_translateX";
	rename -uid "CF95BC60-4B87-1714-1C0E-B3B5EFAB84B1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube23_translateY";
	rename -uid "73E4A6F3-478F-D071-D46C-55950C16688D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube23_translateZ";
	rename -uid "77C4AD04-4621-0C1D-73B5-90B12C663C4E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube23_rotateX";
	rename -uid "F676949C-444C-05EB-D998-C3AEF0A96451";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube23_rotateY";
	rename -uid "72C0D5D5-4657-4AF5-9429-91B409D1ABDD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube23_rotateZ";
	rename -uid "7ADCACA6-4C6D-8BCC-E939-BF959326C8B3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube23_scaleX";
	rename -uid "ED0F6121-44CD-581C-D643-04B532418B8D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube23_scaleY";
	rename -uid "79979AE5-4451-C66B-2631-99BB0476DE3C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube23_scaleZ";
	rename -uid "17890B55-459C-FC7A-7215-869AC5150A75";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube24_visibility";
	rename -uid "455E6587-4487-D7AE-4C2D-AA84ACBD88DE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube24_translateX";
	rename -uid "BB3C7B8C-470A-DD1C-4666-7BB14D6CE9E2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube24_translateY";
	rename -uid "123F849D-43AE-35DF-BE54-FE9D4BD3CC07";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube24_translateZ";
	rename -uid "AE34B288-4B8D-DEE4-7742-728801F7C89A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube24_rotateX";
	rename -uid "9CA618EE-42EB-5E7E-3F64-178EA1228558";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube24_rotateY";
	rename -uid "5F703713-434E-D2AF-12EC-A787BDC00BCA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube24_rotateZ";
	rename -uid "1037D68D-4AF2-9A05-1144-1695A1FCBE65";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube24_scaleX";
	rename -uid "86914DDF-451C-69F4-D35A-AA8075F4295B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube24_scaleY";
	rename -uid "EDFE1F75-465D-0FEC-A68A-E3A5F351FAC6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube24_scaleZ";
	rename -uid "EE929615-4717-C4E2-7804-E5AAC437E93B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube28_visibility";
	rename -uid "22F4089F-4001-1890-8B3D-FA91787F7981";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube28_translateX";
	rename -uid "0BB6BBB1-4AFD-E2A4-B493-C899DCF8DB7D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube28_translateY";
	rename -uid "D091ACC3-4C04-9C87-8DAA-CA8F8AED52BF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube28_translateZ";
	rename -uid "E0220B84-40A1-7EF8-5313-27875F91ABC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube28_rotateX";
	rename -uid "004A7257-49EF-CD04-D0D2-B7B87C2C0119";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube28_rotateY";
	rename -uid "A8456B39-491D-C53D-07E8-95BCEB5A5DC0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube28_rotateZ";
	rename -uid "EC96855C-49B9-59A3-F8D9-34847B4A1118";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube28_scaleX";
	rename -uid "8FAAEE54-44A2-A31B-7DDA-3B8BCA0E2FAF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube28_scaleY";
	rename -uid "69F27EEC-4065-6C3E-DB24-7289EDE5C57B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube28_scaleZ";
	rename -uid "B647E8CF-4009-089A-540B-299CC5D7AD0A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube27_visibility";
	rename -uid "9566C8B1-4D26-4FE0-83D2-578175ED4F68";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube27_translateX";
	rename -uid "06E7350B-4BE9-F21B-AFBE-F29A8B1CDA09";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube27_translateY";
	rename -uid "2D400A6C-4BAD-6051-A0AC-DC87C2FA6334";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube27_translateZ";
	rename -uid "474E832C-4F8D-CAFD-455F-CEAC28B9800C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube27_rotateX";
	rename -uid "F6705EF5-4AA7-21D0-A8B3-DB886738462E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube27_rotateY";
	rename -uid "DE9187C0-4683-E6DC-5C6C-E7AAEEAADC58";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube27_rotateZ";
	rename -uid "A29CD8E8-4AF1-FB9A-3227-47A2C588DD5E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube27_scaleX";
	rename -uid "09F540EB-4C50-3EB8-82DE-71A498C41C7A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube27_scaleY";
	rename -uid "39576A64-4E30-C43A-9EF3-75ABD254CEED";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube27_scaleZ";
	rename -uid "7E374A23-4300-52CF-9186-0DB08B6B23DA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "joint13_translateX";
	rename -uid "D00D4227-464D-5758-C001-5A87719476CC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -7.6369245170765483 30 -7.6369245170765483
		 60 -7.6369245170765483;
createNode animCurveTL -n "joint13_translateY";
	rename -uid "9B1E8E8B-44A4-FA75-32C0-51ADD31E2B1A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint13_translateZ";
	rename -uid "D0111628-4D00-68A7-E0BF-8F9DE8E895BE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -15.35507399438497 30 -15.35507399438497
		 60 -15.35507399438497;
createNode animCurveTA -n "joint13_rotateX";
	rename -uid "E41C3166-44B2-1F75-6199-47AAE16A95FC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint13_rotateY";
	rename -uid "769BBA33-4372-AD22-21A4-60BB842B14A7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 20 30 -20 60 20;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "joint13_rotateZ";
	rename -uid "21143A40-427C-ECCE-ADC0-BA9E17300D13";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint13_scaleX";
	rename -uid "030A5DF3-4254-3EED-C4B7-2796E0A97329";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint13_scaleY";
	rename -uid "8A593980-49AC-1D4F-9C2B-23BBB79F17F4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint13_scaleZ";
	rename -uid "56CAE318-4E44-20EC-7917-7AA018D1A13C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint2_visibility1";
	rename -uid "FF5D43A1-4473-57DD-E16C-59B5F0CB3C93";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint2_translateX1";
	rename -uid "503781D4-4E60-1877-9C9B-6E86B6217DA8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint2_translateY1";
	rename -uid "707D62FC-4D36-B350-2FCE-CD9A7E70B8FA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint2_translateZ1";
	rename -uid "80165687-46EE-E366-E93D-7EBA44B25EA0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint2_rotateX1";
	rename -uid "AA92CCFF-4208-FA9F-D84D-BA8DDC33987D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint2_rotateY1";
	rename -uid "05889B70-4346-24E8-3BB8-31882721472E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint2_rotateZ1";
	rename -uid "3537EBD8-4C10-EF31-932E-8995410D8CD9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint2_scaleX1";
	rename -uid "BBAEDDFA-4105-39F2-E497-0796FE5D79FB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint2_scaleY1";
	rename -uid "ED412239-402E-4627-7D4C-AA8ABB689458";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint2_scaleZ1";
	rename -uid "8E0597B4-4CAD-E195-DF0A-9F83E7A3D8AF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint3_visibility1";
	rename -uid "EA9E8A22-4117-9743-7417-0BB714B7D889";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint3_translateX1";
	rename -uid "0C373A65-4187-A92A-455A-E8BC01B47902";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint3_translateY1";
	rename -uid "49D32C4C-4781-A956-DC4B-31A337E93FBF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint3_translateZ1";
	rename -uid "61A74334-4066-2D09-E8F3-2A9A11B86741";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint3_rotateX1";
	rename -uid "35E743F4-4FB3-19E4-535C-E4BF2057D65A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint3_rotateY1";
	rename -uid "31F8C9B1-446C-BFC4-FC92-A68E4E051F6A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint3_rotateZ1";
	rename -uid "69B519CD-4B87-6BCD-3E2A-71B4A950AD35";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint3_scaleX1";
	rename -uid "AF426166-437E-52FC-D325-41B27B33D069";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint3_scaleY1";
	rename -uid "DF5FFF26-4991-C2E0-AED9-4EBB922D92CE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint3_scaleZ1";
	rename -uid "0C2D29F5-4D1D-71BC-EEF4-1586D1C205A8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint4_visibility1";
	rename -uid "E2207259-4E1F-EBA4-7BDC-9D9629DF9B4B";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint4_translateX1";
	rename -uid "A2455587-4095-78FD-8F02-5085A60AD477";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 8.8817841970012543e-16 30 8.8817841970012543e-16
		 60 8.8817841970012543e-16;
createNode animCurveTL -n "joint4_translateY1";
	rename -uid "3B730E7C-40AD-8811-3BE8-7FB67CAB0608";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626476e-32 30 -9.8607613152626476e-32
		 60 -9.8607613152626476e-32;
createNode animCurveTL -n "joint4_translateZ1";
	rename -uid "7CDFFDD3-4997-D370-551D-DE81F7AF0212";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2.0000000000000004 30 2.0000000000000004
		 60 2.0000000000000004;
createNode animCurveTA -n "joint4_rotateX1";
	rename -uid "6E4F616C-4A6B-F22B-2D3C-91B7F09F88AB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint4_rotateY1";
	rename -uid "D16E3793-4202-BD90-CA1A-97A2B08628EE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint4_rotateZ1";
	rename -uid "A4746C22-4001-BAE9-769E-AE804EC2E392";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint4_scaleX1";
	rename -uid "A0D3B8DE-4ABE-BCE3-D9A0-6BB330E752BB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint4_scaleY1";
	rename -uid "F3CFDA62-4F3D-0E0E-ABAE-82AE810D76D9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint4_scaleZ1";
	rename -uid "20300DA3-4BEE-0571-63F3-948831413B32";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint5_visibility1";
	rename -uid "3D2E807A-4759-5E0E-E8AC-7F9492DBB9EC";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint5_translateX1";
	rename -uid "160D983E-4F0A-F877-4069-E6BE25B3F9EE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint5_translateY1";
	rename -uid "5636A16B-44C3-6DE1-C0FB-80B4C5D2A382";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint5_translateZ1";
	rename -uid "1E117C67-4A32-32B4-4E63-509B1AE4BC46";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint5_rotateX1";
	rename -uid "85541187-4AAC-F8B1-36CB-639FF655D1D4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint5_rotateY1";
	rename -uid "1710FC28-4632-D05A-9A1C-58B35B353078";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint5_rotateZ1";
	rename -uid "B185E53B-433E-F22B-CC43-668EA484931A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint5_scaleX1";
	rename -uid "EF0FF5A8-4CFC-B7D9-1BB3-A69710F152D7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint5_scaleY1";
	rename -uid "F19B8A2D-4C40-CBC4-ED94-C18308CDB29C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint5_scaleZ1";
	rename -uid "BF699A62-4344-D67E-9357-34A18D881B6B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint6_visibility1";
	rename -uid "4D2D8ACF-4788-AC84-DBD0-47A59ABDB525";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint6_translateX1";
	rename -uid "43857A4F-43EA-A658-59DE-39809A8B4DD5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint6_translateY1";
	rename -uid "E06CBC57-4BD1-9664-B116-64AB9557A2E6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint6_translateZ1";
	rename -uid "4CEB00DC-4395-D2AD-BA74-33ACE321160C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint6_rotateX1";
	rename -uid "8BF56B10-4222-8EFE-C0B3-B09EC2E0FBD5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint6_rotateY1";
	rename -uid "DE988C02-4899-D553-8A12-1786BB1153FF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint6_rotateZ1";
	rename -uid "87B2537B-4A10-674A-9468-A892485B0EEB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint6_scaleX1";
	rename -uid "EC7616AF-4194-69D0-FC88-E7A73B7BB42C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint6_scaleY1";
	rename -uid "8DFAD446-47D2-8BBF-23F2-AB95E1632BFF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint6_scaleZ1";
	rename -uid "D460DE6F-43E4-470E-A7C8-0F94B6BF2FDB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint7_visibility1";
	rename -uid "3C6933EB-4E8B-4E9C-1A1A-2FA6D61C0DE0";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint7_translateX1";
	rename -uid "5C160F23-4B9D-B351-4473-08AD019459FF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint7_translateY1";
	rename -uid "AAEBC81A-470C-4F3E-C371-0EBE83C2A901";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint7_translateZ1";
	rename -uid "F8CDC9A8-468B-FFD6-F9E4-C09A664C04CF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint7_rotateX1";
	rename -uid "97F6022D-4519-97EB-5856-2ABF42329C7D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint7_rotateY1";
	rename -uid "FACD4E26-400D-8B16-E938-A8A2BC03109F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint7_rotateZ1";
	rename -uid "97A269EE-4D3D-6455-EFBF-228F63B74DC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint7_scaleX1";
	rename -uid "AA9DE97D-40A6-06EF-27F4-99B01DEE35E6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint7_scaleY1";
	rename -uid "23E63CCE-43ED-B091-C927-8FAC2A2E5346";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint7_scaleZ1";
	rename -uid "B6147A25-4B2F-1D66-5283-31AC0FB2615B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint8_visibility1";
	rename -uid "E6B3047B-4A1F-FE8F-7518-F3ADC8DD2D65";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint8_translateX1";
	rename -uid "7A3A7C8C-4E23-45CA-098F-8AB2D5DAA3DB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint8_translateY1";
	rename -uid "8EBFCB1E-4B19-A523-FAE9-0695985C7D15";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint8_translateZ1";
	rename -uid "4DEDD87E-4F15-8171-1DD4-8AAD10AF1906";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint8_rotateX1";
	rename -uid "E1156F84-4F08-ABD7-F6F1-0AB62EE5440F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint8_rotateY1";
	rename -uid "23745C28-41CA-882C-E99B-B387B12DBA69";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint8_rotateZ1";
	rename -uid "FE72536F-4FAC-38E8-DC6A-AD84EC21EA95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint8_scaleX1";
	rename -uid "408A7E07-4CCC-4B39-A869-9CBCFFD54358";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint8_scaleY1";
	rename -uid "C9E047FE-472D-7B8C-0DF1-299D5451D9E1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint8_scaleZ1";
	rename -uid "4F79E9A8-4335-0FB6-FA2E-BB81B8E1C71C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint9_visibility1";
	rename -uid "EFF6328D-4101-29FA-2B2A-3193C7C559F3";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint9_translateX1";
	rename -uid "3F03EEC7-4B0D-D7DE-3933-6CA2D1D4AED3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint9_translateY1";
	rename -uid "FA99732A-4865-1D75-5A10-648DA21A17FE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint9_translateZ1";
	rename -uid "28C363B4-452A-77B9-F013-4AB0C31E3DAE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint9_rotateX1";
	rename -uid "93958152-4C34-D4A0-E873-F3B3ECEE5A06";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint9_rotateY1";
	rename -uid "090F9411-4528-E9D4-F901-268DFA5E8DC8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint9_rotateZ1";
	rename -uid "CDCCB4F3-4182-285D-B2E7-4E8419D77713";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint9_scaleX1";
	rename -uid "52251C6A-4360-DE58-16AB-96BCEE318B13";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint9_scaleY1";
	rename -uid "B867D929-4F05-634F-79EC-BBB27F25D5D5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint9_scaleZ1";
	rename -uid "96D56B93-4B93-40AD-E06B-4AA27303C421";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint10_visibility1";
	rename -uid "67D9A053-4282-4F20-7446-5E8BD04577C8";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint10_translateX1";
	rename -uid "810E9A88-46C5-2B8A-A695-AEBF00D4AFC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint10_translateY1";
	rename -uid "53EFA53F-4148-8172-782E-1EBA9C34F8FE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint10_translateZ1";
	rename -uid "087FDABE-4013-F19A-9F9B-6DB4D8704729";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint10_rotateX1";
	rename -uid "51DE92F1-4C7F-50EC-970F-0F891497696D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint10_rotateY1";
	rename -uid "DA20BC72-4BF7-06C5-9ECF-D7A3B7910CFE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint10_rotateZ1";
	rename -uid "9060F3E9-427C-518E-BB1E-3B8C7F5797E7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint10_scaleX1";
	rename -uid "FEB28C0B-4FF6-191C-9D40-5E8C379749DE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint10_scaleY1";
	rename -uid "FC15FA0D-428F-56A1-1279-12858EC3EF81";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint10_scaleZ1";
	rename -uid "330E7A20-47FD-C68C-3B9C-0980FAA7110D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint11_visibility1";
	rename -uid "E15081DB-4F65-D3F0-7580-DA9D87C1B34C";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint11_translateX1";
	rename -uid "A93F790D-40FA-4915-188B-D3BA1C6F370E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint11_translateY1";
	rename -uid "CDEA1AB3-481B-BF3B-EA06-8282822D568C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint11_translateZ1";
	rename -uid "95A9865F-4161-398C-B1D9-2A82550516DC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint11_rotateX1";
	rename -uid "20756DFF-4586-2118-6B73-63ABB59E2058";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint11_rotateY1";
	rename -uid "602FDA37-472C-E5D7-9330-74A2F97CB887";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint11_rotateZ1";
	rename -uid "CF830F2B-4F83-FB45-7888-AB9EBE125355";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint11_scaleX1";
	rename -uid "4ABAA73D-491C-0A24-BF2F-DC9F6068BD4D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint11_scaleY1";
	rename -uid "ACE93344-489E-A472-AA17-BBBB8A697DCA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint11_scaleZ1";
	rename -uid "554CCF78-4A2F-607E-0627-66A9B0C4DD87";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint12_visibility1";
	rename -uid "15B614C6-43F3-C0F9-75CE-F1966D114AB0";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint12_translateX1";
	rename -uid "6A04B3A4-45F1-CED0-4D2C-DB9456D6A6FC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1.1102230246251567e-15 30 1.1102230246251567e-15
		 60 1.1102230246251567e-15;
createNode animCurveTL -n "joint12_translateY1";
	rename -uid "9F4442A1-4BA7-DE21-51AB-AC9BE4E7D855";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.8607613152626454e-32 30 -9.8607613152626454e-32
		 60 -9.8607613152626454e-32;
createNode animCurveTL -n "joint12_translateZ1";
	rename -uid "70340371-40A0-D733-4636-37B642376050";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTA -n "joint12_rotateX1";
	rename -uid "CD0CBDA7-4A2D-D8E0-F825-63AB7BBFF6A5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint12_rotateY1";
	rename -uid "3F9F48B8-46EA-9CD5-4CAD-1CA95D3E7445";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint12_rotateZ1";
	rename -uid "9111B7FA-4ADC-16CF-5241-B6B81351343F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint12_scaleX1";
	rename -uid "957569F2-4621-E932-CB09-E3A706473349";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint12_scaleY1";
	rename -uid "2E951E59-4837-33C2-4748-1488ADE7DD82";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint12_scaleZ1";
	rename -uid "F232D81D-4DEB-EF78-5B2F-3CA7EF5CE86D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTL -n "joint14_translateX";
	rename -uid "72664633-4CEC-FFF4-1161-1FB7F4EB37D6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 3.5882016495393239 30 3.5882016495393239
		 60 3.5882016495393239;
createNode animCurveTL -n "joint14_translateY";
	rename -uid "3ABA56D6-403D-36C1-0A61-9AA21AC96F52";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint14_translateZ";
	rename -uid "3B00F075-4DBE-6F0D-4AB9-868CF3717A59";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -15.35507399438497 30 -15.35507399438497
		 60 -15.35507399438497;
createNode animCurveTA -n "joint14_rotateX";
	rename -uid "2136825A-4711-53AF-B7A9-F1B1B548121F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint14_rotateY";
	rename -uid "29FF2629-4104-7B19-A533-12AE461DA4C4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 20 30 -19.999999999999993 60 20;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "joint14_rotateZ";
	rename -uid "1D4391D0-4382-0BD4-015A-1D9E0FB4C420";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -90 30 -90 60 -90;
createNode animCurveTU -n "joint14_scaleX";
	rename -uid "21FB37BC-4180-B44A-FEF6-15BAF3E7AB4C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint14_scaleY";
	rename -uid "DC50140F-4C89-55A5-C7C1-F1A303DC9532";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint14_scaleZ";
	rename -uid "64C01B56-435C-3EDF-D289-0F82560F35C9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint2_visibility2";
	rename -uid "1495C88B-417F-1ADA-C692-7DB55EA6962E";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint2_translateX2";
	rename -uid "041DEA53-4733-D911-3CD8-8A9B1B608479";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint2_translateY2";
	rename -uid "C007A57C-4CC0-5223-236F-D1B17A22E12B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint2_translateZ2";
	rename -uid "8FE2194D-4242-E10C-0B14-83953D4DFDA0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint2_rotateX2";
	rename -uid "9FA269A3-4A16-7167-3297-88B9E2CF91EE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint2_rotateY2";
	rename -uid "38B07382-4BBB-91B0-05C8-8EBD21615D25";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint2_rotateZ2";
	rename -uid "EC04F29D-41E0-0C31-F89A-51B20B79B5EB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint2_scaleX2";
	rename -uid "56FC008A-47E8-0F85-098B-EC9054F423A9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint2_scaleY2";
	rename -uid "FE93B83C-46C3-805E-C8E2-25B0EE2FF336";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint2_scaleZ2";
	rename -uid "67B1341F-498B-74B0-6E38-35B2D4F493CA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint3_visibility2";
	rename -uid "2B54E08F-4717-18A9-26D3-AEBFF730D9EF";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint3_translateX2";
	rename -uid "55E1987F-4AE2-C9BA-1872-AE8C0BA10D15";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint3_translateY2";
	rename -uid "0D2EA9C8-4810-1DFC-9E82-788D5F440533";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint3_translateZ2";
	rename -uid "00BE4017-4CA3-12BC-9F8B-48B5661AA5E3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint3_rotateX2";
	rename -uid "F13CD1AA-494E-FA80-0CE3-918A9A1579F3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint3_rotateY2";
	rename -uid "6B9E1800-4504-113D-D587-0582DF1C50D0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint3_rotateZ2";
	rename -uid "48CB015F-458A-BF39-CE30-27A444DEA057";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint3_scaleX2";
	rename -uid "68B4D1E7-48AC-E209-2538-579B68A2BF13";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint3_scaleY2";
	rename -uid "B707EF20-4B04-FBE3-7077-CBA9B58FB37E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint3_scaleZ2";
	rename -uid "8FD267D3-46EB-DD29-FE78-A695F7C8C9EE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint4_visibility2";
	rename -uid "E9B4939D-4D3C-6DF4-D0DE-7689974FB0C1";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint4_translateX2";
	rename -uid "1E7592AB-4098-5BF0-73CF-BB9269B4D649";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint4_translateY2";
	rename -uid "FC2B6172-4764-04A0-2944-0FA80D8C4041";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint4_translateZ2";
	rename -uid "D32D099B-4367-1918-BBD9-8A8C35BD802A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint4_rotateX2";
	rename -uid "66690519-41DB-F955-08F4-D7B35C93EF8B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint4_rotateY2";
	rename -uid "12F69578-40DF-0F5B-94FD-0E9D55F3B8E3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint4_rotateZ2";
	rename -uid "23E87263-4A9C-A088-8537-CCABDE115319";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint4_scaleX2";
	rename -uid "873D3EFF-4864-151D-BCEB-6C857B914058";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint4_scaleY2";
	rename -uid "CDBA15EF-44AD-6AA1-54B2-678668918CB4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint4_scaleZ2";
	rename -uid "9C4505C3-4184-CD25-7662-3EAA07F319A2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint5_visibility2";
	rename -uid "32EC2AC9-4298-7EE7-4A7A-2D8E9638F432";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint5_translateX2";
	rename -uid "BD3AFA24-48D2-E561-152F-C9A9AE4FBC93";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint5_translateY2";
	rename -uid "40469710-4122-A179-4081-DE958E94C1C3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint5_translateZ2";
	rename -uid "2FD5BBDA-4832-EF09-7918-8FAD1C9237DC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint5_rotateX2";
	rename -uid "01D4D293-4B51-48BC-9D31-5D8651D39CF1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint5_rotateY2";
	rename -uid "5FC9E067-4288-6B3E-1945-44BF6B13AF7C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint5_rotateZ2";
	rename -uid "7AB3E3B7-41B1-F95E-9A49-98B157465259";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint5_scaleX2";
	rename -uid "C71C3B32-426C-0DB3-B0FC-5CA4B7A89D49";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint5_scaleY2";
	rename -uid "C61030C6-4F00-1E6D-F91D-2D8E8DBBA26F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint5_scaleZ2";
	rename -uid "8DEE6046-4615-D3BE-3F58-BAB1CC61861B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint6_visibility2";
	rename -uid "AB685FF4-4857-DB61-1137-42A99AD483DC";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint6_translateX2";
	rename -uid "0C82FA7B-4F14-9F82-6129-6D9CCFE691CE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint6_translateY2";
	rename -uid "53B274F7-4439-C726-FA1B-D9899BCE3FF2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint6_translateZ2";
	rename -uid "A0766A5A-4466-D5E3-515B-6989F3301217";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint6_rotateX2";
	rename -uid "2103C16C-40CF-3689-A3F8-B7AE11CC1837";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint6_rotateY2";
	rename -uid "DB075339-4210-22C1-D6CE-15A1996D5C95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint6_rotateZ2";
	rename -uid "748E84AD-4C85-7E0A-88AD-29854A9FC920";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint6_scaleX2";
	rename -uid "5B2F196C-4812-DD8D-1F1C-F3B68D0C356E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint6_scaleY2";
	rename -uid "8F5D2853-4F1F-54D9-DA48-31A50C880FBA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint6_scaleZ2";
	rename -uid "5DA5B780-4A01-D3E5-3B17-4681B699254C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint7_visibility2";
	rename -uid "A6B95A72-403A-67DD-6ADC-B5A86609DFEF";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint7_translateX2";
	rename -uid "20287F42-48D9-F008-2E40-B5AB5954548F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint7_translateY2";
	rename -uid "37DF78BA-46D3-3362-0FCB-AF9F8C364DBA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint7_translateZ2";
	rename -uid "D4C2A854-4103-2CFA-A146-F99F793DF1A6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint7_rotateX2";
	rename -uid "4601C6C8-4C42-601E-A147-37A6ED00A69B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint7_rotateY2";
	rename -uid "B5DAFD59-49A0-DEE3-4B18-BDA0008EA51A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint7_rotateZ2";
	rename -uid "FCA084CB-4ECD-37D5-B8EF-D786D8BCB1A9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint7_scaleX2";
	rename -uid "680C7305-4BB4-4F84-8C42-6B93DA867114";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint7_scaleY2";
	rename -uid "7FA5746A-4638-77F5-B1E8-018FB35A73ED";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint7_scaleZ2";
	rename -uid "A5C45DC1-4FB0-6877-C215-F295BE55EBD1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint8_visibility2";
	rename -uid "D9C35214-4737-142F-07A6-96A4F6ED4C27";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint8_translateX2";
	rename -uid "DAF15CC4-489D-5C74-CF9D-7883ED5C67D3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint8_translateY2";
	rename -uid "F929BC8C-47D4-F759-A9B8-D48CA1A2480E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint8_translateZ2";
	rename -uid "9E663005-43C0-1946-92F3-359467578E4F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint8_rotateX2";
	rename -uid "220B0756-4660-2D33-D021-35986F7C33F5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint8_rotateY2";
	rename -uid "89D1FE58-49A0-C0E2-1CD2-CA91399C87BB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint8_rotateZ2";
	rename -uid "45533C3B-4D35-B6D1-97BB-C091686EA415";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint8_scaleX2";
	rename -uid "7EB724D0-4818-7FFD-96B4-339C0E333D5B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint8_scaleY2";
	rename -uid "B22D68F8-40A6-E804-A23E-D7BD2759F2F5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint8_scaleZ2";
	rename -uid "080F96DA-47B9-78F6-1CE8-C1A28CB767E9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint9_visibility2";
	rename -uid "473B6E89-439F-50C9-192C-6894872CFD32";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint9_translateX2";
	rename -uid "075415FD-4323-2718-EA35-47BA17B35BD5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint9_translateY2";
	rename -uid "AB39281C-4DFC-D2DE-44EF-0CB9CE32CA94";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint9_translateZ2";
	rename -uid "D6AC2D2E-4A13-55D1-1F27-2299545982FD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint9_rotateX2";
	rename -uid "672A9ADB-4185-9AC8-85C7-2DA7200F3E36";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint9_rotateY2";
	rename -uid "DA5D746D-473C-D031-0CB8-13B66B0CF622";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint9_rotateZ2";
	rename -uid "AE9E5BD4-4662-63C5-1E32-83A8120A1396";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint9_scaleX2";
	rename -uid "5B85F2AF-4F55-E12A-D603-5ABA60DB2E98";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint9_scaleY2";
	rename -uid "6ED6D3B1-4B58-95DF-F83F-719F18D6162F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint9_scaleZ2";
	rename -uid "64341EE4-47E2-2AA6-84D5-CFB33621EE50";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint10_visibility2";
	rename -uid "5AD5FF9D-4A62-B1E4-25FD-8FA221F2C5F7";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint10_translateX2";
	rename -uid "FDC1F59B-469C-2564-52EB-F2806A15F243";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint10_translateY2";
	rename -uid "1F18328F-4480-D4F6-E7C6-96BBBA7EAFF2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint10_translateZ2";
	rename -uid "BC365E0B-493B-6450-D5D6-E09B8805481A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint10_rotateX2";
	rename -uid "31C885AE-4C84-3C9A-B87D-33A9E978DBCB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint10_rotateY2";
	rename -uid "85CC59AC-4A1F-42D4-9343-04AC038A971F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint10_rotateZ2";
	rename -uid "A9381CF0-459E-8FA9-7BB7-B7882B8F040B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint10_scaleX2";
	rename -uid "0822CD9A-4832-04C0-D6C6-EBA64764C5EA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint10_scaleY2";
	rename -uid "DC863EDB-4B2F-E97E-9E72-3DB45C90B2DE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint10_scaleZ2";
	rename -uid "F6E9E064-4E4C-3338-FCBD-3C894FD5DF1F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint11_visibility2";
	rename -uid "30863A2C-41BA-A03C-1586-619484ADDA5E";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint11_translateX2";
	rename -uid "E3CD5395-4E27-6111-5D10-399AED922180";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint11_translateY2";
	rename -uid "A8845C79-41C3-3CCA-3531-7CB57F5F4915";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint11_translateZ2";
	rename -uid "00A13B1C-497B-D12F-B158-0E802CF5EC4A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint11_rotateX2";
	rename -uid "A4D18C72-4BFF-236C-259C-E297FC7DE6E1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint11_rotateY2";
	rename -uid "921A916B-42D0-7DC5-C936-AD9B041E8321";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint11_rotateZ2";
	rename -uid "3C5524CD-4781-2652-84E3-28B3A13537C9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint11_scaleX2";
	rename -uid "0E4657A6-4928-26AB-66B1-E6A4965851D4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint11_scaleY2";
	rename -uid "8D56159A-49C2-5110-E014-65851D81367F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint11_scaleZ2";
	rename -uid "BC975375-497A-3F73-E6A3-269AEDC15E04";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint12_visibility2";
	rename -uid "21D2013A-4658-CBD9-89E5-52B8CA5C2EB0";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint12_translateX2";
	rename -uid "9FD99949-4F61-2DF8-248F-E29FAECCE192";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
createNode animCurveTL -n "joint12_translateY2";
	rename -uid "BC4583FE-4537-4F01-657B-F681DD0976D6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTL -n "joint12_translateZ2";
	rename -uid "5380D9E4-45FB-5588-2098-CAB0946111F2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint12_rotateX2";
	rename -uid "4222B310-429F-CA2B-8D5C-BB83A81EE475";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint12_rotateY2";
	rename -uid "BE662941-4DE2-551E-7BC1-77A726E12ABA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTA -n "joint12_rotateZ2";
	rename -uid "B2B1835A-4991-5F49-6341-099DB3310B53";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
createNode animCurveTU -n "joint12_scaleX2";
	rename -uid "C81CAE89-4726-9B95-07D2-F28F2F357827";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint12_scaleY2";
	rename -uid "2019ACC5-408D-06A0-53D3-C0A6851CCAB2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTU -n "joint12_scaleZ2";
	rename -uid "80170C13-48A7-5210-99AE-E1B43BFEEE43";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
createNode animCurveTL -n "locator1_translateX";
	rename -uid "D672C90E-4625-A82C-85D1-CE916CD713EB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -1.26265399443614e-15 60 -1.26265399443614e-15;
createNode animCurveTL -n "locator1_translateY";
	rename -uid "3D215692-4FE1-D383-E41E-2483F32370B1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2.3610027505262581 60 2.3610027505262581;
createNode animCurveTL -n "locator1_translateZ";
	rename -uid "AE76DDF6-4368-1439-693C-0D935B29B0B9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 9.001810489851034e-16 60 9.001810489851034e-16;
createNode animCurveTA -n "locator1_rotateX";
	rename -uid "017899A8-400B-5EF2-E811-7C93E823E13B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "locator1_rotateY";
	rename -uid "353CA11B-465B-B580-298C-37A243C94D9A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "locator1_rotateZ";
	rename -uid "212099FB-4C2F-76BA-723A-95979640C162";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "locator1_scaleX";
	rename -uid "16ABB7F2-4771-32AF-B471-5BB09BBA0E54";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTU -n "locator1_scaleY";
	rename -uid "7973C7E4-4FD3-93CA-8DFB-2F9920B1686B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTU -n "locator1_scaleZ";
	rename -uid "9ACC1BF2-47A1-57AF-4602-67807BD8E815";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTL -n "pCube21_translateX1";
	rename -uid "21EA6481-466D-B43D-A402-3ABB80E3C396";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -9.4509635109064778 30 -9.4509635109064778
		 60 -9.4509635109064778;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateY1";
	rename -uid "410D9CD8-42A6-9B7A-68BA-1DAE0D5C0C05";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateZ1";
	rename -uid "79D28D9F-4537-3F48-FCB1-A9ABFB640BFF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateX1";
	rename -uid "11E25ED7-4D70-2F8A-ADF8-3DA538704DDB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -29.999999999999996 30 29.999999999999996
		 60 -29.999999999999996;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateY1";
	rename -uid "DC173C87-4251-30B0-C211-63BB81ADBE4C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateZ1";
	rename -uid "376CCAAF-4134-5B78-AF49-3D9C9F3E6A95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleX1";
	rename -uid "C2BDD671-46CE-71DE-5334-1AB299D50DEA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleY1";
	rename -uid "924F56A8-4E13-4DCE-4757-D4A86B2EC4BB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleZ1";
	rename -uid "01FFE76E-4678-0CA1-04AB-13843680CD8F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_visibility1";
	rename -uid "32CE6301-4090-B5F9-9B58-FC9419689B08";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateX1";
	rename -uid "C6D9740F-4A82-FB52-028F-CE843903F08F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateY1";
	rename -uid "C836DD67-4F89-D8CF-6662-5197129A7BC7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateZ1";
	rename -uid "F0533F45-4764-6068-D213-CD9F28D05E9F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateX1";
	rename -uid "FD0199D9-42CF-D37F-0E0A-518D6AECE564";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateY1";
	rename -uid "42D6F16C-4535-3D5D-538D-2EA035FB4ED8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateZ1";
	rename -uid "0146566A-4D9D-1B87-1767-779258C5E5E5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleX1";
	rename -uid "303B28F2-452D-B9C5-0807-69BA0EA8D7F3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleY1";
	rename -uid "BF8DE632-4135-5D31-45F3-CBB75805535E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleZ1";
	rename -uid "C4E86B14-4C4F-2FF5-5CA9-51BEBBB6D5EA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_visibility1";
	rename -uid "21DB647A-4774-B3A5-57FA-61855C53C690";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateX1";
	rename -uid "6DB82AF2-496D-E815-3630-40A2ED6DA6CB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateY1";
	rename -uid "6325B8B6-4A93-EFD4-285C-198BE0B42D92";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateZ1";
	rename -uid "C2177D2A-4D3D-ECA2-5A2F-33A09D898D23";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateX1";
	rename -uid "66D9609E-4EF1-9342-F7BB-7596E5144533";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateY1";
	rename -uid "C7A7905D-4760-55F3-4F07-F29379091B4F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateZ1";
	rename -uid "EA9A8959-4CA2-F22B-C55B-01B087620679";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleX1";
	rename -uid "F6F0C350-4255-5089-27B5-68AED3B0C413";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleY1";
	rename -uid "86202665-416A-A333-EA98-049E19288E5F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleZ1";
	rename -uid "44047A38-406A-3A1C-6E89-3C9CDEBD01CB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_visibility1";
	rename -uid "B0D53A1F-4122-5CB1-7DFC-58A3DED6BE33";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateX1";
	rename -uid "BCFBC605-4819-4456-EBD9-EB97A9806F1B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateY1";
	rename -uid "FACE601A-417E-D6BB-8310-52B95B49E9B4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateZ1";
	rename -uid "7D7833C6-4FD8-EDE9-6F1E-3A9EBD25567E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateX1";
	rename -uid "7714BC74-4369-8C2E-591A-7494DA9A4A79";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateY1";
	rename -uid "F374F1C1-4C70-48B0-C7B2-DFB16DD4959C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateZ1";
	rename -uid "68D92CBA-4A62-6169-B360-B68FE18CD21B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleX1";
	rename -uid "A7FA1B7A-44B1-162D-CFD0-15B718163698";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleY1";
	rename -uid "5CE5EF78-4084-5EF7-CFF7-7AB841F2E6F2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleZ1";
	rename -uid "8A026C32-4B47-B8D8-58F6-E8A22F1E55D7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_visibility1";
	rename -uid "BBA38403-4B8F-D4B3-7D09-91B17CE83DC0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateX1";
	rename -uid "B3FD036E-4B4B-3F7B-0A3D-8BA1B8B47DC2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateY1";
	rename -uid "EA9F85D9-44F0-6DC2-228F-3AB390A336F7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateZ1";
	rename -uid "3BC77047-4E30-8645-8D87-D4A9445B86C6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateX1";
	rename -uid "63660A15-4C5C-056D-F34E-D69992168954";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateY1";
	rename -uid "69C8B8A6-4BE4-5329-BD4A-4DBAB7CA81D1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateZ1";
	rename -uid "0DEDB739-4FBD-B8D3-F0DC-58986A99EA00";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleX1";
	rename -uid "399090D8-4B9E-8694-A279-3AADCC464FCF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleY1";
	rename -uid "85CB7CC9-493C-808A-D94E-AA8F18986723";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleZ1";
	rename -uid "41238166-4B22-05D8-24B4-0BB81D64B870";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_visibility1";
	rename -uid "8700E676-46D9-469B-20C8-9DBD4978308F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateX1";
	rename -uid "FA67BBB2-4869-B0A2-A804-F38ADD31CE49";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateY1";
	rename -uid "0A2263E6-44BB-898B-7699-149A54437A08";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateZ1";
	rename -uid "0F54168D-490C-05AF-C66F-36A692DB9349";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateX1";
	rename -uid "3A2612FB-436F-4E37-BEA2-299B3A54CAAA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateY1";
	rename -uid "EBACA775-439E-1396-F027-8ABE0B7C2DE5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateZ1";
	rename -uid "B1E5362A-4139-4D71-B495-16B5E989935B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleX1";
	rename -uid "36E26106-4B41-6444-5A62-9CB3E4120541";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleY1";
	rename -uid "0A37661A-468A-AD78-C620-EE989218DAB6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleZ1";
	rename -uid "1F352E8A-4689-7832-C913-5685BE8644CC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "locator1_translateX1";
	rename -uid "B47DA8F5-4A84-A1EC-4AEB-C6BD64BEFB07";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -1.26265399443614e-15 60 -1.26265399443614e-15;
createNode animCurveTL -n "locator1_translateY1";
	rename -uid "424A9879-41AE-0638-55F5-FF86C10378D3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2.3610027505262581 60 2.3610027505262581;
createNode animCurveTL -n "locator1_translateZ1";
	rename -uid "E1A7C59A-4C29-80AF-5B66-1F9A713A4DCF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 9.001810489851034e-16 60 9.001810489851034e-16;
createNode animCurveTA -n "locator1_rotateX1";
	rename -uid "98DDBD44-4310-9BB4-A740-839FEF7734A1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "locator1_rotateY1";
	rename -uid "D007F5B8-4D09-CB69-3EF3-58A8E339019E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "locator1_rotateZ1";
	rename -uid "88D541C6-4A13-8FCF-2BF6-30977C14F813";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "locator1_scaleX1";
	rename -uid "83F16ECE-4622-14AB-A32F-48914D7F5D38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTU -n "locator1_scaleY1";
	rename -uid "ADB8832C-4610-5E7F-F0C2-FBADB4A151A6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTU -n "locator1_scaleZ1";
	rename -uid "7852E8A3-4248-F9CF-EED1-62B1E660C037";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTL -n "pCube21_translateX2";
	rename -uid "61AA71E1-4BC8-3348-7679-699E09ABF65D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -14.87782401343414 30 -14.87782401343414
		 60 -14.87782401343414;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateY2";
	rename -uid "31EB959B-4C02-8696-1030-BAB87622143C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube21_translateZ2";
	rename -uid "62D3A683-48C8-ED91-7A01-6C85A6086F4A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateX2";
	rename -uid "5AEDB6BB-47AB-7F25-23B1-3E962F748AAE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -29.999999999999996 30 29.999999999999996
		 60 -29.999999999999996;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateY2";
	rename -uid "06F7C9F3-4ACD-24EF-B2C8-0F8FA199C336";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube21_rotateZ2";
	rename -uid "8A91A2C3-4068-72D9-EC2D-608A015C1A51";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleX2";
	rename -uid "E7922B87-440D-72B3-30B7-E5BB7E43E7DF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleY2";
	rename -uid "3B701105-4DA0-344B-A241-789420F106AC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube21_scaleZ2";
	rename -uid "EDB36224-4A26-45D4-6E6B-4085EA5B3B16";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_visibility2";
	rename -uid "206AE4EF-457C-3657-D282-80AF4B883D2B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateX2";
	rename -uid "C30298F2-407D-048A-154A-59A6D7872940";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateY2";
	rename -uid "DB062F90-46A6-B706-EA38-49A4673CF877";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube22_translateZ2";
	rename -uid "04CC3916-466D-63FF-031A-D18A71BAB9C2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateX2";
	rename -uid "2C071B0C-455A-489B-D357-CEAF24E5A547";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateY2";
	rename -uid "09E43D04-4FFB-1A29-E8EE-BD9F8AB2E021";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube22_rotateZ2";
	rename -uid "0124C4A0-4E6E-9045-54B0-20ABB6625A32";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleX2";
	rename -uid "C9454D88-4094-4520-0D3A-DFBFBD1B02D4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleY2";
	rename -uid "7AE2A320-46AE-1E6F-D398-99A48CADDE77";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube22_scaleZ2";
	rename -uid "91EE0F41-4D6D-6C5B-E594-6E85E4EE1031";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_visibility2";
	rename -uid "44F86EB3-4CA2-3457-263F-B0AAFA1BC227";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateX2";
	rename -uid "5C9BA2B7-43CE-6861-8197-ECB7CA3C487A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateY2";
	rename -uid "80621CB6-427E-DCC5-C662-B99900582564";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube20_translateZ2";
	rename -uid "438B973A-4BCB-4576-E95C-9A88BDAF4536";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateX2";
	rename -uid "05237F3E-4EDF-4964-0DB7-4EBBAB17B46B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateY2";
	rename -uid "3A2C3557-44EF-F9CA-9BC0-F79789C23506";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube20_rotateZ2";
	rename -uid "8D84414A-42FF-E402-0C6B-DAAB00C18C80";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleX2";
	rename -uid "E628C31F-4D7E-DF36-3DC9-BB9DF8ACDC1A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleY2";
	rename -uid "A9B8628A-497A-8228-A67E-D6927B629992";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube20_scaleZ2";
	rename -uid "E399359B-43FA-F932-2039-EE9943E06AE1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_visibility2";
	rename -uid "88F2264F-4660-03FE-64AB-C0B36F6E29F0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateX2";
	rename -uid "9D8814EF-4F5B-BAD6-D78B-1CA5467F8E77";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateY2";
	rename -uid "FA1A4460-4604-0524-C0A1-C990CFE321B8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube19_translateZ2";
	rename -uid "1EBE4B60-4FB6-AB7A-41B8-0798FA30FCCF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateX2";
	rename -uid "65F21672-4635-049D-F728-CCA3EF12C0E0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateY2";
	rename -uid "939FCC2B-456A-F759-01DC-1AA1AB1BE2FB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube19_rotateZ2";
	rename -uid "F7C3EDFC-423B-20E0-5F6B-759B4800D2A3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleX2";
	rename -uid "DB4EDC9E-4370-117A-1361-39B01CBCFC0F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleY2";
	rename -uid "2D92E5AD-43B1-1AEE-56FA-99A4B21F6628";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube19_scaleZ2";
	rename -uid "A28589FC-4A97-168C-1E0F-E9AD753F291A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_visibility2";
	rename -uid "0C2C3410-4C00-0888-F63E-D0BA55B7F288";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateX2";
	rename -uid "D6DE3F54-4551-5814-D886-6083592C337F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateY2";
	rename -uid "1502FA4B-4D21-F0E8-B5F6-4BA68278FBF6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube18_translateZ2";
	rename -uid "5C588092-4731-FC0D-A565-FB9EB2BC7C08";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateX2";
	rename -uid "634224EA-4601-A2AE-FB75-9C8455431C26";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateY2";
	rename -uid "3A49F1F6-4CE8-C65F-1FBA-46A4A4773445";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube18_rotateZ2";
	rename -uid "315F3961-4852-3995-2A4A-508BB7D795B2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleX2";
	rename -uid "CC2672D3-4065-E2F4-7A19-C0A21D5F7B25";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleY2";
	rename -uid "0FA8B707-49F9-F0AC-0F89-08B54CB42E1C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube18_scaleZ2";
	rename -uid "8A0FE917-43F2-349F-17DB-77AC1AF73AD8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_visibility2";
	rename -uid "76753CF0-4D70-C19F-02CB-8E9D225B4E7E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateX2";
	rename -uid "1C49D07F-467D-72D4-4D39-4D82B4BF3CEE";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateY2";
	rename -uid "24C0F9B5-4DE2-7ECB-72C6-F2B55E3FAA5B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 2 30 2 60 2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "pCube17_translateZ2";
	rename -uid "6B4FC41E-45F9-4888-A5C2-C48E96923281";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateX2";
	rename -uid "1406EE81-42F5-C82A-EA3C-DBB8F1E0BA86";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateY2";
	rename -uid "D8216E17-4387-7C24-2D3A-0DA0F1E5D260";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pCube17_rotateZ2";
	rename -uid "DE47598E-4E56-118D-F5C1-89861AD0C9C0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 60 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleX2";
	rename -uid "9E2F5C25-48AB-65B1-1074-759BE18A75A6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleY2";
	rename -uid "22363C6E-4DA6-F858-C0F8-938981D64930";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "pCube17_scaleZ2";
	rename -uid "80E686B8-4785-61C8-502B-4EA53ACAB22C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 60 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "locator1_translateX2";
	rename -uid "668C1097-4C9D-94C5-5BA7-05A942BC249B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -1.26265399443614e-15 60 -1.26265399443614e-15;
createNode animCurveTL -n "locator1_translateY2";
	rename -uid "0A49D41B-4130-B18F-7BB7-9EBD1C55FC13";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 2.3610027505262581 60 2.3610027505262581;
createNode animCurveTL -n "locator1_translateZ2";
	rename -uid "6B4687F4-49B9-85C8-5ED2-17BD72A53D5B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 9.001810489851034e-16 60 9.001810489851034e-16;
createNode animCurveTA -n "locator1_rotateX2";
	rename -uid "EFF5401E-4F8C-C708-38E3-D29875FD7AC5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "locator1_rotateY2";
	rename -uid "81496E52-4485-F4C0-5235-969E4747CCDD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTA -n "locator1_rotateZ2";
	rename -uid "12052F98-4152-8019-9DD8-E6AD6D6457E3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTU -n "locator1_scaleX2";
	rename -uid "0B00E87E-451E-D2A5-1628-089AAFFC78A7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTU -n "locator1_scaleY2";
	rename -uid "E626361E-4AFE-861D-8521-5189654D5015";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode animCurveTU -n "locator1_scaleZ2";
	rename -uid "3523A4F1-44C6-562E-9D59-DEB4D4E9D2BD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.42162201471011718 60 0.42162201471011718;
createNode polyCube -n "polyCube2";
	rename -uid "D8547F78-4E2A-C67A-A2EF-309C9443D825";
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 38;
	setAttr ".unw" 38;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".mbsof" 0.69999998807907104;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 3;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 78 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 60;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 60;
connectAttr "cone_1_translateX.o" "cone_1.tx";
connectAttr "cone_1_translateY.o" "cone_1.ty";
connectAttr "cone_1_translateZ.o" "cone_1.tz";
connectAttr "cone_1_rotateX.o" "cone_1.rx";
connectAttr "cone_1_rotateY.o" "cone_1.ry";
connectAttr "cone_1_rotateZ.o" "cone_1.rz";
connectAttr "cone_1_scaleX.o" "cone_1.sx";
connectAttr "cone_1_scaleY.o" "cone_1.sy";
connectAttr "cone_1_scaleZ.o" "cone_1.sz";
connectAttr "cone_2_visibility.o" "|cone_1|cone_2.v";
connectAttr "cone_2_translateX.o" "|cone_1|cone_2.tx";
connectAttr "cone_2_translateY.o" "|cone_1|cone_2.ty";
connectAttr "cone_2_translateZ.o" "|cone_1|cone_2.tz";
connectAttr "cone_2_rotateX.o" "|cone_1|cone_2.rx";
connectAttr "cone_2_rotateY.o" "|cone_1|cone_2.ry";
connectAttr "cone_2_rotateZ.o" "|cone_1|cone_2.rz";
connectAttr "cone_2_scaleX.o" "|cone_1|cone_2.sx";
connectAttr "cone_2_scaleY.o" "|cone_1|cone_2.sy";
connectAttr "cone_2_scaleZ.o" "|cone_1|cone_2.sz";
connectAttr "cone_3_visibility.o" "|cone_1|cone_2|cone_3.v";
connectAttr "cone_3_translateX.o" "|cone_1|cone_2|cone_3.tx";
connectAttr "cone_3_translateY.o" "|cone_1|cone_2|cone_3.ty";
connectAttr "cone_3_translateZ.o" "|cone_1|cone_2|cone_3.tz";
connectAttr "cone_3_rotateX.o" "|cone_1|cone_2|cone_3.rx";
connectAttr "cone_3_rotateY.o" "|cone_1|cone_2|cone_3.ry";
connectAttr "cone_3_rotateZ.o" "|cone_1|cone_2|cone_3.rz";
connectAttr "cone_3_scaleX.o" "|cone_1|cone_2|cone_3.sx";
connectAttr "cone_3_scaleY.o" "|cone_1|cone_2|cone_3.sy";
connectAttr "cone_3_scaleZ.o" "|cone_1|cone_2|cone_3.sz";
connectAttr "cone_4_visibility.o" "|cone_1|cone_2|cone_3|cone_4.v";
connectAttr "cone_4_translateX.o" "|cone_1|cone_2|cone_3|cone_4.tx";
connectAttr "cone_4_translateY.o" "|cone_1|cone_2|cone_3|cone_4.ty";
connectAttr "cone_4_translateZ.o" "|cone_1|cone_2|cone_3|cone_4.tz";
connectAttr "cone_4_rotateX.o" "|cone_1|cone_2|cone_3|cone_4.rx";
connectAttr "cone_4_rotateY.o" "|cone_1|cone_2|cone_3|cone_4.ry";
connectAttr "cone_4_rotateZ.o" "|cone_1|cone_2|cone_3|cone_4.rz";
connectAttr "cone_4_scaleX.o" "|cone_1|cone_2|cone_3|cone_4.sx";
connectAttr "cone_4_scaleY.o" "|cone_1|cone_2|cone_3|cone_4.sy";
connectAttr "cone_4_scaleZ.o" "|cone_1|cone_2|cone_3|cone_4.sz";
connectAttr "cone_5_visibility.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.v";
connectAttr "cone_5_translateX.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.tx";
connectAttr "cone_5_translateY.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.ty";
connectAttr "cone_5_translateZ.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.tz";
connectAttr "cone_5_rotateX.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.rx";
connectAttr "cone_5_rotateY.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.ry";
connectAttr "cone_5_rotateZ.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.rz";
connectAttr "cone_5_scaleX.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.sx";
connectAttr "cone_5_scaleY.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.sy";
connectAttr "cone_5_scaleZ.o" "|cone_1|cone_2|cone_3|cone_4|cone_5.sz";
connectAttr "aim_for_last_object_translateX.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.tx"
		;
connectAttr "aim_for_last_object_translateY.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.ty"
		;
connectAttr "aim_for_last_object_translateZ.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.tz"
		;
connectAttr "aim_for_last_object_visibility.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.v"
		;
connectAttr "aim_for_last_object_rotateX.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.rx"
		;
connectAttr "aim_for_last_object_rotateY.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.ry"
		;
connectAttr "aim_for_last_object_rotateZ.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.rz"
		;
connectAttr "aim_for_last_object_scaleX.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sx"
		;
connectAttr "aim_for_last_object_scaleY.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sy"
		;
connectAttr "aim_for_last_object_scaleZ.o" "|cone_1|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sz"
		;
connectAttr "cone_6_rotateX.o" "|cone_6.rx";
connectAttr "cone_2_translateX1.o" "|cone_6|cone_2.tx";
connectAttr "cone_2_translateY1.o" "|cone_6|cone_2.ty";
connectAttr "cone_2_translateZ1.o" "|cone_6|cone_2.tz";
connectAttr "cone_2_rotateX1.o" "|cone_6|cone_2.rx";
connectAttr "cone_2_rotateY1.o" "|cone_6|cone_2.ry";
connectAttr "cone_2_rotateZ1.o" "|cone_6|cone_2.rz";
connectAttr "cone_2_scaleX1.o" "|cone_6|cone_2.sx";
connectAttr "cone_2_scaleY1.o" "|cone_6|cone_2.sy";
connectAttr "cone_2_scaleZ1.o" "|cone_6|cone_2.sz";
connectAttr "cone_2_visibility1.o" "|cone_6|cone_2.v";
connectAttr "cone_3_visibility1.o" "|cone_6|cone_2|cone_3.v";
connectAttr "cone_3_translateX1.o" "|cone_6|cone_2|cone_3.tx";
connectAttr "cone_3_translateY1.o" "|cone_6|cone_2|cone_3.ty";
connectAttr "cone_3_translateZ1.o" "|cone_6|cone_2|cone_3.tz";
connectAttr "cone_3_rotateX1.o" "|cone_6|cone_2|cone_3.rx";
connectAttr "cone_3_rotateY1.o" "|cone_6|cone_2|cone_3.ry";
connectAttr "cone_3_rotateZ1.o" "|cone_6|cone_2|cone_3.rz";
connectAttr "cone_3_scaleX1.o" "|cone_6|cone_2|cone_3.sx";
connectAttr "cone_3_scaleY1.o" "|cone_6|cone_2|cone_3.sy";
connectAttr "cone_3_scaleZ1.o" "|cone_6|cone_2|cone_3.sz";
connectAttr "cone_4_visibility1.o" "|cone_6|cone_2|cone_3|cone_4.v";
connectAttr "cone_4_translateX1.o" "|cone_6|cone_2|cone_3|cone_4.tx";
connectAttr "cone_4_translateY1.o" "|cone_6|cone_2|cone_3|cone_4.ty";
connectAttr "cone_4_translateZ1.o" "|cone_6|cone_2|cone_3|cone_4.tz";
connectAttr "cone_4_rotateX1.o" "|cone_6|cone_2|cone_3|cone_4.rx";
connectAttr "cone_4_rotateY1.o" "|cone_6|cone_2|cone_3|cone_4.ry";
connectAttr "cone_4_rotateZ1.o" "|cone_6|cone_2|cone_3|cone_4.rz";
connectAttr "cone_4_scaleX1.o" "|cone_6|cone_2|cone_3|cone_4.sx";
connectAttr "cone_4_scaleY1.o" "|cone_6|cone_2|cone_3|cone_4.sy";
connectAttr "cone_4_scaleZ1.o" "|cone_6|cone_2|cone_3|cone_4.sz";
connectAttr "cone_5_visibility1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.v";
connectAttr "cone_5_translateX1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.tx";
connectAttr "cone_5_translateY1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.ty";
connectAttr "cone_5_translateZ1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.tz";
connectAttr "cone_5_rotateX1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.rx";
connectAttr "cone_5_rotateY1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.ry";
connectAttr "cone_5_rotateZ1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.rz";
connectAttr "cone_5_scaleX1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.sx";
connectAttr "cone_5_scaleY1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.sy";
connectAttr "cone_5_scaleZ1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5.sz";
connectAttr "aim_for_last_object_visibility1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.v"
		;
connectAttr "aim_for_last_object_translateX1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.tx"
		;
connectAttr "aim_for_last_object_translateY1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.ty"
		;
connectAttr "aim_for_last_object_translateZ1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.tz"
		;
connectAttr "aim_for_last_object_rotateX1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.rx"
		;
connectAttr "aim_for_last_object_rotateY1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.ry"
		;
connectAttr "aim_for_last_object_rotateZ1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.rz"
		;
connectAttr "aim_for_last_object_scaleX1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sx"
		;
connectAttr "aim_for_last_object_scaleY1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sy"
		;
connectAttr "aim_for_last_object_scaleZ1.o" "|cone_6|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sz"
		;
connectAttr "cone_6_rotateX3.o" "cone_12.rx";
connectAttr "cone_2_translateX4.o" "|cone_12|cone_2.tx";
connectAttr "cone_2_translateY4.o" "|cone_12|cone_2.ty";
connectAttr "cone_2_translateZ4.o" "|cone_12|cone_2.tz";
connectAttr "cone_2_rotateX4.o" "|cone_12|cone_2.rx";
connectAttr "cone_2_rotateY4.o" "|cone_12|cone_2.ry";
connectAttr "cone_2_rotateZ4.o" "|cone_12|cone_2.rz";
connectAttr "cone_2_scaleX2.o" "|cone_12|cone_2.sx";
connectAttr "cone_2_scaleY2.o" "|cone_12|cone_2.sy";
connectAttr "cone_2_scaleZ2.o" "|cone_12|cone_2.sz";
connectAttr "cone_2_visibility2.o" "|cone_12|cone_2.v";
connectAttr "cone_3_visibility2.o" "|cone_12|cone_2|cone_3.v";
connectAttr "cone_3_translateX4.o" "|cone_12|cone_2|cone_3.tx";
connectAttr "cone_3_translateY4.o" "|cone_12|cone_2|cone_3.ty";
connectAttr "cone_3_translateZ4.o" "|cone_12|cone_2|cone_3.tz";
connectAttr "cone_3_rotateX4.o" "|cone_12|cone_2|cone_3.rx";
connectAttr "cone_3_rotateY4.o" "|cone_12|cone_2|cone_3.ry";
connectAttr "cone_3_rotateZ4.o" "|cone_12|cone_2|cone_3.rz";
connectAttr "cone_3_scaleX2.o" "|cone_12|cone_2|cone_3.sx";
connectAttr "cone_3_scaleY2.o" "|cone_12|cone_2|cone_3.sy";
connectAttr "cone_3_scaleZ2.o" "|cone_12|cone_2|cone_3.sz";
connectAttr "cone_4_visibility2.o" "|cone_12|cone_2|cone_3|cone_4.v";
connectAttr "cone_4_translateX4.o" "|cone_12|cone_2|cone_3|cone_4.tx";
connectAttr "cone_4_translateY4.o" "|cone_12|cone_2|cone_3|cone_4.ty";
connectAttr "cone_4_translateZ4.o" "|cone_12|cone_2|cone_3|cone_4.tz";
connectAttr "cone_4_rotateX4.o" "|cone_12|cone_2|cone_3|cone_4.rx";
connectAttr "cone_4_rotateY4.o" "|cone_12|cone_2|cone_3|cone_4.ry";
connectAttr "cone_4_rotateZ4.o" "|cone_12|cone_2|cone_3|cone_4.rz";
connectAttr "cone_4_scaleX2.o" "|cone_12|cone_2|cone_3|cone_4.sx";
connectAttr "cone_4_scaleY2.o" "|cone_12|cone_2|cone_3|cone_4.sy";
connectAttr "cone_4_scaleZ2.o" "|cone_12|cone_2|cone_3|cone_4.sz";
connectAttr "cone_5_visibility2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.v";
connectAttr "cone_5_translateX4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.tx";
connectAttr "cone_5_translateY4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.ty";
connectAttr "cone_5_translateZ4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.tz";
connectAttr "cone_5_rotateX4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.rx";
connectAttr "cone_5_rotateY4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.ry";
connectAttr "cone_5_rotateZ4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.rz";
connectAttr "cone_5_scaleX2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.sx";
connectAttr "cone_5_scaleY2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.sy";
connectAttr "cone_5_scaleZ2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5.sz";
connectAttr "aim_for_last_object_visibility2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.v"
		;
connectAttr "aim_for_last_object_translateX4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.tx"
		;
connectAttr "aim_for_last_object_translateY4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.ty"
		;
connectAttr "aim_for_last_object_translateZ4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.tz"
		;
connectAttr "aim_for_last_object_rotateX4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.rx"
		;
connectAttr "aim_for_last_object_rotateY4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.ry"
		;
connectAttr "aim_for_last_object_rotateZ4.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.rz"
		;
connectAttr "aim_for_last_object_scaleX2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sx"
		;
connectAttr "aim_for_last_object_scaleY2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sy"
		;
connectAttr "aim_for_last_object_scaleZ2.o" "|cone_12|cone_2|cone_3|cone_4|cone_5|aim_for_last_object.sz"
		;
connectAttr "cone_6_rotateX1.o" "|cone_7.rx";
connectAttr "cone_2_translateX2.o" "|cone_7|cone_2.tx";
connectAttr "cone_2_translateY2.o" "|cone_7|cone_2.ty";
connectAttr "cone_2_translateZ2.o" "|cone_7|cone_2.tz";
connectAttr "cone_2_rotateX2.o" "|cone_7|cone_2.rx";
connectAttr "cone_2_rotateY2.o" "|cone_7|cone_2.ry";
connectAttr "cone_2_rotateZ2.o" "|cone_7|cone_2.rz";
connectAttr "cone_3_translateX2.o" "|cone_7|cone_2|cone_3.tx";
connectAttr "cone_3_translateY2.o" "|cone_7|cone_2|cone_3.ty";
connectAttr "cone_3_translateZ2.o" "|cone_7|cone_2|cone_3.tz";
connectAttr "cone_3_rotateX2.o" "|cone_7|cone_2|cone_3.rx";
connectAttr "cone_3_rotateY2.o" "|cone_7|cone_2|cone_3.ry";
connectAttr "cone_3_rotateZ2.o" "|cone_7|cone_2|cone_3.rz";
connectAttr "cone_4_translateX2.o" "|cone_7|cone_2|cone_3|cone_4.tx";
connectAttr "cone_4_translateY2.o" "|cone_7|cone_2|cone_3|cone_4.ty";
connectAttr "cone_4_translateZ2.o" "|cone_7|cone_2|cone_3|cone_4.tz";
connectAttr "cone_4_rotateX2.o" "|cone_7|cone_2|cone_3|cone_4.rx";
connectAttr "cone_4_rotateY2.o" "|cone_7|cone_2|cone_3|cone_4.ry";
connectAttr "cone_4_rotateZ2.o" "|cone_7|cone_2|cone_3|cone_4.rz";
connectAttr "cone_5_translateX2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5.tx";
connectAttr "cone_5_translateY2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5.ty";
connectAttr "cone_5_translateZ2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5.tz";
connectAttr "cone_5_rotateX2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5.rx";
connectAttr "cone_5_rotateY2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5.ry";
connectAttr "cone_5_rotateZ2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5.rz";
connectAttr "cone_6_translateX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6.tx"
		;
connectAttr "cone_6_translateY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6.ty"
		;
connectAttr "cone_6_translateZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6.tz"
		;
connectAttr "cone_6_rotate_Merged_Layer3_inputAX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6.rx"
		;
connectAttr "cone_6_rotate_Merged_Layer3_inputAY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6.ry"
		;
connectAttr "cone_6_rotate_Merged_Layer3_inputAZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6.rz"
		;
connectAttr "cone_7_translateX1.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.tx"
		;
connectAttr "cone_7_translateY1.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.ty"
		;
connectAttr "cone_7_translateZ1.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.tz"
		;
connectAttr "cone_7_rotate_Merged_Layer3_inputAX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.rx"
		;
connectAttr "cone_7_rotate_Merged_Layer3_inputAY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.ry"
		;
connectAttr "cone_7_rotate_Merged_Layer3_inputAZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.rz"
		;
connectAttr "cone_8_translateX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.tx"
		;
connectAttr "cone_8_translateY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.ty"
		;
connectAttr "cone_8_translateZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.tz"
		;
connectAttr "cone_8_rotate_Merged_Layer3_inputAX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.rx"
		;
connectAttr "cone_8_rotate_Merged_Layer3_inputAY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.ry"
		;
connectAttr "cone_8_rotate_Merged_Layer3_inputAZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.rz"
		;
connectAttr "cone_9_translateX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.tx"
		;
connectAttr "cone_9_translateY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.ty"
		;
connectAttr "cone_9_translateZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.tz"
		;
connectAttr "cone_9_rotate_Merged_Layer3_inputAX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.rx"
		;
connectAttr "cone_9_rotate_Merged_Layer3_inputAY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.ry"
		;
connectAttr "cone_9_rotate_Merged_Layer3_inputAZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.rz"
		;
connectAttr "cone_10_translateX.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.tx"
		;
connectAttr "cone_10_translateY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.ty"
		;
connectAttr "cone_10_translateZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.tz"
		;
connectAttr "cone_10_rotateX1.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.rx"
		;
connectAttr "cone_10_rotate_Merged_Layer3_inputAY.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.ry"
		;
connectAttr "cone_10_rotate_Merged_Layer3_inputAZ.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.rz"
		;
connectAttr "aim_for_last_object_translateX2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.tx"
		;
connectAttr "aim_for_last_object_translateY2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.ty"
		;
connectAttr "aim_for_last_object_translateZ2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.tz"
		;
connectAttr "aim_for_last_object_rotateX2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.rx"
		;
connectAttr "aim_for_last_object_rotateY2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.ry"
		;
connectAttr "aim_for_last_object_rotateZ2.o" "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.rz"
		;
connectAttr "cone_13_rotateX.o" "cone_13.rx";
connectAttr "cone_13_rotateY.o" "cone_13.ry";
connectAttr "cone_13_rotateZ.o" "cone_13.rz";
connectAttr "cone_13_translateX.o" "cone_13.tx";
connectAttr "cone_13_translateY.o" "cone_13.ty";
connectAttr "cone_13_translateZ.o" "cone_13.tz";
connectAttr "cone_2_translateX5.o" "|cone_13|cone_2.tx";
connectAttr "cone_2_translateY5.o" "|cone_13|cone_2.ty";
connectAttr "cone_2_translateZ5.o" "|cone_13|cone_2.tz";
connectAttr "cone_2_rotateX5.o" "|cone_13|cone_2.rx";
connectAttr "cone_2_rotateY5.o" "|cone_13|cone_2.ry";
connectAttr "cone_2_rotateZ5.o" "|cone_13|cone_2.rz";
connectAttr "cone_3_translateX5.o" "|cone_13|cone_2|cone_3.tx";
connectAttr "cone_3_translateY5.o" "|cone_13|cone_2|cone_3.ty";
connectAttr "cone_3_translateZ5.o" "|cone_13|cone_2|cone_3.tz";
connectAttr "cone_3_rotateX5.o" "|cone_13|cone_2|cone_3.rx";
connectAttr "cone_3_rotateY5.o" "|cone_13|cone_2|cone_3.ry";
connectAttr "cone_3_rotateZ5.o" "|cone_13|cone_2|cone_3.rz";
connectAttr "cone_4_translateX5.o" "|cone_13|cone_2|cone_3|cone_4.tx";
connectAttr "cone_4_translateY5.o" "|cone_13|cone_2|cone_3|cone_4.ty";
connectAttr "cone_4_translateZ5.o" "|cone_13|cone_2|cone_3|cone_4.tz";
connectAttr "cone_4_rotateX5.o" "|cone_13|cone_2|cone_3|cone_4.rx";
connectAttr "cone_4_rotateY5.o" "|cone_13|cone_2|cone_3|cone_4.ry";
connectAttr "cone_4_rotateZ5.o" "|cone_13|cone_2|cone_3|cone_4.rz";
connectAttr "cone_5_translateX5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5.tx";
connectAttr "cone_5_translateY5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5.ty";
connectAttr "cone_5_translateZ5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5.tz";
connectAttr "cone_5_rotateX5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5.rx";
connectAttr "cone_5_rotateY5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5.ry";
connectAttr "cone_5_rotateZ5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5.rz";
connectAttr "cone_6_translateX1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6.tx"
		;
connectAttr "cone_6_translateY1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6.ty"
		;
connectAttr "cone_6_translateZ1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6.tz"
		;
connectAttr "cone_6_rotateX4.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6.rx"
		;
connectAttr "cone_6_rotateY.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6.ry";
connectAttr "cone_6_rotateZ.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6.rz";
connectAttr "cone_7_translateX.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.tx"
		;
connectAttr "cone_7_translateY.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.ty"
		;
connectAttr "cone_7_translateZ.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.tz"
		;
connectAttr "cone_7_rotateX.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.rx"
		;
connectAttr "cone_7_rotateY.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.ry"
		;
connectAttr "cone_7_rotateZ.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7.rz"
		;
connectAttr "cone_8_translateX1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.tx"
		;
connectAttr "cone_8_translateY1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.ty"
		;
connectAttr "cone_8_translateZ1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.tz"
		;
connectAttr "cone_8_rotateX.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.rx"
		;
connectAttr "cone_8_rotateY.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.ry"
		;
connectAttr "cone_8_rotateZ.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8.rz"
		;
connectAttr "cone_9_translateX1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.tx"
		;
connectAttr "cone_9_translateY1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.ty"
		;
connectAttr "cone_9_translateZ1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.tz"
		;
connectAttr "cone_9_rotateX.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.rx"
		;
connectAttr "cone_9_rotateY.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.ry"
		;
connectAttr "cone_9_rotateZ.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9.rz"
		;
connectAttr "cone_10_translateX1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.tx"
		;
connectAttr "cone_10_translateY1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.ty"
		;
connectAttr "cone_10_translateZ1.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.tz"
		;
connectAttr "cone_10_rotateX.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.rx"
		;
connectAttr "cone_10_rotateY.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.ry"
		;
connectAttr "cone_10_rotateZ.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10.rz"
		;
connectAttr "aim_for_last_object_translateX5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.tx"
		;
connectAttr "aim_for_last_object_translateY5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.ty"
		;
connectAttr "aim_for_last_object_translateZ5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.tz"
		;
connectAttr "aim_for_last_object_rotateX5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.rx"
		;
connectAttr "aim_for_last_object_rotateY5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.ry"
		;
connectAttr "aim_for_last_object_rotateZ5.o" "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|aim_for_last_object.rz"
		;
connectAttr "cone_14_rotateX.o" "cone_14.rx";
connectAttr "pCube1_translateX.o" "pCube1.tx";
connectAttr "pCube1_translateY.o" "pCube1.ty";
connectAttr "pCube1_translateZ.o" "pCube1.tz";
connectAttr "pCube1_rotateX.o" "pCube1.rx";
connectAttr "pCube1_rotateY.o" "pCube1.ry";
connectAttr "pCube1_rotateZ.o" "pCube1.rz";
connectAttr "pCube1_scaleX.o" "pCube1.sx";
connectAttr "pCube1_scaleY.o" "pCube1.sy";
connectAttr "pCube1_scaleZ.o" "pCube1.sz";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "pCube7_visibility.o" "pCube7.v";
connectAttr "pCube7_translateX.o" "pCube7.tx";
connectAttr "pCube7_translateY.o" "pCube7.ty";
connectAttr "pCube7_translateZ.o" "pCube7.tz";
connectAttr "pCube7_rotateX.o" "pCube7.rx";
connectAttr "pCube7_rotateY.o" "pCube7.ry";
connectAttr "pCube7_rotateZ.o" "pCube7.rz";
connectAttr "pCube7_scaleX.o" "pCube7.sx";
connectAttr "pCube7_scaleY.o" "pCube7.sy";
connectAttr "pCube7_scaleZ.o" "pCube7.sz";
connectAttr "pCube8_visibility.o" "pCube8.v";
connectAttr "pCube8_translateX.o" "pCube8.tx";
connectAttr "pCube8_translateY.o" "pCube8.ty";
connectAttr "pCube8_translateZ.o" "pCube8.tz";
connectAttr "pCube8_rotateX.o" "pCube8.rx";
connectAttr "pCube8_rotateY.o" "pCube8.ry";
connectAttr "pCube8_rotateZ.o" "pCube8.rz";
connectAttr "pCube8_scaleX.o" "pCube8.sx";
connectAttr "pCube8_scaleY.o" "pCube8.sy";
connectAttr "pCube8_scaleZ.o" "pCube8.sz";
connectAttr "pCube9_visibility.o" "pCube9.v";
connectAttr "pCube9_translateX.o" "pCube9.tx";
connectAttr "pCube9_translateY.o" "pCube9.ty";
connectAttr "pCube9_translateZ.o" "pCube9.tz";
connectAttr "pCube9_rotateX.o" "pCube9.rx";
connectAttr "pCube9_rotateY.o" "pCube9.ry";
connectAttr "pCube9_rotateZ.o" "pCube9.rz";
connectAttr "pCube9_scaleX.o" "pCube9.sx";
connectAttr "pCube9_scaleY.o" "pCube9.sy";
connectAttr "pCube9_scaleZ.o" "pCube9.sz";
connectAttr "pCube10_visibility.o" "pCube10.v";
connectAttr "pCube10_translateX.o" "pCube10.tx";
connectAttr "pCube10_translateY.o" "pCube10.ty";
connectAttr "pCube10_translateZ.o" "pCube10.tz";
connectAttr "pCube10_rotateX.o" "pCube10.rx";
connectAttr "pCube10_rotateY.o" "pCube10.ry";
connectAttr "pCube10_rotateZ.o" "pCube10.rz";
connectAttr "pCube10_scaleX.o" "pCube10.sx";
connectAttr "pCube10_scaleY.o" "pCube10.sy";
connectAttr "pCube10_scaleZ.o" "pCube10.sz";
connectAttr "pCube11_visibility.o" "pCube11.v";
connectAttr "pCube11_translateX.o" "pCube11.tx";
connectAttr "pCube11_translateY.o" "pCube11.ty";
connectAttr "pCube11_translateZ.o" "pCube11.tz";
connectAttr "pCube11_rotateX.o" "pCube11.rx";
connectAttr "pCube11_rotateY.o" "pCube11.ry";
connectAttr "pCube11_rotateZ.o" "pCube11.rz";
connectAttr "pCube11_scaleX.o" "pCube11.sx";
connectAttr "pCube11_scaleY.o" "pCube11.sy";
connectAttr "pCube11_scaleZ.o" "pCube11.sz";
connectAttr "pCube21_translateX.o" "pCube21.tx";
connectAttr "pCube21_translateY.o" "pCube21.ty";
connectAttr "pCube21_translateZ.o" "pCube21.tz";
connectAttr "pCube21_rotateX.o" "pCube21.rx";
connectAttr "pCube21_rotateY.o" "pCube21.ry";
connectAttr "pCube21_rotateZ.o" "pCube21.rz";
connectAttr "pCube21_scaleX.o" "pCube21.sx";
connectAttr "pCube21_scaleY.o" "pCube21.sy";
connectAttr "pCube21_scaleZ.o" "pCube21.sz";
connectAttr "pCube22_visibility.o" "|pCube21|pCube22.v";
connectAttr "pCube22_translateX.o" "|pCube21|pCube22.tx";
connectAttr "pCube22_translateY.o" "|pCube21|pCube22.ty";
connectAttr "pCube22_translateZ.o" "|pCube21|pCube22.tz";
connectAttr "pCube22_rotateX.o" "|pCube21|pCube22.rx";
connectAttr "pCube22_rotateY.o" "|pCube21|pCube22.ry";
connectAttr "pCube22_rotateZ.o" "|pCube21|pCube22.rz";
connectAttr "pCube22_scaleX.o" "|pCube21|pCube22.sx";
connectAttr "pCube22_scaleY.o" "|pCube21|pCube22.sy";
connectAttr "pCube22_scaleZ.o" "|pCube21|pCube22.sz";
connectAttr "pCube20_visibility.o" "|pCube21|pCube22|pCube20.v";
connectAttr "pCube20_translateX.o" "|pCube21|pCube22|pCube20.tx";
connectAttr "pCube20_translateY.o" "|pCube21|pCube22|pCube20.ty";
connectAttr "pCube20_translateZ.o" "|pCube21|pCube22|pCube20.tz";
connectAttr "pCube20_rotateX.o" "|pCube21|pCube22|pCube20.rx";
connectAttr "pCube20_rotateY.o" "|pCube21|pCube22|pCube20.ry";
connectAttr "pCube20_rotateZ.o" "|pCube21|pCube22|pCube20.rz";
connectAttr "pCube20_scaleX.o" "|pCube21|pCube22|pCube20.sx";
connectAttr "pCube20_scaleY.o" "|pCube21|pCube22|pCube20.sy";
connectAttr "pCube20_scaleZ.o" "|pCube21|pCube22|pCube20.sz";
connectAttr "pCube19_visibility.o" "|pCube21|pCube22|pCube20|pCube19.v";
connectAttr "pCube19_translateX.o" "|pCube21|pCube22|pCube20|pCube19.tx";
connectAttr "pCube19_translateY.o" "|pCube21|pCube22|pCube20|pCube19.ty";
connectAttr "pCube19_translateZ.o" "|pCube21|pCube22|pCube20|pCube19.tz";
connectAttr "pCube19_rotateX.o" "|pCube21|pCube22|pCube20|pCube19.rx";
connectAttr "pCube19_rotateY.o" "|pCube21|pCube22|pCube20|pCube19.ry";
connectAttr "pCube19_rotateZ.o" "|pCube21|pCube22|pCube20|pCube19.rz";
connectAttr "pCube19_scaleX.o" "|pCube21|pCube22|pCube20|pCube19.sx";
connectAttr "pCube19_scaleY.o" "|pCube21|pCube22|pCube20|pCube19.sy";
connectAttr "pCube19_scaleZ.o" "|pCube21|pCube22|pCube20|pCube19.sz";
connectAttr "pCube18_visibility.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.v";
connectAttr "pCube18_translateX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.tx"
		;
connectAttr "pCube18_translateY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.ty"
		;
connectAttr "pCube18_translateZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.tz"
		;
connectAttr "pCube18_rotateX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.rx";
connectAttr "pCube18_rotateY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.ry";
connectAttr "pCube18_rotateZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.rz";
connectAttr "pCube18_scaleX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.sx";
connectAttr "pCube18_scaleY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.sy";
connectAttr "pCube18_scaleZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18.sz";
connectAttr "pCube17_visibility.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.v"
		;
connectAttr "pCube17_translateX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.tx"
		;
connectAttr "pCube17_translateY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.ty"
		;
connectAttr "pCube17_translateZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.tz"
		;
connectAttr "pCube17_rotateX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.rx"
		;
connectAttr "pCube17_rotateY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.ry"
		;
connectAttr "pCube17_rotateZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.rz"
		;
connectAttr "pCube17_scaleX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.sx"
		;
connectAttr "pCube17_scaleY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.sy"
		;
connectAttr "pCube17_scaleZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17.sz"
		;
connectAttr "locator1_translateX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.tx"
		;
connectAttr "locator1_translateY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.ty"
		;
connectAttr "locator1_translateZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.tz"
		;
connectAttr "locator1_rotateX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.rx"
		;
connectAttr "locator1_rotateY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.ry"
		;
connectAttr "locator1_rotateZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.rz"
		;
connectAttr "locator1_scaleX.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sx"
		;
connectAttr "locator1_scaleY.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sy"
		;
connectAttr "locator1_scaleZ.o" "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sz"
		;
connectAttr "pCube26_translateX.o" "pCube26.tx";
connectAttr "pCube26_translateY.o" "pCube26.ty";
connectAttr "pCube26_translateZ.o" "pCube26.tz";
connectAttr "pCube26_rotateX.o" "pCube26.rx";
connectAttr "pCube26_rotateY.o" "pCube26.ry";
connectAttr "pCube26_rotateZ.o" "pCube26.rz";
connectAttr "pCube26_scaleX.o" "pCube26.sx";
connectAttr "pCube26_scaleY.o" "pCube26.sy";
connectAttr "pCube26_scaleZ.o" "pCube26.sz";
connectAttr "pCube25_visibility.o" "pCube25.v";
connectAttr "pCube25_translateX.o" "pCube25.tx";
connectAttr "pCube25_translateY.o" "pCube25.ty";
connectAttr "pCube25_translateZ.o" "pCube25.tz";
connectAttr "pCube25_rotateX.o" "pCube25.rx";
connectAttr "pCube25_rotateY.o" "pCube25.ry";
connectAttr "pCube25_rotateZ.o" "pCube25.rz";
connectAttr "pCube25_scaleX.o" "pCube25.sx";
connectAttr "pCube25_scaleY.o" "pCube25.sy";
connectAttr "pCube25_scaleZ.o" "pCube25.sz";
connectAttr "pCube23_visibility.o" "pCube23.v";
connectAttr "pCube23_translateX.o" "pCube23.tx";
connectAttr "pCube23_translateY.o" "pCube23.ty";
connectAttr "pCube23_translateZ.o" "pCube23.tz";
connectAttr "pCube23_rotateX.o" "pCube23.rx";
connectAttr "pCube23_rotateY.o" "pCube23.ry";
connectAttr "pCube23_rotateZ.o" "pCube23.rz";
connectAttr "pCube23_scaleX.o" "pCube23.sx";
connectAttr "pCube23_scaleY.o" "pCube23.sy";
connectAttr "pCube23_scaleZ.o" "pCube23.sz";
connectAttr "pCube24_visibility.o" "pCube24.v";
connectAttr "pCube24_translateX.o" "pCube24.tx";
connectAttr "pCube24_translateY.o" "pCube24.ty";
connectAttr "pCube24_translateZ.o" "pCube24.tz";
connectAttr "pCube24_rotateX.o" "pCube24.rx";
connectAttr "pCube24_rotateY.o" "pCube24.ry";
connectAttr "pCube24_rotateZ.o" "pCube24.rz";
connectAttr "pCube24_scaleX.o" "pCube24.sx";
connectAttr "pCube24_scaleY.o" "pCube24.sy";
connectAttr "pCube24_scaleZ.o" "pCube24.sz";
connectAttr "pCube28_visibility.o" "pCube28.v";
connectAttr "pCube28_translateX.o" "pCube28.tx";
connectAttr "pCube28_translateY.o" "pCube28.ty";
connectAttr "pCube28_translateZ.o" "pCube28.tz";
connectAttr "pCube28_rotateX.o" "pCube28.rx";
connectAttr "pCube28_rotateY.o" "pCube28.ry";
connectAttr "pCube28_rotateZ.o" "pCube28.rz";
connectAttr "pCube28_scaleX.o" "pCube28.sx";
connectAttr "pCube28_scaleY.o" "pCube28.sy";
connectAttr "pCube28_scaleZ.o" "pCube28.sz";
connectAttr "pCube27_visibility.o" "pCube27.v";
connectAttr "pCube27_translateX.o" "pCube27.tx";
connectAttr "pCube27_translateY.o" "pCube27.ty";
connectAttr "pCube27_translateZ.o" "pCube27.tz";
connectAttr "pCube27_rotateX.o" "pCube27.rx";
connectAttr "pCube27_rotateY.o" "pCube27.ry";
connectAttr "pCube27_rotateZ.o" "pCube27.rz";
connectAttr "pCube27_scaleX.o" "pCube27.sx";
connectAttr "pCube27_scaleY.o" "pCube27.sy";
connectAttr "pCube27_scaleZ.o" "pCube27.sz";
connectAttr "joint14_scaleX.o" "joint14.sx";
connectAttr "joint14_scaleY.o" "joint14.sy";
connectAttr "joint14_scaleZ.o" "joint14.sz";
connectAttr "joint14_translateX.o" "joint14.tx";
connectAttr "joint14_translateY.o" "joint14.ty";
connectAttr "joint14_translateZ.o" "joint14.tz";
connectAttr "joint14_rotateY.o" "joint14.ry";
connectAttr "joint14_rotateX.o" "joint14.rx";
connectAttr "joint14_rotateZ.o" "joint14.rz";
connectAttr "joint14.s" "|joint14|joint2.is";
connectAttr "joint2_scaleX2.o" "|joint14|joint2.sx";
connectAttr "joint2_scaleY2.o" "|joint14|joint2.sy";
connectAttr "joint2_scaleZ2.o" "|joint14|joint2.sz";
connectAttr "joint2_visibility2.o" "|joint14|joint2.v";
connectAttr "joint2_translateX2.o" "|joint14|joint2.tx";
connectAttr "joint2_translateY2.o" "|joint14|joint2.ty";
connectAttr "joint2_translateZ2.o" "|joint14|joint2.tz";
connectAttr "joint2_rotateX2.o" "|joint14|joint2.rx";
connectAttr "joint2_rotateY2.o" "|joint14|joint2.ry";
connectAttr "joint2_rotateZ2.o" "|joint14|joint2.rz";
connectAttr "|joint14|joint2.s" "|joint14|joint2|joint3.is";
connectAttr "joint3_scaleX2.o" "|joint14|joint2|joint3.sx";
connectAttr "joint3_scaleY2.o" "|joint14|joint2|joint3.sy";
connectAttr "joint3_scaleZ2.o" "|joint14|joint2|joint3.sz";
connectAttr "joint3_visibility2.o" "|joint14|joint2|joint3.v";
connectAttr "joint3_translateX2.o" "|joint14|joint2|joint3.tx";
connectAttr "joint3_translateY2.o" "|joint14|joint2|joint3.ty";
connectAttr "joint3_translateZ2.o" "|joint14|joint2|joint3.tz";
connectAttr "joint3_rotateX2.o" "|joint14|joint2|joint3.rx";
connectAttr "joint3_rotateY2.o" "|joint14|joint2|joint3.ry";
connectAttr "joint3_rotateZ2.o" "|joint14|joint2|joint3.rz";
connectAttr "|joint14|joint2|joint3.s" "|joint14|joint2|joint3|joint4.is";
connectAttr "joint4_scaleX2.o" "|joint14|joint2|joint3|joint4.sx";
connectAttr "joint4_scaleY2.o" "|joint14|joint2|joint3|joint4.sy";
connectAttr "joint4_scaleZ2.o" "|joint14|joint2|joint3|joint4.sz";
connectAttr "joint4_visibility2.o" "|joint14|joint2|joint3|joint4.v";
connectAttr "joint4_translateX2.o" "|joint14|joint2|joint3|joint4.tx";
connectAttr "joint4_translateY2.o" "|joint14|joint2|joint3|joint4.ty";
connectAttr "joint4_translateZ2.o" "|joint14|joint2|joint3|joint4.tz";
connectAttr "joint4_rotateX2.o" "|joint14|joint2|joint3|joint4.rx";
connectAttr "joint4_rotateY2.o" "|joint14|joint2|joint3|joint4.ry";
connectAttr "joint4_rotateZ2.o" "|joint14|joint2|joint3|joint4.rz";
connectAttr "|joint14|joint2|joint3|joint4.s" "|joint14|joint2|joint3|joint4|joint5.is"
		;
connectAttr "joint5_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5.sx";
connectAttr "joint5_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5.sy";
connectAttr "joint5_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5.sz";
connectAttr "joint5_visibility2.o" "|joint14|joint2|joint3|joint4|joint5.v";
connectAttr "joint5_translateX2.o" "|joint14|joint2|joint3|joint4|joint5.tx";
connectAttr "joint5_translateY2.o" "|joint14|joint2|joint3|joint4|joint5.ty";
connectAttr "joint5_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5.tz";
connectAttr "joint5_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5.rx";
connectAttr "joint5_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5.ry";
connectAttr "joint5_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5.rz";
connectAttr "|joint14|joint2|joint3|joint4|joint5.s" "|joint14|joint2|joint3|joint4|joint5|joint6.is"
		;
connectAttr "joint6_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.sx";
connectAttr "joint6_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.sy";
connectAttr "joint6_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.sz";
connectAttr "joint6_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.v"
		;
connectAttr "joint6_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.tx"
		;
connectAttr "joint6_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.ty"
		;
connectAttr "joint6_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.tz"
		;
connectAttr "joint6_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.rx"
		;
connectAttr "joint6_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.ry"
		;
connectAttr "joint6_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6.rz"
		;
connectAttr "|joint14|joint2|joint3|joint4|joint5|joint6.s" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.is"
		;
connectAttr "joint7_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.sx"
		;
connectAttr "joint7_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.sy"
		;
connectAttr "joint7_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.sz"
		;
connectAttr "joint7_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.v"
		;
connectAttr "joint7_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.tx"
		;
connectAttr "joint7_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.ty"
		;
connectAttr "joint7_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.tz"
		;
connectAttr "joint7_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.rx"
		;
connectAttr "joint7_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.ry"
		;
connectAttr "joint7_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.rz"
		;
connectAttr "|joint14|joint2|joint3|joint4|joint5|joint6|joint7.s" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.is"
		;
connectAttr "joint8_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sx"
		;
connectAttr "joint8_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sy"
		;
connectAttr "joint8_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sz"
		;
connectAttr "joint8_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.v"
		;
connectAttr "joint8_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.tx"
		;
connectAttr "joint8_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.ty"
		;
connectAttr "joint8_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.tz"
		;
connectAttr "joint8_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.rx"
		;
connectAttr "joint8_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.ry"
		;
connectAttr "joint8_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.rz"
		;
connectAttr "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8.s" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.is"
		;
connectAttr "joint9_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sx"
		;
connectAttr "joint9_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sy"
		;
connectAttr "joint9_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sz"
		;
connectAttr "joint9_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.v"
		;
connectAttr "joint9_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.tx"
		;
connectAttr "joint9_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.ty"
		;
connectAttr "joint9_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.tz"
		;
connectAttr "joint9_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.rx"
		;
connectAttr "joint9_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.ry"
		;
connectAttr "joint9_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.rz"
		;
connectAttr "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.s" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.is"
		;
connectAttr "joint10_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sx"
		;
connectAttr "joint10_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sy"
		;
connectAttr "joint10_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sz"
		;
connectAttr "joint10_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.v"
		;
connectAttr "joint10_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.tx"
		;
connectAttr "joint10_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.ty"
		;
connectAttr "joint10_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.tz"
		;
connectAttr "joint10_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.rx"
		;
connectAttr "joint10_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.ry"
		;
connectAttr "joint10_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.rz"
		;
connectAttr "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.s" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.is"
		;
connectAttr "joint11_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sx"
		;
connectAttr "joint11_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sy"
		;
connectAttr "joint11_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sz"
		;
connectAttr "joint11_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.v"
		;
connectAttr "joint11_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.tx"
		;
connectAttr "joint11_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.ty"
		;
connectAttr "joint11_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.tz"
		;
connectAttr "joint11_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.rx"
		;
connectAttr "joint11_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.ry"
		;
connectAttr "joint11_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.rz"
		;
connectAttr "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.s" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.is"
		;
connectAttr "joint12_visibility2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.v"
		;
connectAttr "joint12_translateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.tx"
		;
connectAttr "joint12_translateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.ty"
		;
connectAttr "joint12_translateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.tz"
		;
connectAttr "joint12_rotateX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.rx"
		;
connectAttr "joint12_rotateY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.ry"
		;
connectAttr "joint12_rotateZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.rz"
		;
connectAttr "joint12_scaleX2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sx"
		;
connectAttr "joint12_scaleY2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sy"
		;
connectAttr "joint12_scaleZ2.o" "|joint14|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sz"
		;
connectAttr "joint13_scaleX.o" "joint13.sx";
connectAttr "joint13_scaleY.o" "joint13.sy";
connectAttr "joint13_scaleZ.o" "joint13.sz";
connectAttr "joint13_translateX.o" "joint13.tx";
connectAttr "joint13_translateY.o" "joint13.ty";
connectAttr "joint13_translateZ.o" "joint13.tz";
connectAttr "joint13_rotateY.o" "joint13.ry";
connectAttr "joint13_rotateX.o" "joint13.rx";
connectAttr "joint13_rotateZ.o" "joint13.rz";
connectAttr "joint13.s" "|joint13|joint2.is";
connectAttr "joint2_scaleX1.o" "|joint13|joint2.sx";
connectAttr "joint2_scaleY1.o" "|joint13|joint2.sy";
connectAttr "joint2_scaleZ1.o" "|joint13|joint2.sz";
connectAttr "joint2_visibility1.o" "|joint13|joint2.v";
connectAttr "joint2_translateX1.o" "|joint13|joint2.tx";
connectAttr "joint2_translateY1.o" "|joint13|joint2.ty";
connectAttr "joint2_translateZ1.o" "|joint13|joint2.tz";
connectAttr "joint2_rotateX1.o" "|joint13|joint2.rx";
connectAttr "joint2_rotateY1.o" "|joint13|joint2.ry";
connectAttr "joint2_rotateZ1.o" "|joint13|joint2.rz";
connectAttr "|joint13|joint2.s" "|joint13|joint2|joint3.is";
connectAttr "joint3_scaleX1.o" "|joint13|joint2|joint3.sx";
connectAttr "joint3_scaleY1.o" "|joint13|joint2|joint3.sy";
connectAttr "joint3_scaleZ1.o" "|joint13|joint2|joint3.sz";
connectAttr "joint3_visibility1.o" "|joint13|joint2|joint3.v";
connectAttr "joint3_translateX1.o" "|joint13|joint2|joint3.tx";
connectAttr "joint3_translateY1.o" "|joint13|joint2|joint3.ty";
connectAttr "joint3_translateZ1.o" "|joint13|joint2|joint3.tz";
connectAttr "joint3_rotateX1.o" "|joint13|joint2|joint3.rx";
connectAttr "joint3_rotateY1.o" "|joint13|joint2|joint3.ry";
connectAttr "joint3_rotateZ1.o" "|joint13|joint2|joint3.rz";
connectAttr "|joint13|joint2|joint3.s" "|joint13|joint2|joint3|joint4.is";
connectAttr "joint4_scaleX1.o" "|joint13|joint2|joint3|joint4.sx";
connectAttr "joint4_scaleY1.o" "|joint13|joint2|joint3|joint4.sy";
connectAttr "joint4_scaleZ1.o" "|joint13|joint2|joint3|joint4.sz";
connectAttr "joint4_visibility1.o" "|joint13|joint2|joint3|joint4.v";
connectAttr "joint4_translateX1.o" "|joint13|joint2|joint3|joint4.tx";
connectAttr "joint4_translateY1.o" "|joint13|joint2|joint3|joint4.ty";
connectAttr "joint4_translateZ1.o" "|joint13|joint2|joint3|joint4.tz";
connectAttr "joint4_rotateX1.o" "|joint13|joint2|joint3|joint4.rx";
connectAttr "joint4_rotateY1.o" "|joint13|joint2|joint3|joint4.ry";
connectAttr "joint4_rotateZ1.o" "|joint13|joint2|joint3|joint4.rz";
connectAttr "|joint13|joint2|joint3|joint4.s" "|joint13|joint2|joint3|joint4|joint5.is"
		;
connectAttr "joint5_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5.sx";
connectAttr "joint5_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5.sy";
connectAttr "joint5_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5.sz";
connectAttr "joint5_visibility1.o" "|joint13|joint2|joint3|joint4|joint5.v";
connectAttr "joint5_translateX1.o" "|joint13|joint2|joint3|joint4|joint5.tx";
connectAttr "joint5_translateY1.o" "|joint13|joint2|joint3|joint4|joint5.ty";
connectAttr "joint5_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5.tz";
connectAttr "joint5_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5.rx";
connectAttr "joint5_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5.ry";
connectAttr "joint5_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5.rz";
connectAttr "|joint13|joint2|joint3|joint4|joint5.s" "|joint13|joint2|joint3|joint4|joint5|joint6.is"
		;
connectAttr "joint6_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.sx";
connectAttr "joint6_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.sy";
connectAttr "joint6_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.sz";
connectAttr "joint6_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.v"
		;
connectAttr "joint6_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.tx"
		;
connectAttr "joint6_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.ty"
		;
connectAttr "joint6_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.tz"
		;
connectAttr "joint6_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.rx"
		;
connectAttr "joint6_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.ry"
		;
connectAttr "joint6_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6.rz"
		;
connectAttr "|joint13|joint2|joint3|joint4|joint5|joint6.s" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.is"
		;
connectAttr "joint7_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.sx"
		;
connectAttr "joint7_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.sy"
		;
connectAttr "joint7_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.sz"
		;
connectAttr "joint7_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.v"
		;
connectAttr "joint7_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.tx"
		;
connectAttr "joint7_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.ty"
		;
connectAttr "joint7_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.tz"
		;
connectAttr "joint7_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.rx"
		;
connectAttr "joint7_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.ry"
		;
connectAttr "joint7_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.rz"
		;
connectAttr "|joint13|joint2|joint3|joint4|joint5|joint6|joint7.s" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.is"
		;
connectAttr "joint8_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sx"
		;
connectAttr "joint8_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sy"
		;
connectAttr "joint8_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sz"
		;
connectAttr "joint8_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.v"
		;
connectAttr "joint8_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.tx"
		;
connectAttr "joint8_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.ty"
		;
connectAttr "joint8_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.tz"
		;
connectAttr "joint8_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.rx"
		;
connectAttr "joint8_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.ry"
		;
connectAttr "joint8_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.rz"
		;
connectAttr "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8.s" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.is"
		;
connectAttr "joint9_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sx"
		;
connectAttr "joint9_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sy"
		;
connectAttr "joint9_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sz"
		;
connectAttr "joint9_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.v"
		;
connectAttr "joint9_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.tx"
		;
connectAttr "joint9_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.ty"
		;
connectAttr "joint9_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.tz"
		;
connectAttr "joint9_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.rx"
		;
connectAttr "joint9_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.ry"
		;
connectAttr "joint9_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.rz"
		;
connectAttr "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.s" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.is"
		;
connectAttr "joint10_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sx"
		;
connectAttr "joint10_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sy"
		;
connectAttr "joint10_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sz"
		;
connectAttr "joint10_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.v"
		;
connectAttr "joint10_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.tx"
		;
connectAttr "joint10_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.ty"
		;
connectAttr "joint10_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.tz"
		;
connectAttr "joint10_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.rx"
		;
connectAttr "joint10_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.ry"
		;
connectAttr "joint10_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.rz"
		;
connectAttr "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.s" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.is"
		;
connectAttr "joint11_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sx"
		;
connectAttr "joint11_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sy"
		;
connectAttr "joint11_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sz"
		;
connectAttr "joint11_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.v"
		;
connectAttr "joint11_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.tx"
		;
connectAttr "joint11_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.ty"
		;
connectAttr "joint11_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.tz"
		;
connectAttr "joint11_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.rx"
		;
connectAttr "joint11_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.ry"
		;
connectAttr "joint11_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.rz"
		;
connectAttr "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.s" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.is"
		;
connectAttr "joint12_visibility1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.v"
		;
connectAttr "joint12_translateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.tx"
		;
connectAttr "joint12_translateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.ty"
		;
connectAttr "joint12_translateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.tz"
		;
connectAttr "joint12_rotateX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.rx"
		;
connectAttr "joint12_rotateY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.ry"
		;
connectAttr "joint12_rotateZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.rz"
		;
connectAttr "joint12_scaleX1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sx"
		;
connectAttr "joint12_scaleY1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sy"
		;
connectAttr "joint12_scaleZ1.o" "|joint13|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sz"
		;
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1.s" "|joint1|joint2.is";
connectAttr "joint2_scaleX.o" "|joint1|joint2.sx";
connectAttr "joint2_scaleY.o" "|joint1|joint2.sy";
connectAttr "joint2_scaleZ.o" "|joint1|joint2.sz";
connectAttr "joint2_visibility.o" "|joint1|joint2.v";
connectAttr "joint2_translateX.o" "|joint1|joint2.tx";
connectAttr "joint2_translateY.o" "|joint1|joint2.ty";
connectAttr "joint2_translateZ.o" "|joint1|joint2.tz";
connectAttr "joint2_rotateX.o" "|joint1|joint2.rx";
connectAttr "joint2_rotateY.o" "|joint1|joint2.ry";
connectAttr "joint2_rotateZ.o" "|joint1|joint2.rz";
connectAttr "|joint1|joint2.s" "|joint1|joint2|joint3.is";
connectAttr "joint3_scaleX.o" "|joint1|joint2|joint3.sx";
connectAttr "joint3_scaleY.o" "|joint1|joint2|joint3.sy";
connectAttr "joint3_scaleZ.o" "|joint1|joint2|joint3.sz";
connectAttr "joint3_visibility.o" "|joint1|joint2|joint3.v";
connectAttr "joint3_translateX.o" "|joint1|joint2|joint3.tx";
connectAttr "joint3_translateY.o" "|joint1|joint2|joint3.ty";
connectAttr "joint3_translateZ.o" "|joint1|joint2|joint3.tz";
connectAttr "joint3_rotateX.o" "|joint1|joint2|joint3.rx";
connectAttr "joint3_rotateY.o" "|joint1|joint2|joint3.ry";
connectAttr "joint3_rotateZ.o" "|joint1|joint2|joint3.rz";
connectAttr "|joint1|joint2|joint3.s" "|joint1|joint2|joint3|joint4.is";
connectAttr "joint4_scaleX.o" "|joint1|joint2|joint3|joint4.sx";
connectAttr "joint4_scaleY.o" "|joint1|joint2|joint3|joint4.sy";
connectAttr "joint4_scaleZ.o" "|joint1|joint2|joint3|joint4.sz";
connectAttr "joint4_visibility.o" "|joint1|joint2|joint3|joint4.v";
connectAttr "joint4_translateX.o" "|joint1|joint2|joint3|joint4.tx";
connectAttr "joint4_translateY.o" "|joint1|joint2|joint3|joint4.ty";
connectAttr "joint4_translateZ.o" "|joint1|joint2|joint3|joint4.tz";
connectAttr "joint4_rotateX.o" "|joint1|joint2|joint3|joint4.rx";
connectAttr "joint4_rotateY.o" "|joint1|joint2|joint3|joint4.ry";
connectAttr "joint4_rotateZ.o" "|joint1|joint2|joint3|joint4.rz";
connectAttr "|joint1|joint2|joint3|joint4.s" "|joint1|joint2|joint3|joint4|joint5.is"
		;
connectAttr "joint5_scaleX.o" "|joint1|joint2|joint3|joint4|joint5.sx";
connectAttr "joint5_scaleY.o" "|joint1|joint2|joint3|joint4|joint5.sy";
connectAttr "joint5_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5.sz";
connectAttr "joint5_visibility.o" "|joint1|joint2|joint3|joint4|joint5.v";
connectAttr "joint5_translateX.o" "|joint1|joint2|joint3|joint4|joint5.tx";
connectAttr "joint5_translateY.o" "|joint1|joint2|joint3|joint4|joint5.ty";
connectAttr "joint5_translateZ.o" "|joint1|joint2|joint3|joint4|joint5.tz";
connectAttr "joint5_rotateX.o" "|joint1|joint2|joint3|joint4|joint5.rx";
connectAttr "joint5_rotateY.o" "|joint1|joint2|joint3|joint4|joint5.ry";
connectAttr "joint5_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5.rz";
connectAttr "|joint1|joint2|joint3|joint4|joint5.s" "|joint1|joint2|joint3|joint4|joint5|joint6.is"
		;
connectAttr "joint6_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6.sx";
connectAttr "joint6_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6.sy";
connectAttr "joint6_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6.sz";
connectAttr "joint6_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6.v"
		;
connectAttr "joint6_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6.tx"
		;
connectAttr "joint6_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6.ty"
		;
connectAttr "joint6_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6.tz"
		;
connectAttr "joint6_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6.rx";
connectAttr "joint6_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6.ry";
connectAttr "joint6_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6.rz";
connectAttr "|joint1|joint2|joint3|joint4|joint5|joint6.s" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.is"
		;
connectAttr "joint7_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.sx"
		;
connectAttr "joint7_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.sy"
		;
connectAttr "joint7_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.sz"
		;
connectAttr "joint7_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.v"
		;
connectAttr "joint7_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.tx"
		;
connectAttr "joint7_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.ty"
		;
connectAttr "joint7_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.tz"
		;
connectAttr "joint7_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.rx"
		;
connectAttr "joint7_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.ry"
		;
connectAttr "joint7_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.rz"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint5|joint6|joint7.s" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.is"
		;
connectAttr "joint8_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sx"
		;
connectAttr "joint8_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sy"
		;
connectAttr "joint8_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.sz"
		;
connectAttr "joint8_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.v"
		;
connectAttr "joint8_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.tx"
		;
connectAttr "joint8_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.ty"
		;
connectAttr "joint8_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.tz"
		;
connectAttr "joint8_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.rx"
		;
connectAttr "joint8_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.ry"
		;
connectAttr "joint8_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.rz"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8.s" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.is"
		;
connectAttr "joint9_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sx"
		;
connectAttr "joint9_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sy"
		;
connectAttr "joint9_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.sz"
		;
connectAttr "joint9_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.v"
		;
connectAttr "joint9_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.tx"
		;
connectAttr "joint9_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.ty"
		;
connectAttr "joint9_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.tz"
		;
connectAttr "joint9_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.rx"
		;
connectAttr "joint9_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.ry"
		;
connectAttr "joint9_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.rz"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9.s" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.is"
		;
connectAttr "joint10_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sx"
		;
connectAttr "joint10_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sy"
		;
connectAttr "joint10_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.sz"
		;
connectAttr "joint10_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.v"
		;
connectAttr "joint10_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.tx"
		;
connectAttr "joint10_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.ty"
		;
connectAttr "joint10_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.tz"
		;
connectAttr "joint10_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.rx"
		;
connectAttr "joint10_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.ry"
		;
connectAttr "joint10_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.rz"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10.s" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.is"
		;
connectAttr "joint11_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sx"
		;
connectAttr "joint11_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sy"
		;
connectAttr "joint11_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.sz"
		;
connectAttr "joint11_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.v"
		;
connectAttr "joint11_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.tx"
		;
connectAttr "joint11_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.ty"
		;
connectAttr "joint11_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.tz"
		;
connectAttr "joint11_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.rx"
		;
connectAttr "joint11_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.ry"
		;
connectAttr "joint11_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.rz"
		;
connectAttr "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11.s" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.is"
		;
connectAttr "joint12_visibility.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.v"
		;
connectAttr "joint12_translateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.tx"
		;
connectAttr "joint12_translateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.ty"
		;
connectAttr "joint12_translateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.tz"
		;
connectAttr "joint12_rotateX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.rx"
		;
connectAttr "joint12_rotateY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.ry"
		;
connectAttr "joint12_rotateZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.rz"
		;
connectAttr "joint12_scaleX.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sx"
		;
connectAttr "joint12_scaleY.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sy"
		;
connectAttr "joint12_scaleZ.o" "|joint1|joint2|joint3|joint4|joint5|joint6|joint7|joint8|joint9|joint10|joint11|joint12.sz"
		;
connectAttr "pCube21_translateX1.o" "pCube29.tx";
connectAttr "pCube21_translateY1.o" "pCube29.ty";
connectAttr "pCube21_translateZ1.o" "pCube29.tz";
connectAttr "pCube21_rotateX1.o" "pCube29.rx";
connectAttr "pCube21_rotateY1.o" "pCube29.ry";
connectAttr "pCube21_rotateZ1.o" "pCube29.rz";
connectAttr "pCube21_scaleX1.o" "pCube29.sx";
connectAttr "pCube21_scaleY1.o" "pCube29.sy";
connectAttr "pCube21_scaleZ1.o" "pCube29.sz";
connectAttr "pCube22_visibility1.o" "|pCube29|pCube22.v";
connectAttr "pCube22_translateX1.o" "|pCube29|pCube22.tx";
connectAttr "pCube22_translateY1.o" "|pCube29|pCube22.ty";
connectAttr "pCube22_translateZ1.o" "|pCube29|pCube22.tz";
connectAttr "pCube22_rotateX1.o" "|pCube29|pCube22.rx";
connectAttr "pCube22_rotateY1.o" "|pCube29|pCube22.ry";
connectAttr "pCube22_rotateZ1.o" "|pCube29|pCube22.rz";
connectAttr "pCube22_scaleX1.o" "|pCube29|pCube22.sx";
connectAttr "pCube22_scaleY1.o" "|pCube29|pCube22.sy";
connectAttr "pCube22_scaleZ1.o" "|pCube29|pCube22.sz";
connectAttr "pCube20_visibility1.o" "|pCube29|pCube22|pCube20.v";
connectAttr "pCube20_translateX1.o" "|pCube29|pCube22|pCube20.tx";
connectAttr "pCube20_translateY1.o" "|pCube29|pCube22|pCube20.ty";
connectAttr "pCube20_translateZ1.o" "|pCube29|pCube22|pCube20.tz";
connectAttr "pCube20_rotateX1.o" "|pCube29|pCube22|pCube20.rx";
connectAttr "pCube20_rotateY1.o" "|pCube29|pCube22|pCube20.ry";
connectAttr "pCube20_rotateZ1.o" "|pCube29|pCube22|pCube20.rz";
connectAttr "pCube20_scaleX1.o" "|pCube29|pCube22|pCube20.sx";
connectAttr "pCube20_scaleY1.o" "|pCube29|pCube22|pCube20.sy";
connectAttr "pCube20_scaleZ1.o" "|pCube29|pCube22|pCube20.sz";
connectAttr "pCube19_visibility1.o" "|pCube29|pCube22|pCube20|pCube19.v";
connectAttr "pCube19_translateX1.o" "|pCube29|pCube22|pCube20|pCube19.tx";
connectAttr "pCube19_translateY1.o" "|pCube29|pCube22|pCube20|pCube19.ty";
connectAttr "pCube19_translateZ1.o" "|pCube29|pCube22|pCube20|pCube19.tz";
connectAttr "pCube19_rotateX1.o" "|pCube29|pCube22|pCube20|pCube19.rx";
connectAttr "pCube19_rotateY1.o" "|pCube29|pCube22|pCube20|pCube19.ry";
connectAttr "pCube19_rotateZ1.o" "|pCube29|pCube22|pCube20|pCube19.rz";
connectAttr "pCube19_scaleX1.o" "|pCube29|pCube22|pCube20|pCube19.sx";
connectAttr "pCube19_scaleY1.o" "|pCube29|pCube22|pCube20|pCube19.sy";
connectAttr "pCube19_scaleZ1.o" "|pCube29|pCube22|pCube20|pCube19.sz";
connectAttr "pCube18_visibility1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.v"
		;
connectAttr "pCube18_translateX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.tx"
		;
connectAttr "pCube18_translateY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.ty"
		;
connectAttr "pCube18_translateZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.tz"
		;
connectAttr "pCube18_rotateX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.rx";
connectAttr "pCube18_rotateY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.ry";
connectAttr "pCube18_rotateZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.rz";
connectAttr "pCube18_scaleX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.sx";
connectAttr "pCube18_scaleY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.sy";
connectAttr "pCube18_scaleZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18.sz";
connectAttr "pCube17_visibility1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.v"
		;
connectAttr "pCube17_translateX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.tx"
		;
connectAttr "pCube17_translateY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.ty"
		;
connectAttr "pCube17_translateZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.tz"
		;
connectAttr "pCube17_rotateX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.rx"
		;
connectAttr "pCube17_rotateY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.ry"
		;
connectAttr "pCube17_rotateZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.rz"
		;
connectAttr "pCube17_scaleX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.sx"
		;
connectAttr "pCube17_scaleY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.sy"
		;
connectAttr "pCube17_scaleZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17.sz"
		;
connectAttr "locator1_translateX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.tx"
		;
connectAttr "locator1_translateY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.ty"
		;
connectAttr "locator1_translateZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.tz"
		;
connectAttr "locator1_rotateX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.rx"
		;
connectAttr "locator1_rotateY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.ry"
		;
connectAttr "locator1_rotateZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.rz"
		;
connectAttr "locator1_scaleX1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sx"
		;
connectAttr "locator1_scaleY1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sy"
		;
connectAttr "locator1_scaleZ1.o" "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sz"
		;
connectAttr "pCube21_translateX2.o" "pCube30.tx";
connectAttr "pCube21_translateY2.o" "pCube30.ty";
connectAttr "pCube21_translateZ2.o" "pCube30.tz";
connectAttr "pCube21_rotateX2.o" "pCube30.rx";
connectAttr "pCube21_rotateY2.o" "pCube30.ry";
connectAttr "pCube21_rotateZ2.o" "pCube30.rz";
connectAttr "pCube21_scaleX2.o" "pCube30.sx";
connectAttr "pCube21_scaleY2.o" "pCube30.sy";
connectAttr "pCube21_scaleZ2.o" "pCube30.sz";
connectAttr "pCube22_visibility2.o" "|pCube30|pCube22.v";
connectAttr "pCube22_translateX2.o" "|pCube30|pCube22.tx";
connectAttr "pCube22_translateY2.o" "|pCube30|pCube22.ty";
connectAttr "pCube22_translateZ2.o" "|pCube30|pCube22.tz";
connectAttr "pCube22_rotateX2.o" "|pCube30|pCube22.rx";
connectAttr "pCube22_rotateY2.o" "|pCube30|pCube22.ry";
connectAttr "pCube22_rotateZ2.o" "|pCube30|pCube22.rz";
connectAttr "pCube22_scaleX2.o" "|pCube30|pCube22.sx";
connectAttr "pCube22_scaleY2.o" "|pCube30|pCube22.sy";
connectAttr "pCube22_scaleZ2.o" "|pCube30|pCube22.sz";
connectAttr "pCube20_visibility2.o" "|pCube30|pCube22|pCube20.v";
connectAttr "pCube20_translateX2.o" "|pCube30|pCube22|pCube20.tx";
connectAttr "pCube20_translateY2.o" "|pCube30|pCube22|pCube20.ty";
connectAttr "pCube20_translateZ2.o" "|pCube30|pCube22|pCube20.tz";
connectAttr "pCube20_rotateX2.o" "|pCube30|pCube22|pCube20.rx";
connectAttr "pCube20_rotateY2.o" "|pCube30|pCube22|pCube20.ry";
connectAttr "pCube20_rotateZ2.o" "|pCube30|pCube22|pCube20.rz";
connectAttr "pCube20_scaleX2.o" "|pCube30|pCube22|pCube20.sx";
connectAttr "pCube20_scaleY2.o" "|pCube30|pCube22|pCube20.sy";
connectAttr "pCube20_scaleZ2.o" "|pCube30|pCube22|pCube20.sz";
connectAttr "pCube19_visibility2.o" "|pCube30|pCube22|pCube20|pCube19.v";
connectAttr "pCube19_translateX2.o" "|pCube30|pCube22|pCube20|pCube19.tx";
connectAttr "pCube19_translateY2.o" "|pCube30|pCube22|pCube20|pCube19.ty";
connectAttr "pCube19_translateZ2.o" "|pCube30|pCube22|pCube20|pCube19.tz";
connectAttr "pCube19_rotateX2.o" "|pCube30|pCube22|pCube20|pCube19.rx";
connectAttr "pCube19_rotateY2.o" "|pCube30|pCube22|pCube20|pCube19.ry";
connectAttr "pCube19_rotateZ2.o" "|pCube30|pCube22|pCube20|pCube19.rz";
connectAttr "pCube19_scaleX2.o" "|pCube30|pCube22|pCube20|pCube19.sx";
connectAttr "pCube19_scaleY2.o" "|pCube30|pCube22|pCube20|pCube19.sy";
connectAttr "pCube19_scaleZ2.o" "|pCube30|pCube22|pCube20|pCube19.sz";
connectAttr "pCube18_visibility2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.v"
		;
connectAttr "pCube18_translateX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.tx"
		;
connectAttr "pCube18_translateY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.ty"
		;
connectAttr "pCube18_translateZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.tz"
		;
connectAttr "pCube18_rotateX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.rx";
connectAttr "pCube18_rotateY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.ry";
connectAttr "pCube18_rotateZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.rz";
connectAttr "pCube18_scaleX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.sx";
connectAttr "pCube18_scaleY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.sy";
connectAttr "pCube18_scaleZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18.sz";
connectAttr "pCube17_visibility2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.v"
		;
connectAttr "pCube17_translateX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.tx"
		;
connectAttr "pCube17_translateY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.ty"
		;
connectAttr "pCube17_translateZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.tz"
		;
connectAttr "pCube17_rotateX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.rx"
		;
connectAttr "pCube17_rotateY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.ry"
		;
connectAttr "pCube17_rotateZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.rz"
		;
connectAttr "pCube17_scaleX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.sx"
		;
connectAttr "pCube17_scaleY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.sy"
		;
connectAttr "pCube17_scaleZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17.sz"
		;
connectAttr "locator1_translateX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.tx"
		;
connectAttr "locator1_translateY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.ty"
		;
connectAttr "locator1_translateZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.tz"
		;
connectAttr "locator1_rotateX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.rx"
		;
connectAttr "locator1_rotateY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.ry"
		;
connectAttr "locator1_rotateZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.rz"
		;
connectAttr "locator1_scaleX2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sx"
		;
connectAttr "locator1_scaleY2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sy"
		;
connectAttr "locator1_scaleZ2.o" "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|locator1.sz"
		;
connectAttr "polyCube2.out" "pCubeShape31.i";
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
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "nParticlePointsSE.pa" ":renderPartition.st" -na;
connectAttr "npPointsBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "npPointsVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "cone_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_1|cone_2|cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_1|cone_2|cone_3|cone_Shape3.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|cone_1|cone_2|cone_3|cone_4|cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_1|cone_2|cone_3|cone_4|cone_5|cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_6|cone_Shape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_6|cone_2|cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_6|cone_2|cone_3|cone_Shape3.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|cone_6|cone_2|cone_3|cone_4|cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_6|cone_2|cone_3|cone_4|cone_5|cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_Shape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_7|cone_2|cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_7|cone_2|cone_3|cone_Shape3.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_7|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "cone_Shape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_12|cone_2|cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_12|cone_2|cone_3|cone_Shape3.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "|cone_12|cone_2|cone_3|cone_4|cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_12|cone_2|cone_3|cone_4|cone_5|cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "cone_Shape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_13|cone_2|cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_13|cone_2|cone_3|cone_Shape3.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_13|cone_2|cone_3|cone_4|cone_5|cone_6|cone_7|cone_8|cone_9|cone_10|cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "cone_Shape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_14|cone_2|cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_14|cone_2|cone_3|cone_Shape3.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "|cone_14|cone_2|cone_3|cone_4|cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "cone_Shape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cone_Shape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9|cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cone_14|cone_2|cone_3|cone_4|cone_5|cone_15|cone_16|cone_8|cone_9|cone_10|cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube21|pCube22|pCube20|pCube19|pCube18|pCube17|pCubeShape17.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube21|pCube22|pCube20|pCube19|pCube18|pCubeShape18.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube21|pCube22|pCube20|pCube19|pCubeShape19.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube21|pCube22|pCube20|pCubeShape20.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube21|pCube22|pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube29|pCube22|pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube29|pCube22|pCube20|pCubeShape20.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube29|pCube22|pCube20|pCube19|pCubeShape19.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube29|pCube22|pCube20|pCube19|pCube18|pCubeShape18.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube29|pCube22|pCube20|pCube19|pCube18|pCube17|pCubeShape17.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube30|pCube22|pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube30|pCube22|pCube20|pCubeShape20.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube30|pCube22|pCube20|pCube19|pCubeShape19.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube30|pCube22|pCube20|pCube19|pCube18|pCubeShape18.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube30|pCube22|pCube20|pCube19|pCube18|pCube17|pCubeShape17.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
// End of RotationTest.ma
