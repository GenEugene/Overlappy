//Maya ASCII 2019 scene
//Name: Octopus.ma
//Last modified: Mon, May 06, 2019 04:32:28 AM
//Codeset: 1251
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17763)\n";
createNode transform -s -n "persp";
	rename -uid "30F67475-4458-F98E-8FCC-14AC5D4D95DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 74.272267746548508 3.9444157305486858 19.654139812737366 ;
	setAttr ".r" -type "double3" -0.33835272966649227 438.60000000005488 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "63E9C865-4C35-D057-A287-05BC44085BFF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 69.251870530711471;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "E570A7D6-4DAE-9830-62D5-4CB5387778C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2ABF18EA-43E1-3080-47F5-36945C8B44B5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "88C6E7C7-475F-6A42-A7E0-B2B35BCE3CDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8BB23EC2-4DCC-C1C8-F640-4F84F5C299FE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "56C62A9B-43F6-A982-17F3-C484ED931CDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "235E48DD-4D30-E7A1-CCF2-D0B1C4D1B37A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Ref";
	rename -uid "7C016EC4-4F10-3260-E329-AE9D396C201C";
	setAttr ".v" no;
createNode transform -n "Cone_1" -p "Ref";
	rename -uid "FCA734AD-4EB3-683E-A79F-49A6D41A58EB";
createNode mesh -n "Cone_Shape1" -p "Cone_1";
	rename -uid "523E782B-46FC-946E-CD42-46B1EEAC7ED6";
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
createNode transform -n "Cone_2" -p "Cone_1";
	rename -uid "DDDE6F46-4ED4-0432-925F-74BD6DCD8C00";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape2" -p "|Ref|Cone_1|Cone_2";
	rename -uid "AA30F9CA-4357-A620-114E-01B7282AF9FE";
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
createNode transform -n "Cone_3" -p "|Ref|Cone_1|Cone_2";
	rename -uid "EDE6AC2C-4F6C-DE81-2F7D-B3BD9A4D7258";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape3" -p "|Ref|Cone_1|Cone_2|Cone_3";
	rename -uid "749C4BE3-4F4F-631F-717A-CE8EC5B1CB47";
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
createNode transform -n "Cone_4" -p "|Ref|Cone_1|Cone_2|Cone_3";
	rename -uid "6515D560-4C8C-B65A-64B6-F880F91AA9F1";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape4" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4";
	rename -uid "FD080DBC-442C-D05E-8DCF-DB96DF98C61D";
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
createNode transform -n "Cone_5" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4";
	rename -uid "3AEA494E-42EC-B5DA-86A5-D6BE51D2A908";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape5" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "85C86BDD-409E-64B1-4F9C-77AA448763A2";
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
createNode transform -n "Cone_6" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "3AE5CD12-4910-B00C-BA3E-EE9936455162";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape6" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "B182B750-42A2-2483-6F4A-D4B66BE2C112";
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
createNode transform -n "Cone_7" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "3D2FDC3A-4F1D-BBEE-F54E-F59934B3D16E";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape7" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "09038D10-40C3-E743-EED1-44A7931D2685";
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
createNode transform -n "Cone_8" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "AEA71776-4A6F-3379-4D01-CC999C2D3C05";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape8" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "FA64D4D5-4FB5-9236-39C1-AF83FE5F4C6B";
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
createNode transform -n "Cone_9" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "62985C51-42BF-58CA-1BDF-DBAFD7865613";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape9" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "B8A6A0FF-4B55-1557-8F08-A5896099AC4D";
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
createNode transform -n "Cone_10" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "9A110E28-4AEC-B0CE-1570-FBB8496183AD";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape10" -p "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "753DAA5D-4C66-6AF4-ACE0-F2B50A123F97";
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
createNode transform -n "BODY" -p "Ref";
	rename -uid "9C7050E8-4407-F318-BA11-34AFF7AC6D8B";
	setAttr ".rp" -type "double3" 0 0.58151550231784999 0 ;
	setAttr ".sp" -type "double3" 0 0.58151550231784999 0 ;
createNode mesh -n "BODYShape" -p "|Ref|BODY";
	rename -uid "7DC57274-42B7-A328-9D9E-BEB81E6FD50E";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 5.7138104 -3.1939511 0 
		5.7138104 -3.1939511 0 -0.67409176 -3.1939511 0 -0.67409176 -3.1939511 0 -0.67409176 
		3.1939511 0 -0.67409176 3.1939511 0 5.7138104 3.1939511 0 5.7138104 3.1939511;
	setAttr -s 8 ".vt[0:7]"  -1.59697556 -3.53531933 1.59697556 1.59697556 -3.53531933 1.59697556
		 -1.59697556 -0.34136832 1.59697556 1.59697556 -0.34136832 1.59697556 -1.59697556 -0.34136832 -1.59697556
		 1.59697556 -0.34136832 -1.59697556 -1.59697556 -3.53531933 -1.59697556 1.59697556 -3.53531933 -1.59697556;
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
createNode transform -n "Cone_1_1" -p "|Ref|BODY";
	rename -uid "DDE06DA2-427C-6C66-926F-A3A84687E826";
	setAttr ".t" -type "double3" 0 -1.3568283675268498 2.0000000000000004 ;
	setAttr ".r" -type "double3" 160 0 0 ;
createNode mesh -n "Cone_1_Shape1" -p "|Ref|BODY|Cone_1_1";
	rename -uid "DF849297-4BE1-9AB2-4A7D-C2B929520A54";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -2.3841858e-07 0 0 0 
		0 0 -2.3841858e-07 0 0 0 0 0 1.7881393e-07 0 0 1.15484e-07 0 0 1.1920929e-07 0 0 
		0 0 0 0;
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
createNode transform -n "Cone_2" -p "|Ref|BODY|Cone_1_1";
	rename -uid "F304F634-406E-0F38-EBAE-7BA2865E32AA";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape2" -p "|Ref|BODY|Cone_1_1|Cone_2";
	rename -uid "5B5C07A3-4E92-50EE-0E1C-4A91074D2C2D";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 -2.3841858e-07 
		4.7683716e-07 0 0 -4.7683716e-07 0 0 0 0 0 -3.5762787e-07 0 0 -2.3841858e-07 0 0 
		0 0 0 0 0 0 0;
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
createNode transform -n "Cone_3" -p "|Ref|BODY|Cone_1_1|Cone_2";
	rename -uid "BC0164C8-4F5C-9139-5FEF-449C6C24F79A";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape3" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3";
	rename -uid "3BA2186F-42C3-D39A-96A3-C6A1D40D74F9";
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
	setAttr -s 4 ".pt[5:8]" -type "float3"  0 0 -1.1920929e-07 0 0 -1.1920929e-07 
		0 0 0 0 0 4.7683716e-07;
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
createNode transform -n "Cone_4" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3";
	rename -uid "5B7DB2FE-4E3F-3231-E73B-F2ADBE8CCAE7";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape4" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4";
	rename -uid "02992F65-402D-C33F-C2AC-D88C70E6B11C";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 0 4.7683716e-07 0 0 0 0 
		0 0 0 0 -4.7683716e-07 0 0 -2.3841858e-07 0 0 -2.3841858e-07 0 0 0 0 0 0;
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
createNode transform -n "Cone_5" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4";
	rename -uid "1CB7873F-4C11-5D5A-0172-F5AA3208F7A8";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape5" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "AD7BEA8F-42A8-8E9E-1E71-469776F8720F";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 0 -4.7683716e-07 0 0 0 0 0 0 0 0 -2.3841858e-07 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_6" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "700E045E-458F-1C2D-8DA4-978B034F9BE9";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape6" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "60514D5D-4791-57A4-9E96-DAB4614E3525";
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
	setAttr -s 5 ".pt[4:8]" -type "float3"  0 0 4.7683716e-07 0 0 2.3841858e-07 
		0 0 4.7683716e-07 0 0 0 0 0 -4.7683716e-07;
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
createNode transform -n "Cone_7" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "F89DF4F4-4DF0-5228-8ACE-BAA4EB6715B8";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape7" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "9BE0861D-48BE-8257-627A-279181173DD3";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 0 -4.7683716e-07 0 0 -4.7683716e-07 0 0 0 0 9.5367432e-07 0 0 0 4.7683716e-07 0 
		0 -4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_8" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "C5FB1DBC-4942-FB94-528D-9792EF29C525";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape8" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "245D9898-4464-8805-202D-95AD262AFBB6";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -9.5367432e-07 0 0 9.5367432e-07 
		0 0 -9.5367432e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -4.7683716e-07;
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
createNode transform -n "Cone_9" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "1C28E68F-4B00-4B49-FAA0-6C816ACEACC2";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape9" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "BE1B08FE-42BC-7853-2F09-22B0B824267A";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 1.9073486e-06 0 0 0 4.7683716e-07 0 0 -4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_10" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "A0674206-451F-DE66-1F55-0BA676E46A09";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape10" -p "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "9C3A557B-4C40-4451-1E51-CB8BA187559C";
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
	setAttr -s 5 ".pt[4:8]" -type "float3"  0 0 4.7683716e-07 0 0 0 0 
		0 4.7683716e-07 0 0 0 0 0 0;
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
createNode transform -n "Cone_1_2" -p "|Ref|BODY";
	rename -uid "2DD674CB-46E9-96E4-D796-5293403C7755";
	setAttr ".t" -type "double3" 0 -1.3568283675268502 -1.9999999999999998 ;
	setAttr ".r" -type "double3" -160.00000000000003 0 0 ;
createNode mesh -n "Cone_1_Shape2" -p "|Ref|BODY|Cone_1_2";
	rename -uid "4EC32083-47F6-E1A0-4EF6-348A58977D55";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -1.7881393e-07 0 0 0 
		0 0 -1.7881393e-07 0 0 0 0 0 2.3841858e-07 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_2" -p "|Ref|BODY|Cone_1_2";
	rename -uid "6F046A00-4FC8-D4CD-DACA-F0A72A49E7DF";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape2" -p "|Ref|BODY|Cone_1_2|Cone_2";
	rename -uid "4822E374-41A4-0B94-5B48-15B8F3A6CB97";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 3.5762787e-07 0 0 1.7881393e-07 
		0 0 3.5762787e-07 0 0 0 0 0 4.7683716e-07 0 -2.3841858e-07 -4.7683716e-07 0 0 0 0 
		0 0 0 0 0;
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
createNode transform -n "Cone_3" -p "|Ref|BODY|Cone_1_2|Cone_2";
	rename -uid "60AB173C-42DE-E3B0-2689-479DEF7E927D";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape3" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3";
	rename -uid "8D9883A7-41B7-5E79-D682-119AA17E1DB4";
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
	setAttr ".pt[8]" -type "float3"  0 0 -4.7683716e-07;
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
createNode transform -n "Cone_4" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3";
	rename -uid "CA98A3AC-4F9F-92EB-D07F-BB9FCA9AAC0F";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape4" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4";
	rename -uid "F3FE9C87-4C2F-5195-5B83-B3B79BDE052E";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 4.7683716e-07 0 -4.7683716e-07 
		-2.3841858e-07 0 0 4.7683716e-07 0 0 0 0 0 0 0 0 -4.7683716e-07 0 0 4.7683716e-07 
		0 0 0 0 0 0;
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
createNode transform -n "Cone_5" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4";
	rename -uid "9122CEE5-4F78-085A-22AA-31B0B37B41DB";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape5" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "6E4DAE18-495F-C5A0-F90A-44ABFDE4A75E";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 0 2.3841858e-07 0 0 0 0 
		0 0 0 0 4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 0 0 0 0 0;
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
createNode transform -n "Cone_6" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "92C0D34E-47BC-9CFA-5840-99BC1A986997";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape6" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "56403A71-4318-8511-69C1-B395AE03BD6F";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 -2.3841858e-07 
		0 0 -4.7683716e-07 0 0 0 0 0 0 0 0 0 0 9.5367432e-07 4.7683716e-07 0 0 0 0 0 4.7683716e-07;
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
createNode transform -n "Cone_7" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "149294AA-43EE-FFDA-6032-C299038C0FED";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape7" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "3D804D8C-4263-DB5B-862E-F6BBA2704E88";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 0 4.7683716e-07 0 0 0 0 
		0 4.7683716e-07 0 0 4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_8" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "948C9C04-4F9A-88B0-DD93-02B199345CC6";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape8" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "69C6197C-45C8-225B-BA67-04B0A3D72276";
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
	setAttr -s 5 ".pt[4:8]" -type "float3"  0 0 9.5367432e-07 0 9.5367432e-07 
		0 0 0 9.5367432e-07 0 0 0 0 0 4.7683716e-07;
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
createNode transform -n "Cone_9" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "17F1BA7E-4A99-480A-4438-A2ADB4473097";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape9" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "CCE4D2FD-47EB-8DB7-DAEF-ABBA59B130B4";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 1.9073486e-06 0 0 0 0 0 
		0 4.7683716e-07 0 0 0 0 0 0 0 0 0 0 0 4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_10" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "C9D9A0D1-4026-CF04-618C-FDBC02495B56";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape10" -p "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "E7647FF1-49B7-B2F0-0F82-E4BCD6BB457E";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 0 -4.7683716e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_1_3" -p "|Ref|BODY";
	rename -uid "19F0DCC9-4062-A65E-DA08-26914D070FB7";
	setAttr ".t" -type "double3" 2 -1.3568283675268429 2.3737866158521966e-16 ;
	setAttr ".r" -type "double3" 180 0 20 ;
createNode mesh -n "Cone_1_Shape3" -p "|Ref|BODY|Cone_1_3";
	rename -uid "04AB10D0-48C6-E7E2-97F7-D48AE1CCDDFF";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  -2.3841858e-07 0 2.646978e-23 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -5.2939559e-23;
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
createNode transform -n "Cone_2" -p "|Ref|BODY|Cone_1_3";
	rename -uid "5B529223-4807-D6FB-D5EB-D0B5DCDA528F";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape2" -p "|Ref|BODY|Cone_1_3|Cone_2";
	rename -uid "28CA5CC2-492D-9DC1-5794-E7B6D7E0F263";
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
	setAttr ".pt[8]" -type "float3"  0 0 5.2939559e-23;
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
createNode transform -n "Cone_3" -p "|Ref|BODY|Cone_1_3|Cone_2";
	rename -uid "7349AC8D-4EF3-6C4C-1733-9FB79C0F01B0";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape3" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3";
	rename -uid "90B349EC-4C7B-4A7A-5086-70835E719B78";
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
	setAttr -s 2 ".pt[7:8]" -type "float3"  -2.3841858e-07 0 0 -4.7683716e-07 
		0 1.0587912e-22;
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
createNode transform -n "Cone_4" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3";
	rename -uid "16BDA206-4CF8-5897-74A5-56A576BB4941";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape4" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4";
	rename -uid "8DFDA61C-4B90-703C-6064-7D9ABFDD8A2E";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 -4.7683716e-07 -1.0587912e-22 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_5" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4";
	rename -uid "526BD684-4A8A-8452-156F-48B4DC279E28";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape5" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "651435C3-46B1-B565-977F-96B016CFFDFD";
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
createNode transform -n "Cone_6" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "7B32B035-46BE-8307-8ABE-2EA85393E2BF";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape6" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "4B4A3501-45A0-EFE8-74A3-A391338B647D";
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
	setAttr ".pt[8]" -type "float3"  4.7683716e-07 0 -1.0587912e-22;
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
createNode transform -n "Cone_7" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "761F9805-4CAF-642F-85DF-70B96EF4C851";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape7" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "1CEB24F3-42F6-C5DE-008F-808946E9EF9C";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  4.7683716e-07 0 0 0 0 0 0 
		-9.5367432e-07 0 0 0 0 4.7683716e-07 0 0 0 0 0 0 0 -1.0587912e-22 0 0 0;
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
createNode transform -n "Cone_8" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "CC333A94-46AC-CE7E-EBDB-8396CDE6E673";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape8" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "AF72FCC8-4E36-E034-0828-66AD069C7E9E";
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
	setAttr -s 7 ".pt[2:8]" -type "float3"  4.7683716e-07 0 0 0 0 2.1175824e-22 
		4.7683716e-07 0 0 0 0 0 0 0 0 -4.7683716e-07 0 0 4.7683716e-07 0 0;
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
createNode transform -n "Cone_9" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "5BCA929B-4BF2-1C4F-8057-EAA4D70BF811";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape9" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "B795E192-47C1-B14A-D664-54B52C64976D";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  4.7683716e-07 0 0 0 0 0 -4.7683716e-07 
		0 2.1175824e-22 0 0 0 4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 0 0 0 2.1175824e-22;
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
createNode transform -n "Cone_10" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "D4F8F2A3-4010-8F9D-75CC-7D8AFB8909BF";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape10" -p "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "D1DC4847-4317-16E4-05EB-379923DFECD8";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 0 2.1175824e-22 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_1_4" -p "|Ref|BODY";
	rename -uid "E620F3D3-4EB5-9179-0AD7-6988B55F3C36";
	setAttr ".t" -type "double3" -2 -1.3568283675268429 2.3737866158521966e-16 ;
	setAttr ".r" -type "double3" 180 0 -20 ;
createNode mesh -n "Cone_1_Shape4" -p "|Ref|BODY|Cone_1_4";
	rename -uid "BF57EABE-410F-63E9-855E-D5993ED903D0";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 0 -1.323489e-23 0 0 0 0 
		0 0 0 0 0 0 0 2.646978e-23 0 0 -5.2939559e-23;
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
createNode transform -n "Cone_2" -p "|Ref|BODY|Cone_1_4";
	rename -uid "DEE85FB4-4F7D-1DEF-3F35-F28E578C05CA";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape2" -p "|Ref|BODY|Cone_1_4|Cone_2";
	rename -uid "D4F8AE95-497B-FD6C-0584-12B788E8EB61";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 -2.3841858e-07 0 0 0 0 
		0 0 0 -2.3841858e-07 0 0 0 -4.7683716e-07 0 0 0 5.2939559e-23;
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
createNode transform -n "Cone_3" -p "|Ref|BODY|Cone_1_4|Cone_2";
	rename -uid "F107CD62-43FF-AA3B-F2CA-F99DD780CF05";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape3" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3";
	rename -uid "486DD213-4E15-BA2B-39CB-2D9397DEE768";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  2.3841858e-07 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 4.7683716e-07 0 1.0587912e-22;
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
createNode transform -n "Cone_4" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3";
	rename -uid "1D4693CB-4619-9EDB-0ABC-CCB0CADB058B";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape4" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4";
	rename -uid "7660CB9B-4B1E-6E14-2F27-02BE27B09A0C";
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
createNode transform -n "Cone_5" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4";
	rename -uid "726FC30D-490B-9816-B74A-9184B9A4EF0E";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape5" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "F6295A61-4BB8-6A1D-A55D-93A00EAE839E";
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
	setAttr -s 3 ".pt[6:8]" -type "float3"  4.7683716e-07 0 0 0 0 0 0 
		0 0;
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
createNode transform -n "Cone_6" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "1ADAD8D5-46C7-C79C-C311-5BBD0DE0F6CD";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape6" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "67F53552-4EB3-2AE8-E9B4-73BB1243E2CB";
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
	setAttr ".pt[8]" -type "float3"  -4.7683716e-07 0 -1.0587912e-22;
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
createNode transform -n "Cone_7" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "4F9FF800-4EEA-EC53-85EF-A9A1C4028615";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape7" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "62DBF03C-46E2-7E12-F4A6-AC8E9F342546";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  -4.7683716e-07 0 0 0 0 0 
		0 0 -1.0587912e-22 0 0 0 -4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 1.0587912e-22 0 
		0 0;
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
createNode transform -n "Cone_8" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "03B072D8-45AC-F537-3D96-56A3094E949F";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape8" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "6551C652-4B2D-1630-0ACD-9496E02CC2C0";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -4.7683716e-07 0 0 0 0 0 
		0 0 0 4.7683716e-07 0 0 0 0 0 0 0 0 -4.7683716e-07 0 0 0 0 2.1175824e-22 -4.7683716e-07 
		0 0;
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
createNode transform -n "Cone_9" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "D0F24D3C-4017-160D-E85E-0380042E6265";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape9" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "3770ADE7-4460-7438-4DDF-4ABD24213B9B";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  -4.7683716e-07 0 0 0 0 0 
		-4.7683716e-07 0 0 0 0 0 -4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 2.1175824e-22 0 
		0 2.1175824e-22;
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
createNode transform -n "Cone_10" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "B8332F43-4555-B5E1-74D7-5695B008D9DC";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode mesh -n "Cone_Shape10" -p "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "A8EFBA8F-4946-5C7A-C711-FAB0F0E994ED";
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
	setAttr -s 2 ".pt[7:8]" -type "float3"  0 0 2.1175824e-22 0 0 0;
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
createNode transform -n "pCone1" -p "|Ref|BODY";
	rename -uid "DCA0D352-4A6F-30AB-8D7C-86983AD31CCA";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 2.5888257143052957 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 2.5888257143052957 0.075886246733894838 ;
createNode mesh -n "pConeShape1" -p "|Ref|BODY|pCone1";
	rename -uid "F3104596-4449-4071-D23C-1CAF3EEF4AE7";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -1.5786443 -0.016666889 1.6545305 
		8.3486564e-16 -0.016666889 2.3084264 1.5786443 -0.016666889 1.6545305 2.2325401 -0.016666889 
		0.07588625 1.5786443 -0.016666889 -1.502758 8.3486564e-16 -0.016666889 -2.1566539 
		-1.5786443 -0.016666889 -1.5027583 -2.2325401 -0.016666889 0.07588625 1.0628682e-15 
		0.17470217 0.07588625;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode transform -n "pCone2" -p "|Ref|BODY|pCone1";
	rename -uid "AD055767-4656-70D2-D169-089D88F138C0";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 4.7801942941697977 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 4.7801942941697977 0.075886246733894838 ;
createNode mesh -n "pConeShape2" -p "|Ref|BODY|pCone1|pCone2";
	rename -uid "3120700C-4385-C9AD-9A03-29A4AFF98FE1";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -2.0952497 2.1747017 2.1711359 
		8.3486564e-16 2.1747017 3.0390167 2.0952497 2.1747017 2.1711359 2.9631305 2.1747017 
		0.07588625 2.0952497 2.1747017 -2.0193634 8.3486564e-16 2.1747017 -2.8872442 -2.0952497 
		2.1747017 -2.0193636 -2.9631305 2.1747017 0.07588625 1.198017e-15 3.6650083 0.07588625;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode transform -n "pCone3" -p "|Ref|BODY|pCone1|pCone2";
	rename -uid "9B333BC1-4434-4D7B-D8B2-0DAD798A4B4D";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 8.2705011484178446 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 8.2705011484178446 0.075886246733894838 ;
createNode mesh -n "pConeShape3" -p "|Ref|BODY|pCone1|pCone2|pCone3";
	rename -uid "6752C48C-4246-BBB3-8E3C-DC8DE728623E";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -2.7549462 5.6650085 2.8308325 
		8.3486564e-16 5.6650085 3.9719687 2.7549462 5.6650085 2.8308325 3.8960824 5.6650085 
		0.075886257 2.7549462 5.6650085 -2.67906 8.3486564e-16 5.6650085 -3.8201962 -2.7549462 
		5.6650085 -2.6790605 -3.8960824 5.6650085 0.075886257 1.3706e-15 8.8140373 0.075886257;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode transform -n "BODY";
	rename -uid "B6E1A0AA-4C32-FAF0-4918-C9A314D756B1";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 0.58151550231784999 0 ;
	setAttr ".sp" -type "double3" 0 0.58151550231784999 0 ;
createNode mesh -n "BODYShape" -p "|BODY";
	rename -uid "6C19D4B5-426D-8463-5EA5-45A31278657F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 5.7138104 -3.1939511 0 
		5.7138104 -3.1939511 0 -0.67409176 -3.1939511 0 -0.67409176 -3.1939511 0 -0.67409176 
		3.1939511 0 -0.67409176 3.1939511 0 5.7138104 3.1939511 0 5.7138104 3.1939511;
	setAttr -s 8 ".vt[0:7]"  -1.59697556 -3.53531933 1.59697556 1.59697556 -3.53531933 1.59697556
		 -1.59697556 -0.34136832 1.59697556 1.59697556 -0.34136832 1.59697556 -1.59697556 -0.34136832 -1.59697556
		 1.59697556 -0.34136832 -1.59697556 -1.59697556 -3.53531933 -1.59697556 1.59697556 -3.53531933 -1.59697556;
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
createNode transform -n "Cone_1_1" -p "|BODY";
	rename -uid "BD725455-40BD-1F05-67F3-7AA9BC2C201E";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_1_Shape1" -p "|BODY|Cone_1_1";
	rename -uid "688FB1C8-4B87-7181-505B-1B99416FDA09";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -2.3841858e-07 0 0 0 
		0 0 -2.3841858e-07 0 0 0 0 0 1.7881393e-07 0 0 1.15484e-07 0 0 1.1920929e-07 0 0 
		0 0 0 0;
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
createNode transform -n "Cone_2" -p "|BODY|Cone_1_1";
	rename -uid "507CBBF4-4322-F829-100E-12BE196E96A1";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape2" -p "|BODY|Cone_1_1|Cone_2";
	rename -uid "95096C62-484E-A9A7-C5FD-58BFF806D41D";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 -2.3841858e-07 
		4.7683716e-07 0 0 -4.7683716e-07 0 0 0 0 0 -3.5762787e-07 0 0 -2.3841858e-07 0 0 
		0 0 0 0 0 0 0;
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
createNode transform -n "Cone_3" -p "|BODY|Cone_1_1|Cone_2";
	rename -uid "6A46367B-4344-2C3A-BE89-63BF46B8EB4D";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape3" -p "|BODY|Cone_1_1|Cone_2|Cone_3";
	rename -uid "11F08898-46E3-E12B-C494-C0ADDDDCBFED";
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
	setAttr -s 4 ".pt[5:8]" -type "float3"  0 0 -1.1920929e-07 0 0 -1.1920929e-07 
		0 0 0 0 0 4.7683716e-07;
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
createNode transform -n "Cone_4" -p "|BODY|Cone_1_1|Cone_2|Cone_3";
	rename -uid "4EB4243A-4C30-3A3E-20C7-A3AB6A7ABEE2";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape4" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4";
	rename -uid "D888F14D-48AC-19C6-D716-CF99EEB37FE5";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 0 4.7683716e-07 0 0 0 0 
		0 0 0 0 -4.7683716e-07 0 0 -2.3841858e-07 0 0 -2.3841858e-07 0 0 0 0 0 0;
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
createNode transform -n "Cone_5" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4";
	rename -uid "2F8E183F-427B-0FEC-5295-03A390E67D32";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape5" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "73548CAC-4469-A576-60F7-3B83CEF696DB";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 0 -4.7683716e-07 0 0 0 0 0 0 0 0 -2.3841858e-07 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_6" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "473B6F45-4B5E-11E6-167F-D8BABF5F8BC1";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape6" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "E9843CF3-4A0B-AB3A-9E60-FF8D88947562";
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
	setAttr -s 5 ".pt[4:8]" -type "float3"  0 0 4.7683716e-07 0 0 2.3841858e-07 
		0 0 4.7683716e-07 0 0 0 0 0 -4.7683716e-07;
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
createNode transform -n "Cone_7" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "56A9EE64-48B1-DCF9-4661-96AF98536942";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape7" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "575EA9B4-4AB5-6B6C-2450-85A7903F0DAA";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 0 -4.7683716e-07 0 0 -4.7683716e-07 0 0 0 0 9.5367432e-07 0 0 0 4.7683716e-07 0 
		0 -4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_8" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "64F02E3F-44D1-BBF7-E635-AB8DD708F98B";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape8" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "6C5439A5-46AA-26B6-C170-03BB41D2FCAE";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -9.5367432e-07 0 0 9.5367432e-07 
		0 0 -9.5367432e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -4.7683716e-07;
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
createNode transform -n "Cone_9" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "13094D5E-4E86-956D-3C7A-538A369A45A0";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape9" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "42673E3D-4430-75C7-E8F5-2EAD59443A09";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 1.9073486e-06 0 0 0 4.7683716e-07 0 0 -4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_10" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "8E3B9BAE-431B-49B9-D2D9-F7A833A6384C";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape10" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "E824289B-4E66-D8F0-A23B-F3BB18A88E10";
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
	setAttr -s 5 ".pt[4:8]" -type "float3"  0 0 4.7683716e-07 0 0 0 0 
		0 4.7683716e-07 0 0 0 0 0 0;
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
createNode transform -n "Cone_12" -p "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "B6E0BEBE-4716-D5D3-002F-76A7F47FF3A2";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 0 -3.5527136788005001e-15 0 ;
	setAttr ".sp" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".spt" -type "double3" 0 7.8886090522101172e-31 0 ;
createNode mesh -n "Cone_Shape12" -p "Cone_12";
	rename -uid "3B83314D-4743-54B7-4A1E-FEB1C6C1F840";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -0.56568539 4.4408921e-16 
		0.56568539 0 4.4408921e-16 0.79999989 0.56568539 4.4408921e-16 0.56568539 0.79999989 
		4.4408921e-16 0 0.56568539 4.4408921e-16 -0.56568527 0 4.4408921e-16 -0.79999995 
		-0.56568539 4.4408921e-16 -0.56568533 -0.80000001 4.4408921e-16 0 0 -1.6 0;
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
createNode transform -n "Cone_1_2" -p "|BODY";
	rename -uid "FD7296B5-4807-F20E-1C8A-B5AA2D6383A1";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_1_Shape2" -p "|BODY|Cone_1_2";
	rename -uid "124DA905-45CA-2942-8CB6-73B145C2D127";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -1.7881393e-07 0 0 0 
		0 0 -1.7881393e-07 0 0 0 0 0 2.3841858e-07 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_2" -p "|BODY|Cone_1_2";
	rename -uid "5ED672F0-45E2-794A-D4F6-7FA9B6167E84";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape2" -p "|BODY|Cone_1_2|Cone_2";
	rename -uid "30DD14FC-42F7-6DC0-04FE-C09F1961056F";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 3.5762787e-07 0 0 1.7881393e-07 
		0 0 3.5762787e-07 0 0 0 0 0 4.7683716e-07 0 -2.3841858e-07 -4.7683716e-07 0 0 0 0 
		0 0 0 0 0;
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
createNode transform -n "Cone_3" -p "|BODY|Cone_1_2|Cone_2";
	rename -uid "2455908E-4652-F1D5-599B-8C98D54EA430";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape3" -p "|BODY|Cone_1_2|Cone_2|Cone_3";
	rename -uid "8DA89CE6-4A86-BB5A-F59A-75BA2BA6B570";
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
	setAttr ".pt[8]" -type "float3"  0 0 -4.7683716e-07;
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
createNode transform -n "Cone_4" -p "|BODY|Cone_1_2|Cone_2|Cone_3";
	rename -uid "5134B49C-4424-63AB-40BC-A1A3EF3ABFC6";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape4" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4";
	rename -uid "4A84E75E-4955-C7C1-7A63-A2B15D06A022";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 4.7683716e-07 0 -4.7683716e-07 
		-2.3841858e-07 0 0 4.7683716e-07 0 0 0 0 0 0 0 0 -4.7683716e-07 0 0 4.7683716e-07 
		0 0 0 0 0 0;
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
createNode transform -n "Cone_5" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4";
	rename -uid "92FC7525-4662-15F7-9089-D1AED2CB8CA0";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape5" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "B614E846-4D61-EFEC-2430-9682AD35EB03";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 0 2.3841858e-07 0 0 0 0 
		0 0 0 0 4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 0 0 0 0 0;
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
createNode transform -n "Cone_6" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "CCBD055B-46DA-75CA-43EA-00AB29888C6A";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape6" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "6A6BF082-41AF-93C7-964A-EA8049354556";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 -2.3841858e-07 
		0 0 -4.7683716e-07 0 0 0 0 0 0 0 0 0 0 9.5367432e-07 4.7683716e-07 0 0 0 0 0 4.7683716e-07;
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
createNode transform -n "Cone_7" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "11AB2AD7-4519-7E2E-32CB-EC9892B99751";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape7" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "AB470295-4FEF-C49B-135F-80833D889C31";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 0 4.7683716e-07 0 0 0 0 
		0 4.7683716e-07 0 0 4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_8" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "03FAAAEB-47EF-83E4-7AEF-9B97CBA43D91";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape8" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "93BC6D07-4CA8-2272-BAC6-14967E3017B9";
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
	setAttr -s 5 ".pt[4:8]" -type "float3"  0 0 9.5367432e-07 0 9.5367432e-07 
		0 0 0 9.5367432e-07 0 0 0 0 0 4.7683716e-07;
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
createNode transform -n "Cone_9" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "0BFDEABB-450B-6911-522D-B6BAC8CEF4B6";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape9" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "379D04B7-4248-A75F-3102-ED89B05A6C62";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  0 1.9073486e-06 0 0 0 0 0 
		0 4.7683716e-07 0 0 0 0 0 0 0 0 0 0 0 4.7683716e-07 0 0 0;
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
createNode transform -n "Cone_10" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "AC63A589-4DA0-A7D4-0FD5-DE84E83004A6";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape10" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "C5EA9916-4163-142C-6A83-CF959CC5EB36";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0 -4.7683716e-07 0 0 0 
		0 0 -4.7683716e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_14" -p "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "DD4FB1DA-4713-5A9C-854B-9D89F2ED9395";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 0 2.2204460492503131e-16 ;
createNode mesh -n "Cone_Shape14" -p "Cone_14";
	rename -uid "7388B09C-4404-A0D7-E13C-C58DDA4BB81E";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -0.56568539 4.4408921e-16 
		0.56568527 0 4.4408921e-16 0.79999989 0.56568539 4.4408921e-16 0.56568527 0.79999989 
		4.4408921e-16 0 0.56568539 4.4408921e-16 -0.56568539 0 4.4408921e-16 -0.79999995 
		-0.56568539 4.4408921e-16 -0.56568539 -0.80000001 4.4408921e-16 0 0 -1.6 0;
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
createNode transform -n "Cone_1_3" -p "|BODY";
	rename -uid "64D0CC3E-479F-236F-A376-63A8B7C80534";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_1_Shape3" -p "|BODY|Cone_1_3";
	rename -uid "032817D8-42E8-7403-4A03-DD9E95B0E8B4";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  -2.3841858e-07 0 2.646978e-23 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -5.2939559e-23;
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
createNode transform -n "Cone_2" -p "|BODY|Cone_1_3";
	rename -uid "7C516927-4C7A-EE2C-4C3B-C3B5DC6F7AE9";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape2" -p "|BODY|Cone_1_3|Cone_2";
	rename -uid "D687683C-40BA-D0C5-3939-ADABE2E0DEC5";
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
	setAttr ".pt[8]" -type "float3"  0 0 5.2939559e-23;
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
createNode transform -n "Cone_3" -p "|BODY|Cone_1_3|Cone_2";
	rename -uid "41BA20CB-4F02-0D6C-1B7D-EEABC8C1B41E";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape3" -p "|BODY|Cone_1_3|Cone_2|Cone_3";
	rename -uid "595439E0-4C2D-3425-8220-A29C9FB77B32";
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
	setAttr -s 2 ".pt[7:8]" -type "float3"  -2.3841858e-07 0 0 -4.7683716e-07 
		0 1.0587912e-22;
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
createNode transform -n "Cone_4" -p "|BODY|Cone_1_3|Cone_2|Cone_3";
	rename -uid "CDCDF73C-4F1D-3BCA-EEFD-C981AB15502E";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape4" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4";
	rename -uid "E686AE41-4685-D4C2-8570-009F16BE18B9";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 -4.7683716e-07 -1.0587912e-22 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_5" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4";
	rename -uid "9922227D-45FD-0A81-3193-8B93312C1516";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape5" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "0F592CFD-4C30-8251-E3F6-17BD16B56601";
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
createNode transform -n "Cone_6" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "ED0D75B9-469A-F195-3E59-22AC2B426D9F";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape6" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "049DD6B9-4765-2447-561C-66B85D7125B2";
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
	setAttr ".pt[8]" -type "float3"  4.7683716e-07 0 -1.0587912e-22;
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
createNode transform -n "Cone_7" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "5B521075-4D27-3EED-CE1F-DAA1A15882C6";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape7" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "3A7EAE7B-4D3E-75FA-C4B6-A4A3F4AF1660";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  4.7683716e-07 0 0 0 0 0 0 
		-9.5367432e-07 0 0 0 0 4.7683716e-07 0 0 0 0 0 0 0 -1.0587912e-22 0 0 0;
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
createNode transform -n "Cone_8" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "CFBB8728-4379-345B-A311-67897BD4ED54";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape8" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "C3B06812-48CA-8847-641E-F0949CF1586F";
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
	setAttr -s 7 ".pt[2:8]" -type "float3"  4.7683716e-07 0 0 0 0 2.1175824e-22 
		4.7683716e-07 0 0 0 0 0 0 0 0 -4.7683716e-07 0 0 4.7683716e-07 0 0;
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
createNode transform -n "Cone_9" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "7FF81F3F-42E4-5D5A-77E4-8DA1FBF29B3B";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape9" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "B2F6D674-4F1A-0862-2009-B4AA92D4E945";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  4.7683716e-07 0 0 0 0 0 -4.7683716e-07 
		0 2.1175824e-22 0 0 0 4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 0 0 0 2.1175824e-22;
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
createNode transform -n "Cone_10" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "4BE01982-4401-A382-F723-828F5E365A6C";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape10" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "4812AD9E-4EED-1589-4651-60A806862389";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 0 2.1175824e-22 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
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
createNode transform -n "Cone_13" -p "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "194055C4-465A-0833-BC41-22B74068DEBD";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" -2.4424906541753444e-15 -7.1054273576010019e-15 9.8607613152626476e-32 ;
	setAttr ".sp" -type "double3" -2.4424906541753444e-15 -7.1054273576010019e-15 9.8607613152626476e-32 ;
createNode mesh -n "Cone_Shape13" -p "Cone_13";
	rename -uid "D4003CF0-43AA-8EDA-CC80-6E948814A162";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -0.56568539 4.4408921e-16 
		0.56568539 0 4.4408921e-16 0.79999989 0.56568539 4.4408921e-16 0.56568539 0.79999989 
		4.4408921e-16 4.2351645e-23 0.56568539 4.4408921e-16 -0.56568539 0 4.4408921e-16 
		-0.79999995 -0.56568539 4.4408921e-16 -0.56568539 -0.80000001 4.4408921e-16 0 0 -1.6 
		0;
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
createNode transform -n "Cone_1_4" -p "|BODY";
	rename -uid "ACBD59BD-4E11-B2F9-91EC-28A7D618C10F";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_1_Shape4" -p "|BODY|Cone_1_4";
	rename -uid "A14E1111-4814-D4B4-9BF0-CF9013E3DFA0";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 0 -1.323489e-23 0 0 0 0 
		0 0 0 0 0 0 0 2.646978e-23 0 0 -5.2939559e-23;
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
createNode transform -n "Cone_2" -p "|BODY|Cone_1_4";
	rename -uid "7BA6DB2B-44CF-49E8-EFEA-9381AF1F917B";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape2" -p "|BODY|Cone_1_4|Cone_2";
	rename -uid "75C51182-4479-E2E5-10DD-95987A61A96D";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  0 -2.3841858e-07 0 0 0 0 
		0 0 0 -2.3841858e-07 0 0 0 -4.7683716e-07 0 0 0 5.2939559e-23;
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
createNode transform -n "Cone_3" -p "|BODY|Cone_1_4|Cone_2";
	rename -uid "39F7A681-4270-A29E-A394-54906EBE3909";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape3" -p "|BODY|Cone_1_4|Cone_2|Cone_3";
	rename -uid "62B52DAB-494D-71D4-50CC-6D845470BA95";
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
	setAttr -s 6 ".pt[3:8]" -type "float3"  2.3841858e-07 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 4.7683716e-07 0 1.0587912e-22;
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
createNode transform -n "Cone_4" -p "|BODY|Cone_1_4|Cone_2|Cone_3";
	rename -uid "EDBFE022-4457-6B5B-237F-6AB5E79356D8";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape4" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4";
	rename -uid "164DCE87-4920-08F9-2605-6BA2FE70DA03";
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
createNode transform -n "Cone_5" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4";
	rename -uid "1578A940-404E-FC4A-0445-839C0E22AD92";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape5" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "8ACC2DE1-4430-EBA3-B931-298FFFC7C3E1";
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
	setAttr -s 3 ".pt[6:8]" -type "float3"  4.7683716e-07 0 0 0 0 0 0 
		0 0;
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
createNode transform -n "Cone_6" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5";
	rename -uid "5292C1F5-484C-A3B0-16BB-7C86193EE455";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape6" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "10FF6B74-441A-6A29-7C13-73823E8EE26A";
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
	setAttr ".pt[8]" -type "float3"  -4.7683716e-07 0 -1.0587912e-22;
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
createNode transform -n "Cone_7" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6";
	rename -uid "3C0EC9AA-492F-F76D-5C83-009265688C27";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape7" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "12CF0576-4EF7-9546-400A-61B252E85F58";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  -4.7683716e-07 0 0 0 0 0 
		0 0 -1.0587912e-22 0 0 0 -4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 1.0587912e-22 0 
		0 0;
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
createNode transform -n "Cone_8" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7";
	rename -uid "812E11DB-4163-0845-4A4F-628B3F77A04B";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape8" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "31AC783B-4760-889E-E2A6-20A9FC60C595";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -4.7683716e-07 0 0 0 0 0 
		0 0 0 4.7683716e-07 0 0 0 0 0 0 0 0 -4.7683716e-07 0 0 0 0 2.1175824e-22 -4.7683716e-07 
		0 0;
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
createNode transform -n "Cone_9" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8";
	rename -uid "5194E609-4B8B-C539-488A-6786EA9F8A90";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape9" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "CE2C6A1D-45EC-4C74-4C00-038F6FB3E694";
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
	setAttr -s 8 ".pt[1:8]" -type "float3"  -4.7683716e-07 0 0 0 0 0 
		-4.7683716e-07 0 0 0 0 0 -4.7683716e-07 0 0 0 0 0 4.7683716e-07 0 2.1175824e-22 0 
		0 2.1175824e-22;
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
createNode transform -n "Cone_10" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9";
	rename -uid "2FD67221-4B96-881F-3ABF-80BFCF21C044";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
createNode mesh -n "Cone_Shape10" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "101A762C-4C5B-D576-D551-F4A9ED3F954E";
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
	setAttr -s 2 ".pt[7:8]" -type "float3"  0 0 2.1175824e-22 0 0 0;
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
createNode transform -n "Cone_11" -p "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10";
	rename -uid "C76C7002-4B99-6D71-E189-4FB51112EECB";
	setAttr ".rp" -type "double3" 6.6613381477509392e-16 0 1.3597065407373885e-31 ;
	setAttr ".sp" -type "double3" 6.6613381477509392e-16 0 1.3597065407373885e-31 ;
createNode mesh -n "Cone_Shape11" -p "Cone_11";
	rename -uid "379CD1CF-47B6-E1C0-F414-26B2F560CC5D";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -0.56568539 0 0.56568539 
		0 0 0.79999989 0.56568539 0 0.56568539 0.79999989 0 0 0.56568539 0 -0.56568539 0 
		0 -0.79999995 -0.56568539 0 -0.56568539 -0.80000001 0 4.2351645e-23 -4.9303807e-33 
		-1.6 0;
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
createNode transform -n "pCone1" -p "|BODY";
	rename -uid "1710C6BB-4A1D-EA2F-6DD0-B9A1AE8426BC";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 2.5888257143052957 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 2.5888257143052957 0.075886246733894838 ;
createNode mesh -n "pConeShape1" -p "|BODY|pCone1";
	rename -uid "E838E9D4-4659-5563-8330-23AA05ECD0AD";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -1.5786443 -0.016666889 1.6545305 
		8.3486564e-16 -0.016666889 2.3084264 1.5786443 -0.016666889 1.6545305 2.2325401 -0.016666889 
		0.07588625 1.5786443 -0.016666889 -1.502758 8.3486564e-16 -0.016666889 -2.1566539 
		-1.5786443 -0.016666889 -1.5027583 -2.2325401 -0.016666889 0.07588625 1.0628682e-15 
		0.17470217 0.07588625;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode transform -n "pCone2" -p "|BODY|pCone1";
	rename -uid "8553EBAA-411F-7DB6-1BFE-5F955F508E7F";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 4.7801942941697977 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 4.7801942941697977 0.075886246733894838 ;
createNode mesh -n "pConeShape2" -p "|BODY|pCone1|pCone2";
	rename -uid "A5455438-4F7E-7E31-B7A4-17978A5D8CAF";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -2.0952497 2.1747017 2.1711359 
		8.3486564e-16 2.1747017 3.0390167 2.0952497 2.1747017 2.1711359 2.9631305 2.1747017 
		0.07588625 2.0952497 2.1747017 -2.0193634 8.3486564e-16 2.1747017 -2.8872442 -2.0952497 
		2.1747017 -2.0193636 -2.9631305 2.1747017 0.07588625 1.198017e-15 3.6650083 0.07588625;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode transform -n "pCone3" -p "|BODY|pCone1|pCone2";
	rename -uid "1B6444C2-496D-2C27-D9D5-6EB1F00693F2";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent2" -ln "blendParent2" -dv 1 -smn 0 -smx 
		1 -at "double";
	addAttr -ci true -k true -sn "blendParent3" -ln "blendParent3" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 8.2705011484178446 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 8.2705011484178446 0.075886246733894838 ;
createNode mesh -n "pConeShape3" -p "|BODY|pCone1|pCone2|pCone3";
	rename -uid "671D821D-47BE-7469-7F95-1B8174BA1904";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -2.7549462 5.6650085 2.8308325 
		8.3486564e-16 5.6650085 3.9719687 2.7549462 5.6650085 2.8308325 3.8960824 5.6650085 
		0.075886257 2.7549462 5.6650085 -2.67906 8.3486564e-16 5.6650085 -3.8201962 -2.7549462 
		5.6650085 -2.6790605 -3.8960824 5.6650085 0.075886257 1.3706e-15 8.8140373 0.075886257;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode transform -n "pCone4" -p "|BODY|pCone1|pCone2|pCone3";
	rename -uid "0EA0745F-4FD5-E191-F3FB-1493DF55FF54";
	setAttr ".rp" -type "double3" 8.3486565447502006e-16 8.2705011484178463 0.075886246733894838 ;
	setAttr ".sp" -type "double3" 8.3486565447502006e-16 8.2705011484178446 0.075886246733894838 ;
createNode mesh -n "pConeShape4" -p "pCone4";
	rename -uid "6C720516-4C0F-6B61-1FAE-0EA1B1F72D1C";
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
	setAttr -s 9 ".pt[0:8]" -type "float3"  -0.91189051 5.6650085 0.98777676 
		8.3486564e-16 5.6650085 1.3654945 0.91189051 5.6650085 0.98777676 1.2896082 5.6650085 
		0.07588625 0.91189051 5.6650085 -0.83600438 8.3486564e-16 5.6650085 -1.213722 -0.91189075 
		5.6650085 -0.83600461 -1.2896082 5.6650085 0.07588625 8.8843909e-16 4.1799116 0.07588625;
	setAttr -s 9 ".vt[0:8]"  0.70710671 2.60549259 -0.70710671 0 2.60549259 -0.99999988
		 -0.70710671 2.60549259 -0.70710671 -0.99999988 2.60549259 0 -0.70710671 2.60549259 0.70710671
		 0 2.60549259 0.99999994 0.70710677 2.60549259 0.70710677 1 2.60549259 0 0 4.60549259 0;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5E3E14D5-4C74-F38A-F863-CAB83EA78706";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "666630D0-4D16-DA5E-9EB6-97AE80B9494F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FF20F0C7-4A53-9AC6-31D8-10BD8FFF92F4";
createNode displayLayerManager -n "layerManager";
	rename -uid "4F99044A-465A-80FF-6A01-A2ADA74BDA02";
createNode displayLayer -n "defaultLayer";
	rename -uid "700CF323-45A3-CBC1-CCAD-ED8B83616D6B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B8BAF608-42C3-C308-F0C1-0792AE54E997";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4DB61021-4C5F-98C7-E8D8-5D96B7E84173";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FBE63C87-40BB-2856-B7F4-109B94BF0959";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 838\n            -height 1189\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 769\n            -height 1189\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 769\\n    -height 1189\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 769\\n    -height 1189\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "43E328CC-4B2B-0BA5-972C-119FD242B9F6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 175 -ast 0 -aet 175 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Cone_1_1_visibility";
	rename -uid "69FC3BCE-4394-E3EB-3966-B9BAD841C5F4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_1_1_translateX";
	rename -uid "F562B8C1-47A3-7405-5981-3B85501C9788";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_1_1_translateY";
	rename -uid "CE722F39-4A8C-F950-2829-7BA6262B80FF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3568283675268498 15 -1.3568283675268498
		 25 -1.3568283675268498 40 -1.3568283675268498;
createNode animCurveTL -n "Cone_1_1_translateZ";
	rename -uid "2F84DE70-4A9D-B030-06F1-91AF456B0076";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2.0000000000000004 15 2.0000000000000004
		 25 2.0000000000000004 40 2.0000000000000004;
createNode animCurveTA -n "Cone_1_1_rotateX";
	rename -uid "5CAD7E00-45DB-FA88-25FF-879B0ECA3460";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 160 15 160 25 160 40 160;
createNode animCurveTA -n "Cone_1_1_rotateY";
	rename -uid "AE602A5C-48EE-9D71-11F9-E1A3B9E1BD1B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_1_1_rotateZ";
	rename -uid "1C085F26-4C4D-B339-AA35-BAA301B076C2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_1_1_scaleX";
	rename -uid "A3714719-44AA-5B3C-66A4-4EB6DF5FACFD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_1_scaleY";
	rename -uid "F75CA363-432A-4362-8870-4490F7C44926";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_1_scaleZ";
	rename -uid "51C74808-458A-0A3D-3BFA-049BDB06DB5B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_visibility";
	rename -uid "B7510443-4F2C-72EF-0A0A-D1A34D52EEF8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_2_translateX";
	rename -uid "EAA16214-4AF7-02E4-F16C-42BDBAFA8BBB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_2_translateY";
	rename -uid "CFED8515-4E20-1861-AEA3-50B538364505";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_2_translateZ";
	rename -uid "E4085FC0-4BF8-3FEC-95D8-869BEA27DD38";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateX";
	rename -uid "5B40D92A-432A-4CA6-5304-F5B16601DA3E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateY";
	rename -uid "A4A33EA3-4C6B-35C7-987F-A4AAD60FA9B7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateZ";
	rename -uid "6502808A-437A-0BFA-7C24-B48C5AD8C9AA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_2_scaleX";
	rename -uid "C73C8077-4874-17ED-C57D-3984ED29875D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleY";
	rename -uid "07781ED0-4024-9F5F-206C-D2B21EF4B031";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleZ";
	rename -uid "1284A92A-4BBA-E620-E026-2B82F734942F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_visibility";
	rename -uid "DED8E622-441C-3702-55F2-179BC78A8E37";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_3_translateX";
	rename -uid "349DBA31-4242-7B0E-557B-CA9C30065CA2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_3_translateY";
	rename -uid "C251006C-4C8E-486F-D83F-F08F8178FA31";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_3_translateZ";
	rename -uid "9FC0FA21-47C0-81E5-8BE7-748421C44D0A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateX";
	rename -uid "6DE61525-415E-7A22-4F9B-72906FE150CC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateY";
	rename -uid "4E3D2892-412E-0219-6782-07A623949134";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateZ";
	rename -uid "D08588A0-4B3C-3893-405E-319F8C4D0794";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_3_scaleX";
	rename -uid "42EFE4DF-4868-4139-22F6-F2A5A4435A3B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleY";
	rename -uid "AEAA055A-4F50-E2D7-4622-7AA878645431";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleZ";
	rename -uid "CD94241B-4EF4-D32D-FDD6-14979196D456";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_visibility";
	rename -uid "D5B58E22-4175-5E03-A994-34820A4EF176";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_4_translateX";
	rename -uid "00AC2F97-4F52-5A7A-99BE-F7968247CCB1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_4_translateY";
	rename -uid "D5644097-4EDF-6DE0-B25E-C2978CB1D495";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_4_translateZ";
	rename -uid "392553B3-462A-0AA4-5C95-F284928AA520";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateX";
	rename -uid "240BF698-488B-344A-3F24-56A430C222CE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateY";
	rename -uid "08AE341F-4AD1-30B7-F6CB-8983D94B5C7C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateZ";
	rename -uid "DA467761-4416-CEBF-9492-85B9866EB958";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_4_scaleX";
	rename -uid "74F7750C-4311-6766-4B6A-59A2013D88F0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleY";
	rename -uid "5D0B7A58-4031-5E47-1FAF-40A0644EA467";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleZ";
	rename -uid "121AA7F3-4160-F738-72AA-7DA16823399F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_visibility";
	rename -uid "4C1C69C3-45F8-A028-36A7-2D82CDB1CBA7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_5_translateX";
	rename -uid "064E888C-4340-18B6-7C1F-E7B0B60DD13E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_5_translateY";
	rename -uid "DB01FD7E-44BB-627E-3451-83856A995B2A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_5_translateZ";
	rename -uid "481D7D24-4F23-E586-6F03-9A90A338BBE1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateX";
	rename -uid "31B7C3A9-40DE-4655-84B0-D0B38EA4C618";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateY";
	rename -uid "B95EC952-46F1-EB46-4B8B-3C8A41A9D208";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateZ";
	rename -uid "372E002D-4F5E-1F19-1080-7AB8802DB37B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_5_scaleX";
	rename -uid "1B3E96CD-4CDD-2C1D-3080-86B43DA79E76";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleY";
	rename -uid "4141C640-45A7-77B1-960A-E4AF782AFF14";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleZ";
	rename -uid "C7425CC9-457E-5B3F-6A26-77B401E94D66";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_visibility";
	rename -uid "6F04C5A0-4173-2BC7-D343-0E98E7D5C7F0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_6_translateX";
	rename -uid "C7336CC2-4A9C-2069-52B9-BF8BF13BA732";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_6_translateY";
	rename -uid "602719D6-4408-93F3-2C9E-76A135BEC7F4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_6_translateZ";
	rename -uid "9A6C1151-408B-23C7-5341-68A2C929A062";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateX";
	rename -uid "253AA103-424D-F14D-2D44-4FADAF73DFD8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateY";
	rename -uid "87D51557-492E-40C1-A2FF-3FA87F0D8096";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateZ";
	rename -uid "28CB5077-465C-31C2-01CA-5F9B2C2F2484";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_6_scaleX";
	rename -uid "1A350048-4EAF-CE89-DABD-C6A01AEEDB1D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleY";
	rename -uid "4A651687-4BE2-6FCB-74DD-D8A6895474FC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleZ";
	rename -uid "25FF0781-41E6-4789-341A-4396FD4AD13E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_visibility";
	rename -uid "F73D8D68-4E81-C03D-3EBD-1FA2C1864696";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_7_translateX";
	rename -uid "3409EB35-4EB4-2BEF-0581-0FA7905024BE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_7_translateY";
	rename -uid "B03F5DC9-4809-289C-C964-52BF91A22949";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_7_translateZ";
	rename -uid "2736C1C8-4D39-C698-7BC7-30BBCCA0BC9C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateX";
	rename -uid "EEC57A48-4999-B443-5711-8D911BABF75D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateY";
	rename -uid "5019A2A7-4E71-C73B-BF34-E18A479F49DB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateZ";
	rename -uid "6A8C89E0-41D6-828C-6A5D-2E8AC79356BF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_7_scaleX";
	rename -uid "EEF925A8-4575-99C0-F880-43AB700C3AED";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleY";
	rename -uid "390BF6DF-4C81-9EB6-4EE9-D7BC64067924";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleZ";
	rename -uid "D740BF6A-427C-7F57-C786-ABB1358D9DB2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_visibility";
	rename -uid "525412C4-4186-AD6B-FA38-20990BCFEDA9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_8_translateX";
	rename -uid "A0F6EABF-4FA2-697D-1C9C-76AD7F16379B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_8_translateY";
	rename -uid "B7AD7374-496A-4D47-6D5F-F18AD4D6CB8A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_8_translateZ";
	rename -uid "E8B95C5A-4BC4-090E-1D04-F180C93369A3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateX";
	rename -uid "FE2D1B7E-43E0-2029-F216-BDA76352133E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateY";
	rename -uid "3EB68CD6-493C-DA68-84CD-B4BDE2584F23";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateZ";
	rename -uid "E0A7B568-4700-6B3E-F973-3F8AB4D59F69";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_8_scaleX";
	rename -uid "2CBACB52-473E-6848-1FDB-4EA7B5964948";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleY";
	rename -uid "4A29EFC0-40B7-0047-1A13-C4B290506E54";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleZ";
	rename -uid "0F584A44-44AC-CA98-6FFD-B1B4E76EA474";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_visibility";
	rename -uid "FFDA21C8-4753-ADE6-9F62-02B507FC1968";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_9_translateX";
	rename -uid "632172D8-4222-C7F2-4847-4A871E407D7A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_9_translateY";
	rename -uid "F344FE7F-4D64-13F0-F8D1-619021FB80F1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_9_translateZ";
	rename -uid "4585E701-4D5E-6A06-8614-BDB6638B86A7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateX";
	rename -uid "F6962294-4A39-16DE-308B-49A0257C4F18";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateY";
	rename -uid "3E2BAD88-47F7-31C8-0A50-8C9AE98B5BA8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateZ";
	rename -uid "9215A5D5-4937-6196-6FDC-C3BCFD0337BF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_9_scaleX";
	rename -uid "45E0100E-4E63-1226-77DA-78BA259C4725";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleY";
	rename -uid "9138AA59-46CC-1D09-AABF-9FB1F6F8D409";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleZ";
	rename -uid "D89F6EE1-418E-75C2-8E71-DAA26D59E2F0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_visibility";
	rename -uid "0692F2F3-47CA-AB59-9F24-10BA7A57D673";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_10_translateX";
	rename -uid "8FAF67BD-43A6-7C0B-690E-3196249EDE3D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_10_translateY";
	rename -uid "615F6F3A-4C6D-EE63-077C-62A7266BD6CB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_10_translateZ";
	rename -uid "605C0776-4620-11ED-2DB9-BB87BC586CB2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateX";
	rename -uid "9C398034-4127-D1DA-2264-8A8EFC43706C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateY";
	rename -uid "C51B11D1-4738-EE1A-F40F-C1B78A1B218C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateZ";
	rename -uid "8D934B56-49CB-9A54-6A08-2DAF21AD8030";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_10_scaleX";
	rename -uid "B604CBDF-4B5B-5F90-5BC2-D4977CC6B9EE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleY";
	rename -uid "B89E3AB9-4FE1-8168-F340-D79E35AFC188";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleZ";
	rename -uid "1F14B505-41B0-1D04-8552-76B64BC71C8D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_2_visibility";
	rename -uid "E76DA959-4B17-8FEA-4D3E-B1B81763BF1E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_1_2_translateX";
	rename -uid "F1193367-4E0D-8DE9-C374-4FBFBA761922";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_1_2_translateY";
	rename -uid "B583A960-4E42-1546-9899-E5B999C4A2DE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3568283675268502 15 -1.3568283675268502
		 25 -1.3568283675268502 40 -1.3568283675268502;
createNode animCurveTL -n "Cone_1_2_translateZ";
	rename -uid "DBCCC0ED-403B-3938-43FE-B08070807E33";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -1.9999999999999998 15 -1.9999999999999998
		 25 -1.9999999999999998 40 -1.9999999999999998;
createNode animCurveTA -n "Cone_1_2_rotateX";
	rename -uid "01253A10-4231-58FC-E9CC-C28E3205A356";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -160.00000000000003 15 -160.00000000000003
		 25 -160.00000000000003 40 -160.00000000000003;
createNode animCurveTA -n "Cone_1_2_rotateY";
	rename -uid "1D4C5953-4D1F-F317-EEE8-78B5AC05FEE3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_1_2_rotateZ";
	rename -uid "DF207048-4BDD-C11C-9F1A-6889697D2B9B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_1_2_scaleX";
	rename -uid "83616F00-4880-1CD4-7BE6-0CA86AEC1D6F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_2_scaleY";
	rename -uid "54871FE5-4217-C6FD-441E-F5AA03C414D4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_2_scaleZ";
	rename -uid "2F643C28-4BCB-9F97-AEC4-88A78E678093";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_visibility1";
	rename -uid "4CA7B46D-45B2-2884-2C0D-5683E0DCC524";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_2_translateX1";
	rename -uid "4458A335-48DD-4DC7-2567-FC811AB8FA1C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_2_translateY1";
	rename -uid "344DF4BC-478A-4504-60F8-609F2067B962";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_2_translateZ1";
	rename -uid "1102C37E-4688-C80C-64C5-599FEA22134A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateX1";
	rename -uid "B363D4FD-4EE5-0BB9-4BE4-6489C9A9AA75";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateY1";
	rename -uid "EE524E2D-4C3A-5F9D-A9C1-1A9433C368A3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateZ1";
	rename -uid "748797DA-45A5-5CAC-9899-DD8D8681EA2D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_2_scaleX1";
	rename -uid "69051866-4095-551B-B323-F09ABF2B2C35";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleY1";
	rename -uid "E05B00E2-409E-2E6A-BF42-ABBB4BCA9BF5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleZ1";
	rename -uid "42BF4254-4300-E7E7-73DF-319E158C1DDB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_visibility1";
	rename -uid "02FBEEA2-437C-368D-2750-A781536680AD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_3_translateX1";
	rename -uid "82077CF1-4321-D6CD-FF4B-1BB08C176A49";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_3_translateY1";
	rename -uid "B091F429-438D-4067-436D-D0992169B971";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_3_translateZ1";
	rename -uid "36EEE736-4507-A67D-8C9E-4FA06603F8B7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateX1";
	rename -uid "4A4A9715-4288-5ED7-9219-299B81B23DFF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateY1";
	rename -uid "9E172EBA-44BE-2C68-3A0C-F78D4637EB00";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateZ1";
	rename -uid "6104AE2A-4EF0-9217-70AF-888EFBB5D129";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_3_scaleX1";
	rename -uid "EF9F7E8F-4CB4-D5BB-6D70-4BA68674970F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleY1";
	rename -uid "7F0EAEAD-4D0B-BF75-CFFA-3F9361FCD707";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleZ1";
	rename -uid "71483A5F-48E3-0DB3-BCA1-8387A3564277";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_visibility1";
	rename -uid "CF520166-4A2F-6158-4727-1FBF9F3D3585";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_4_translateX1";
	rename -uid "1AD5E1A6-4FFC-D6E1-6B25-A3961E77889D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_4_translateY1";
	rename -uid "4529AA93-4F1E-07AF-0F90-E9820FE2D19F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_4_translateZ1";
	rename -uid "458C11E2-4536-79D9-C03F-4BAEF06780BE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateX1";
	rename -uid "5063E675-4DAC-5B5A-6DE6-8DBAE85095E6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateY1";
	rename -uid "D311CC72-4DAA-3306-60DD-BCA15D7BAACF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateZ1";
	rename -uid "96305A98-41AD-A9ED-F2BE-6596986F117E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_4_scaleX1";
	rename -uid "20AE9A8D-44E5-4F24-E766-EF84FAFC87AF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleY1";
	rename -uid "4F954509-4A7C-06F9-4868-10824AE9A9B7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleZ1";
	rename -uid "B9F97649-4FED-5BFC-AF35-63802C1D42E2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_visibility1";
	rename -uid "013F21CF-48DC-1C47-3289-108D2C65F5AE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_5_translateX1";
	rename -uid "53A931A8-4748-3C66-7852-31BD3FBDEEBD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_5_translateY1";
	rename -uid "C7639096-4F94-D19B-629F-0C80FF3BBC32";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_5_translateZ1";
	rename -uid "3CA00CF2-4AA2-5EF2-D81F-BEA3CBC1867E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateX1";
	rename -uid "676875BB-46BF-D10E-5D08-3C9921D0C27A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateY1";
	rename -uid "9518AAEA-4610-94E3-58DE-9283C03A95C9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateZ1";
	rename -uid "8670E08B-496E-93FB-D315-768C3EDD91AE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_5_scaleX1";
	rename -uid "54D7A58F-4C24-887F-0241-A2811A1A2D4C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleY1";
	rename -uid "8CA3FC44-4376-D3BC-9578-DB837F4A89AE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleZ1";
	rename -uid "34F29224-482F-90E8-6BD6-EAA76EE6B16E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_visibility1";
	rename -uid "BF5D539C-4152-D2DA-E6F8-80A1D5F5A205";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_6_translateX1";
	rename -uid "4632FBB3-494C-6210-DB68-3FB849342E70";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_6_translateY1";
	rename -uid "1E3DCDD9-4961-2BFC-A0C3-00A2D5797C54";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_6_translateZ1";
	rename -uid "546F7CDF-46EE-F796-A3B8-15A3323FFDD7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateX1";
	rename -uid "9DB9CB82-4A8D-087C-AF1C-85B04BED392A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateY1";
	rename -uid "8BAD3A3B-4EDA-DE53-B93C-2399367C8A29";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateZ1";
	rename -uid "C886013C-4094-4B26-0F84-B2A3B7E06BEC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_6_scaleX1";
	rename -uid "1EFF05ED-495C-2502-31AC-D08F7DD286FD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleY1";
	rename -uid "86DDBA40-44B3-86AC-56FC-4BA8940EC9BD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleZ1";
	rename -uid "D78E2E33-4525-90A3-A64C-F2B744E9B8E5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_visibility1";
	rename -uid "7BB07B30-4F29-3E99-710F-32ADC3487D02";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_7_translateX1";
	rename -uid "6F62D8F8-4312-11A1-CE37-26AD1373C60D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_7_translateY1";
	rename -uid "477B3DE4-435F-9DE2-3AE2-C8ABD2361633";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_7_translateZ1";
	rename -uid "FAA50ECC-4C05-9CEE-FC00-E08970846AFB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateX1";
	rename -uid "2D3824B2-4950-5520-016F-1AB1FE07D377";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateY1";
	rename -uid "BB67FDBB-452E-DE5F-AA07-FF8B166B983C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateZ1";
	rename -uid "5C136803-4C10-0193-0F55-5292C3EB9FCE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_7_scaleX1";
	rename -uid "2F15B8A4-4455-9A62-CE8A-DDAF582F1A1F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleY1";
	rename -uid "A079AF11-4456-08E2-EE6F-64858D6BC392";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleZ1";
	rename -uid "B5B6A43F-41FF-EF60-ADDC-81A6355FD7C6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_visibility1";
	rename -uid "F08463A1-4278-3049-9487-FD93232E581D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_8_translateX1";
	rename -uid "326DC619-4427-EB68-B4FA-89A3D0C29033";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_8_translateY1";
	rename -uid "0EB15856-495F-9AC5-3CDE-5E9A925127C6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_8_translateZ1";
	rename -uid "72365EC9-4C78-261A-238D-66BFF72B9E82";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateX1";
	rename -uid "7AFB589B-4B73-7C43-41CF-4482D149A450";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateY1";
	rename -uid "A0B1864F-4839-13E0-1952-AE810281938D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateZ1";
	rename -uid "F84759E4-414B-D542-C5AE-BA8BD1D5E6DF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_8_scaleX1";
	rename -uid "5A324D81-4166-AE06-DCE0-159150E2A17C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleY1";
	rename -uid "24F578DB-4939-C80A-98CA-A288937B3F9E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleZ1";
	rename -uid "F1D91259-4D00-6257-F523-BD82446AB51F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_visibility1";
	rename -uid "8C7C0A21-4BD4-8697-A758-2ABF0AF59FEE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_9_translateX1";
	rename -uid "67B1FC1E-4183-2288-0B59-558D255FF915";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_9_translateY1";
	rename -uid "1705E551-473D-B1B1-FBCC-2C9AA3144356";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_9_translateZ1";
	rename -uid "4BF2ADB5-4888-B0F2-C6FD-8BA060E7E730";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateX1";
	rename -uid "349F7573-4A05-7EB0-11F7-A6B4F5E24852";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateY1";
	rename -uid "0F38AEC6-4374-5435-D8D4-1C84E5F6AFF6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateZ1";
	rename -uid "B66735C3-4319-0761-945C-3DBB38052C4B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_9_scaleX1";
	rename -uid "7F2C7E81-4D25-2D1E-A7D7-049FD9D3FE5E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleY1";
	rename -uid "2BA7B7BE-4577-B658-B37D-FAB17CD2DA0E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleZ1";
	rename -uid "7751157E-4688-0E61-51F5-E1B6DED6ED72";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_visibility1";
	rename -uid "1B3DBF68-4814-7269-06F8-20AA92C65307";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_10_translateX1";
	rename -uid "FB821942-4765-8019-F163-F09022C8526A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_10_translateY1";
	rename -uid "B605E058-487F-A11F-E297-139B7F2EDB61";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_10_translateZ1";
	rename -uid "AA200B1E-477A-6778-C664-84824FC4C976";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateX1";
	rename -uid "9403E97D-49A4-F762-F179-BBBBE3D97388";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateY1";
	rename -uid "9FCB8408-4410-305E-5067-9BB7F0FC1211";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateZ1";
	rename -uid "B5FF9808-42F3-9DDE-78D7-44A8860FCBFB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_10_scaleX1";
	rename -uid "559B67C8-44B1-A01F-102A-4E9246D8454F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleY1";
	rename -uid "862EF7E0-4A6E-2356-D422-55B4E72B5C85";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleZ1";
	rename -uid "60E2D3AD-47B2-2D4E-8041-5AB970C257FF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_3_visibility";
	rename -uid "6208D138-41A8-46DD-85E9-409952979AE6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_1_3_translateX";
	rename -uid "D4EECD40-4916-EB01-D4D2-8ABB7EE07AAD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_1_3_translateY";
	rename -uid "59985DFE-4F45-3599-FA2F-06B7AA7B2752";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3568283675268429 15 -1.3568283675268429
		 25 -1.3568283675268429 40 -1.3568283675268429;
createNode animCurveTL -n "Cone_1_3_translateZ";
	rename -uid "CD134F72-4A78-9CF6-3B3D-B0970C861B5E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2.3737866158521966e-16 15 2.3737866158521966e-16
		 25 2.3737866158521966e-16 40 2.3737866158521966e-16;
createNode animCurveTA -n "Cone_1_3_rotateX";
	rename -uid "00760EF6-427E-DED1-6B24-D2B835F7CA6F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 180 15 180 25 180 40 180;
createNode animCurveTA -n "Cone_1_3_rotateY";
	rename -uid "EFEED4F7-4CFE-C616-5C86-D8AB465A51E6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_1_3_rotateZ";
	rename -uid "3480F61F-4AC5-E812-D6C8-35B988682AA2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 20 15 20 25 20 40 20;
createNode animCurveTU -n "Cone_1_3_scaleX";
	rename -uid "9043530C-4FF2-94E1-6A2E-0DB9D4400F2F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_3_scaleY";
	rename -uid "9CA44481-43DD-15C5-CAB1-1BA50D5A5C1E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_3_scaleZ";
	rename -uid "8C0E521C-4865-5081-61AB-36B381705F59";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_visibility2";
	rename -uid "B9EFE8D0-4EC6-835E-CF3B-CEAA613AA92F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_2_translateX2";
	rename -uid "D0693770-4654-8010-8EDB-88AA6DD645F0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_2_translateY2";
	rename -uid "A36417DA-4B1B-EA94-2D23-6BAA45A4790D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_2_translateZ2";
	rename -uid "617BFD63-445C-E257-E684-338378A838B3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateX2";
	rename -uid "1D44E992-4200-1B98-70D9-88B0E7D10EE4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateY2";
	rename -uid "C97CAC9E-4866-4033-EB8A-93A38215E4F5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateZ2";
	rename -uid "F164BF1E-4419-DD68-8650-45B93AE27A29";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_2_scaleX2";
	rename -uid "C479DB40-465B-55FC-964C-60BA6FC60144";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleY2";
	rename -uid "69FC4B44-4430-0EEB-1268-B7987BA13FED";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleZ2";
	rename -uid "85771BB8-4B8F-EF81-3A2F-F386889DD7CC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_visibility2";
	rename -uid "B09EBE5A-4121-C068-F043-27A7ED429D38";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_3_translateX2";
	rename -uid "54FE00C1-4444-5828-2E73-0688D9038772";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_3_translateY2";
	rename -uid "D8511986-4D79-4347-D94E-25AE5AD15C33";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_3_translateZ2";
	rename -uid "551500D4-4730-EA42-4E94-958A32535916";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateX2";
	rename -uid "2DA74D62-4A11-EDBC-E90E-A48C4314D3C9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateY2";
	rename -uid "754ED7D4-49C3-DF6C-ADE0-D7BC82989FAB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateZ2";
	rename -uid "934F5DF9-486A-278B-E56A-1DA3D565C221";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_3_scaleX2";
	rename -uid "4C33C77A-40FC-D918-E429-E9B61A510066";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleY2";
	rename -uid "65C583F9-44E5-8E6D-ADAB-EAA28A45E486";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleZ2";
	rename -uid "04DF3658-4D2E-3E33-A8AF-238B4CE1365B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_visibility2";
	rename -uid "81EC4591-4042-A648-1261-3AAF792A5804";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_4_translateX2";
	rename -uid "1A17FDBC-4DCE-F737-5318-CAB8C5339A50";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_4_translateY2";
	rename -uid "A7A9644F-4950-41C5-134F-C4A1FC4A02D1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_4_translateZ2";
	rename -uid "F4E55D40-4C45-6A34-C0DE-DE84E018EAC4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateX2";
	rename -uid "151E2756-45B9-6ECA-18B9-ABA109AFB074";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateY2";
	rename -uid "18A98CDE-4AF8-CECC-5F32-15ACFD279215";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateZ2";
	rename -uid "241079EC-493B-1268-8366-568417A9D114";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_4_scaleX2";
	rename -uid "AEB683FB-4B5E-C1B3-5BD9-18B4EBBBF0CC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleY2";
	rename -uid "F0DED590-49E1-24E7-803F-7C9991EB2BD2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleZ2";
	rename -uid "43275CEA-4490-B222-280B-F6812B1D08A1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_visibility2";
	rename -uid "527B5971-432B-C16D-8730-DC8C45E6A6A6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_5_translateX2";
	rename -uid "C6E5AB9A-41AA-E00E-F015-7D82A702B57A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_5_translateY2";
	rename -uid "DDFBD3B2-4348-5838-E2BF-29B9EAB6E57F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_5_translateZ2";
	rename -uid "DD14F510-4CAE-CE41-AE08-64AFAD680D88";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateX2";
	rename -uid "17652BCD-4C21-89FA-BA55-D2AFBE80D98E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateY2";
	rename -uid "2A4F56D0-4AE5-1575-1E9B-D7B7F0E8CF9B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateZ2";
	rename -uid "6B4BBDCE-4E36-65B2-A4A8-0EB4485E7ADE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_5_scaleX2";
	rename -uid "FA1D173C-4B1B-77FB-04C1-3CAE2950D105";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleY2";
	rename -uid "7D57FF5C-413D-A8BC-5420-C986A2206460";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleZ2";
	rename -uid "8E64240A-4A10-2FFD-42A0-73906408D890";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_visibility2";
	rename -uid "99B595B5-403B-73C0-DA53-90AAC3A62457";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_6_translateX2";
	rename -uid "4DB958C9-472E-A5D4-0643-009136DE210D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_6_translateY2";
	rename -uid "338ADF20-4C8A-15B6-6306-53B06720FAFC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_6_translateZ2";
	rename -uid "6C5F4184-4927-228D-33A7-1DB4128893AB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateX2";
	rename -uid "47CE7099-46C5-3532-16D1-29993FE4C908";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateY2";
	rename -uid "25059D19-4ED9-A2C3-0F7E-DCBFC981EA61";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateZ2";
	rename -uid "7364677E-4071-169B-4B9C-1DB51EE1F240";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_6_scaleX2";
	rename -uid "27E0807E-4C46-3AD6-6FFB-F19D4E0BFA05";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleY2";
	rename -uid "2A4F21A6-4EC0-CBBC-A550-73B2F334A4F8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleZ2";
	rename -uid "72D2E4F9-4A89-7DA7-9064-0E98260D0771";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_visibility2";
	rename -uid "699035A7-4282-E5DD-C3DC-699884B42B39";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_7_translateX2";
	rename -uid "EFCFC565-4E86-6BEA-D69F-E38D09C3EAAB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_7_translateY2";
	rename -uid "59236B19-4295-3F33-1BA6-AFBE6ACF8FB0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_7_translateZ2";
	rename -uid "13361185-443B-DEC2-2481-048E172E36D4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateX2";
	rename -uid "CCABCB12-4B44-7869-0518-40AE460299ED";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateY2";
	rename -uid "6AA1F4DF-4BA9-89BF-9829-28BF45882804";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateZ2";
	rename -uid "0765E189-44B9-276B-4F0B-AA8B070E6501";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_7_scaleX2";
	rename -uid "B5791F58-43DC-9612-FCE9-209A510002C5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleY2";
	rename -uid "E357E043-4BBC-0758-B8CE-26A8EACE6BE2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleZ2";
	rename -uid "84C98950-4CBD-E403-12BF-708A599C61C4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_visibility2";
	rename -uid "356AD679-45F7-7F66-D4ED-C18FC8D4D56F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_8_translateX2";
	rename -uid "B333722D-4245-B2FA-A3C6-BCB8045FE93D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_8_translateY2";
	rename -uid "4935FAA7-4DF8-7E6A-FDC5-7F9E131F459E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_8_translateZ2";
	rename -uid "868D002E-4808-198A-6C96-7090BD1A9680";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateX2";
	rename -uid "8F5A05ED-44BD-11D3-F8C5-91A0298948C8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateY2";
	rename -uid "5EA08001-43AF-6A54-9A0E-93A9C7788896";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateZ2";
	rename -uid "F51C6957-406E-06B4-17D2-7E971F1189C4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_8_scaleX2";
	rename -uid "8DB59394-4740-8E2B-EA06-D099143E3071";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleY2";
	rename -uid "BBE08ADF-41E8-9DB2-430F-03806F423E6B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleZ2";
	rename -uid "29096C74-473D-0232-091E-26ACF29533FD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_visibility2";
	rename -uid "F1194220-41BD-7439-CC58-10A4CDCA587A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_9_translateX2";
	rename -uid "6D89929E-41C3-74EE-5B42-3C965FBE13B5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_9_translateY2";
	rename -uid "FB9915ED-403A-453B-4C98-419CB79368C1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_9_translateZ2";
	rename -uid "EDC98BD7-4E33-978F-3867-7C80E8535E92";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateX2";
	rename -uid "F1161A3F-4FCC-B468-B746-D1B5190BFF75";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateY2";
	rename -uid "43AD4627-4AF1-35FE-D479-858175C72792";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateZ2";
	rename -uid "F67C6C46-4AF9-F4B0-406E-1FBC87086379";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_9_scaleX2";
	rename -uid "FBBB6E8E-4C2C-3135-B35F-1580BB11ABD7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleY2";
	rename -uid "1B94B5B4-4C0A-A02E-4CC3-39BD5F36BB69";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleZ2";
	rename -uid "0B1F8865-42BD-C0DE-4630-198C66A16CE9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_visibility2";
	rename -uid "77645763-4F25-DA77-BDFD-4585DDEFAE0F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_10_translateX2";
	rename -uid "8CFF81E2-48A3-F9D6-441B-F1B0714F2116";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_10_translateY2";
	rename -uid "D2156167-49DB-A8B9-1830-48ADA3D51DEB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_10_translateZ2";
	rename -uid "6B4DB602-4617-A092-A508-24864276F61B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateX2";
	rename -uid "14D9B48A-41A1-6DF6-2D09-EABA6A54A9BB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateY2";
	rename -uid "37C8F97B-48C2-036B-4465-7BB0BE12B438";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateZ2";
	rename -uid "89C719B4-41E8-6CC2-666F-E1B363012E5C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_10_scaleX2";
	rename -uid "CEF23AE0-4D6F-57B1-395C-688B4EE99D01";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleY2";
	rename -uid "292C5C26-432D-34E0-24E5-F884B8297D12";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleZ2";
	rename -uid "5981B929-49AB-46B8-794D-A6BB68B0C04F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_4_visibility";
	rename -uid "F3008608-4794-E69F-217A-4989C2F1D224";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_1_4_translateX";
	rename -uid "66B91328-4A45-1FD4-994D-BBA995773D4F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -2 15 -2 25 -2 40 -2;
createNode animCurveTL -n "Cone_1_4_translateY";
	rename -uid "2EDACB0F-4112-F55A-E84D-4E9FC56B619F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3568283675268429 15 -1.3568283675268429
		 25 -1.3568283675268429 40 -1.3568283675268429;
createNode animCurveTL -n "Cone_1_4_translateZ";
	rename -uid "DCAEB08B-42B1-33BC-98C7-1B8D902F98E1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2.3737866158521966e-16 15 2.3737866158521966e-16
		 25 2.3737866158521966e-16 40 2.3737866158521966e-16;
createNode animCurveTA -n "Cone_1_4_rotateX";
	rename -uid "C90415A9-408B-947F-0006-99BF9F653CA3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 180 15 180 25 180 40 180;
createNode animCurveTA -n "Cone_1_4_rotateY";
	rename -uid "ED9F95A2-4514-1087-B07B-66AA031B8C92";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_1_4_rotateZ";
	rename -uid "760D8288-48D5-E755-4458-298DC2318F4E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -20 15 -20 25 -20 40 -20;
createNode animCurveTU -n "Cone_1_4_scaleX";
	rename -uid "B88B69D8-45DC-F49C-98EB-E3B54D192310";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_4_scaleY";
	rename -uid "5996016F-469E-B896-8331-8CB33EBD4B58";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_1_4_scaleZ";
	rename -uid "652C8561-4B95-E003-FDA2-F69524D9D090";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_visibility3";
	rename -uid "2C532AF6-4DA0-0D2A-D3D7-E3AC8453BF9D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_2_translateX3";
	rename -uid "3AB80716-477C-CED5-BC22-208A6E7F553F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_2_translateY3";
	rename -uid "2C1F5F2A-4243-A596-C872-80B5770610BD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_2_translateZ3";
	rename -uid "99867434-4BB9-E413-1BD0-A4A95859C0A5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateX3";
	rename -uid "950BBC99-4E80-AAF8-F84A-0CA4D91D7576";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateY3";
	rename -uid "D4FC71A8-4E79-0EE5-9D50-8FB78675A895";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_2_rotateZ3";
	rename -uid "A3049508-4856-003E-3788-7293024081E8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_2_scaleX3";
	rename -uid "A38A0AE5-42D1-AB25-6A0E-458A25218204";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleY3";
	rename -uid "729B0AE1-44AF-0B4B-A7B1-BFA9A6D7849E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_2_scaleZ3";
	rename -uid "3833862B-4CDC-AED8-3E6E-F695164562E3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_visibility3";
	rename -uid "E1CB3DFA-4541-C91C-D302-3A8B0B8C9CAE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_3_translateX3";
	rename -uid "EA96E83E-416B-BCF2-727D-DF894A9B196B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_3_translateY3";
	rename -uid "D41E386D-4295-0F14-119D-2AB12E6F657B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_3_translateZ3";
	rename -uid "1502BEBE-4C2B-DCA6-06D4-1A955B629654";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateX3";
	rename -uid "E7B3C339-441A-3DBC-ADB8-F1971824CB74";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateY3";
	rename -uid "F4E86D54-466F-A475-18E4-2D989926278D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_3_rotateZ3";
	rename -uid "5DB7B503-4565-C14B-B436-0E9229DC09E2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_3_scaleX3";
	rename -uid "321EC224-4599-80B7-8B51-38B773973430";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleY3";
	rename -uid "DE6C9CE5-4E2D-B154-F319-C9ACFEA9E437";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_3_scaleZ3";
	rename -uid "9C441121-4FFE-D836-4F5D-74AEAE8CB7EF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_visibility3";
	rename -uid "A524E97D-4C13-EA56-C419-608BCE18D4EE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_4_translateX3";
	rename -uid "83E11350-47C4-12A6-5F5F-70813E18B1F0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_4_translateY3";
	rename -uid "B4E31507-4B9B-90FA-E674-1C82222C7B9A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_4_translateZ3";
	rename -uid "3B70EBB2-4D46-E76B-6DEA-F1BE312C4D5B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateX3";
	rename -uid "14E4BE85-4140-C113-70C1-FD8B5E7D6E50";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateY3";
	rename -uid "C09246A6-4B4B-17D6-B300-F9A449810315";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_4_rotateZ3";
	rename -uid "8324B8D2-4EB6-8750-268A-E8BCBC511E6D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_4_scaleX3";
	rename -uid "C93795FF-4C53-B8D0-BB5B-12BBAC4F3AA0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleY3";
	rename -uid "964C5BF8-408D-3B5B-52C9-BABEE1BCA7F4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_4_scaleZ3";
	rename -uid "E5F07957-4022-908B-7901-34B92680D45A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_visibility3";
	rename -uid "9621E780-460C-07C9-15B6-2585B509B51E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_5_translateX3";
	rename -uid "5ADB9AD0-48DF-98CA-1834-71B4AB080A14";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_5_translateY3";
	rename -uid "89A42FFE-418E-88A2-EC9A-58BA76ACEB20";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_5_translateZ3";
	rename -uid "8F68C688-40A5-F3AA-3A3C-DC8CCCC1ACDD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateX3";
	rename -uid "65CE4687-42F4-7A0B-6565-1697000ED369";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateY3";
	rename -uid "4575E98D-4E92-8CC1-1FAF-22830D5C7494";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_5_rotateZ3";
	rename -uid "6B0B5149-4274-5910-F4D0-DE8DDF00FDA2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_5_scaleX3";
	rename -uid "4FEA2150-4172-B558-D3C9-228B15B7F286";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleY3";
	rename -uid "CF468982-45A0-32D1-9081-D38095D35754";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_5_scaleZ3";
	rename -uid "0A546FA8-4F4B-A08E-BF4D-E4880EF68C7A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_visibility3";
	rename -uid "B4887A77-4A83-5060-C74B-86AD0CE56FAC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_6_translateX3";
	rename -uid "30C842C8-46F7-0115-5B99-D7A26A0A3DB5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_6_translateY3";
	rename -uid "82AA9A4A-4926-5698-C81B-A8AE37B3215C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_6_translateZ3";
	rename -uid "46EAFB74-4380-831F-09CC-B4B084FF9BB9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateX3";
	rename -uid "D8123F00-4610-1531-F2DC-698048F097AB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateY3";
	rename -uid "CFBF6542-4F14-4EF4-FE3A-7880D8E4F578";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_6_rotateZ3";
	rename -uid "640D2E4A-49EC-C062-1E72-CD9C6635A38A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_6_scaleX3";
	rename -uid "8537461B-447F-ADB0-38B7-1C8CA8458F6D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleY3";
	rename -uid "23CEC6A4-47A7-012A-9868-148A0144D447";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_6_scaleZ3";
	rename -uid "A9B71DC6-4C2F-5746-9195-8EA8DDF69211";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_visibility3";
	rename -uid "BF49DDF4-4B8E-E030-51A7-E29094216D99";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_7_translateX3";
	rename -uid "273944E1-4406-7E0A-328A-AA9DDD4A7137";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_7_translateY3";
	rename -uid "04E2C656-47CA-1BF7-7D5F-D684841EAD53";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_7_translateZ3";
	rename -uid "D0D8ED2D-4264-3638-3FA3-6C973FBA5C27";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateX3";
	rename -uid "4A92FEA1-4156-4CD2-C174-67B56E6F24BA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateY3";
	rename -uid "4E397ECA-4723-63D4-8D46-05BBD21E27D0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_7_rotateZ3";
	rename -uid "12587532-4647-3348-BDD3-0BB3C26E95DA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_7_scaleX3";
	rename -uid "83909E05-4A48-0429-DB78-25AED9BA1397";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleY3";
	rename -uid "C337EA1D-41D7-F3E2-4E96-E884EE116097";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_7_scaleZ3";
	rename -uid "2C126E95-42D4-7E49-BA94-A2AF781B513B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_visibility3";
	rename -uid "69DE3FF4-4C01-9604-B402-FB93D5D7D631";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_8_translateX3";
	rename -uid "37C12362-42F2-010C-18C8-55B427B03216";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_8_translateY3";
	rename -uid "06D08FC7-4125-8139-78ED-5C99F2060A6E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_8_translateZ3";
	rename -uid "741A76A8-4965-C6E1-7D34-5095610741E6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateX3";
	rename -uid "1E7D3380-4089-8F55-45BB-3482AA2EF831";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateY3";
	rename -uid "031FEF50-4273-E694-E5B0-8387A6C76241";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_8_rotateZ3";
	rename -uid "995A36EC-4D81-DA94-F4AD-E0BDA28BF573";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_8_scaleX3";
	rename -uid "4E26AA9D-4EE9-D927-FB84-AC90DE078EB9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleY3";
	rename -uid "B97E2029-4645-C743-46FC-5A8BCFCF9AE4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_8_scaleZ3";
	rename -uid "A374F623-4200-FACF-2C91-70B3713F7EA6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_visibility3";
	rename -uid "70595782-4AD1-C927-175D-2D847B8CACA7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_9_translateX3";
	rename -uid "7818BFE8-47C5-1D78-729B-4680B6A9B687";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_9_translateY3";
	rename -uid "56D9C04D-4A9B-ADED-DFB0-7F8960094461";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_9_translateZ3";
	rename -uid "A2B63D6D-4CAB-EED6-747F-0E9FCC258258";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateX3";
	rename -uid "7E991C3D-4E08-EEA3-C8FF-D48107DFEF81";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateY3";
	rename -uid "BF932AA0-4F5E-818E-E34D-168853D6201A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_9_rotateZ3";
	rename -uid "A8D8C428-416A-E161-A30B-FF9F16DA6AB5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_9_scaleX3";
	rename -uid "EC5A068B-45AB-C44C-7B09-798A73663D6C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleY3";
	rename -uid "433194DF-40FA-BEE3-D5F4-0A942DCACF29";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_9_scaleZ3";
	rename -uid "D942D994-4113-6A06-5502-97B5A527556E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_visibility3";
	rename -uid "25D95353-41D2-CB32-DB32-CABFFAA17C8F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_10_translateX3";
	rename -uid "86C18CD8-4997-351A-7A7A-63A97EB1E0D6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_10_translateY3";
	rename -uid "4BC4387E-44F1-F5DA-EC3C-138C58D6B489";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2 15 2 25 2 40 2;
createNode animCurveTL -n "Cone_10_translateZ3";
	rename -uid "BEC12555-4E60-ED71-1263-D4986292828F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateX3";
	rename -uid "F79467E8-4754-F48E-ADFA-40B0F1D19465";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateY3";
	rename -uid "9B830756-405D-C1E7-A43C-25973D736370";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_10_rotateZ3";
	rename -uid "C07B7BC7-439A-7B98-226D-38BD5FE3A616";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_10_scaleX3";
	rename -uid "792A075D-48D5-EB23-75E5-A0A676D91F65";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleY3";
	rename -uid "9F48F782-499D-FB42-B72E-80A531F8D591";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_10_scaleZ3";
	rename -uid "A855C502-4A00-B280-941A-9E9C44EA950C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone1_visibility";
	rename -uid "57125330-415F-B2DA-D0BC-F0BE56DD8DFE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pCone1_translateX";
	rename -uid "F3D388B1-4186-6005-E810-ABABA46D8E3C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone1_translateY";
	rename -uid "57EC5122-4B18-C78A-A396-759ED8E84EDC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone1_translateZ";
	rename -uid "0E07C257-40F2-BABE-3FDA-D2BFF2E8CB30";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone1_rotateX";
	rename -uid "2EF4C004-4B68-B86B-9E63-4B9BC85D5511";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone1_rotateY";
	rename -uid "360DA987-42B4-A9AF-BB32-BC939CB88294";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone1_rotateZ";
	rename -uid "739C5BA5-4F5A-BC48-B3A4-6D8A54BF9D19";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "pCone1_scaleX";
	rename -uid "808F1A5A-4205-FFF6-EE57-5C80E97042E9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone1_scaleY";
	rename -uid "86B668C0-43DB-8BAD-181C-DB886C762711";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone1_scaleZ";
	rename -uid "81795B33-452C-BA1F-189F-3B9E922882D4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone2_visibility";
	rename -uid "5B43166E-482D-9202-6050-168FD810D6FB";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pCone2_translateX";
	rename -uid "65AAE6BA-4247-204B-5BA6-2C917A642AF3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone2_translateY";
	rename -uid "E3E160D9-44D5-C250-856E-229CF2ADFDBA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone2_translateZ";
	rename -uid "C243D48A-48A4-446E-9266-AAB3440B113C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone2_rotateX";
	rename -uid "37BB5148-4F7A-3354-9638-4F8828A883FB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone2_rotateY";
	rename -uid "3FC820EE-4DCB-85F1-8275-309157CC9D60";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone2_rotateZ";
	rename -uid "9106D941-4F96-A99E-84D1-2F9F553F6415";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "pCone2_scaleX";
	rename -uid "A4AA32F1-45B2-6B11-3378-1EA34D14EBB6";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone2_scaleY";
	rename -uid "39CEEC29-4E9C-482E-412B-09B7574F1858";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone2_scaleZ";
	rename -uid "F253EA9B-4293-128D-B595-DB8D17BC45CC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone3_visibility";
	rename -uid "3D76DFF8-462B-BE20-D30F-968232E2AE7C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pCone3_translateX";
	rename -uid "EEFE9DC0-48A7-982B-614B-A9BE9BB40F21";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone3_translateY";
	rename -uid "7B700B5A-42D4-C857-E2E4-6089C6EC79FA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone3_translateZ";
	rename -uid "DC519786-4EA8-1960-C8D5-39A8742F131E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone3_rotateX";
	rename -uid "59ED67CE-43D3-D4EF-EF55-57916BB63F40";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone3_rotateY";
	rename -uid "7002AAAD-4601-3ABD-1DD5-C89962690BC1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone3_rotateZ";
	rename -uid "C1124B36-4282-300E-570C-6BB0706DD881";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "pCone3_scaleX";
	rename -uid "BB017331-4227-EC76-FFCF-BFBAF5629A4E";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone3_scaleY";
	rename -uid "F0EEC4D4-4283-CAFB-5C69-3387C8167036";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone3_scaleZ";
	rename -uid "314221C4-457E-D425-9156-E189429CCE37";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_12_visibility";
	rename -uid "31EF0F16-42C9-EFFE-DF78-65A8CAF70B90";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_12_translateX";
	rename -uid "D252AD8E-4085-583A-BA30-B283F886EC56";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_12_translateY";
	rename -uid "F9803826-49CA-E1ED-C117-E5A516E8D5D7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1.999999683220711 15 1.999999683220711
		 25 1.999999683220711 40 1.999999683220711;
createNode animCurveTL -n "Cone_12_translateZ";
	rename -uid "613B520A-47A9-287C-00E5-A8B3AE9E6A90";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 8.8817841970012523e-16 15 8.8817841970012523e-16
		 25 8.8817841970012523e-16 40 8.8817841970012523e-16;
createNode animCurveTA -n "Cone_12_rotateX";
	rename -uid "01C676EF-4284-A121-DB84-529DEECB2BF3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_12_rotateY";
	rename -uid "5927CB7F-4FAF-5033-F14C-8EA5054F6368";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_12_rotateZ";
	rename -uid "DBB3FA85-4135-BB8E-53D4-84B2D667634C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_12_scaleX";
	rename -uid "DFA2C25C-4459-FA62-37D0-17B61185E842";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_12_scaleY";
	rename -uid "091603AB-4BF7-D345-E989-84B35B89D1AD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 40 0.99999999999999989;
createNode animCurveTU -n "Cone_12_scaleZ";
	rename -uid "0D45CB6A-4F9B-FB2C-031A-9491181B8D99";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 40 0.99999999999999989;
createNode animCurveTU -n "Cone_14_visibility";
	rename -uid "06D620C2-41DE-BFD2-3D80-B69DA381B7D0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_14_translateX";
	rename -uid "DF492441-4F97-9A62-2A23-8B8131D27723";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "Cone_14_translateY";
	rename -uid "95E9D934-4219-7F94-6E1F-D0A7DFB3D505";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1.999999683220711 15 1.999999683220711
		 25 1.999999683220711 40 1.999999683220711;
createNode animCurveTL -n "Cone_14_translateZ";
	rename -uid "A2C21912-47E8-44B8-0DC8-39A0F69E93BC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 2.2204460492503131e-16 15 2.2204460492503131e-16
		 25 2.2204460492503131e-16 40 2.2204460492503131e-16;
createNode animCurveTA -n "Cone_14_rotateX";
	rename -uid "11B50A80-4528-EDC9-61A0-3FB1BE5BD953";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_14_rotateY";
	rename -uid "C70087AA-4DFA-0CCE-B15C-7D939F59086B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_14_rotateZ";
	rename -uid "EE1C190C-4786-49C8-A29F-A7A048BBC742";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_14_scaleX";
	rename -uid "F8D3938D-43E7-0AB1-4EF8-D6B60D4CEC38";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_14_scaleY";
	rename -uid "7CDD4736-4608-3C39-6773-899BBD6B5CA4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_14_scaleZ";
	rename -uid "1DDD7D6F-4DE2-EA72-71D8-81AE384954A5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_13_visibility";
	rename -uid "96A2B6B7-4D95-857A-7715-9E9DDD35FEE3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_13_translateX";
	rename -uid "D0B06C34-498B-DC12-47F7-DE8276DFE39A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -1.5543122344752192e-15 15 -1.5543122344752192e-15
		 25 -1.5543122344752192e-15 40 -1.5543122344752192e-15;
createNode animCurveTL -n "Cone_13_translateY";
	rename -uid "21B27679-4CF3-89A7-31DE-7A932577FFF5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1.9999996832207074 15 1.9999996832207074
		 25 1.9999996832207074 40 1.9999996832207074;
createNode animCurveTL -n "Cone_13_translateZ";
	rename -uid "5DBEC6C3-45D7-06E7-DBFD-3287589C7043";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 3.3306690738754706e-16 15 3.3306690738754706e-16
		 25 3.3306690738754706e-16 40 3.3306690738754706e-16;
createNode animCurveTA -n "Cone_13_rotateX";
	rename -uid "496CBFA4-4607-1BF5-23D0-41B62E02EE4D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_13_rotateY";
	rename -uid "90B4FDCD-4C2B-D5D7-43FB-1CA386A69D17";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_13_rotateZ";
	rename -uid "6664436D-4F33-2F7E-10DA-C2BA046252BE";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_13_scaleX";
	rename -uid "55020E48-4C96-0F3F-EEF1-478F06B9C281";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_13_scaleY";
	rename -uid "9F9384F2-4B36-1D33-1D72-24804DA66067";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_13_scaleZ";
	rename -uid "E54B4D4B-4DEB-3E28-C4FD-588C192B9165";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_11_visibility";
	rename -uid "FA3DC6BE-475E-AF99-3A9D-1CA546C0DE86";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Cone_11_translateX";
	rename -uid "54988931-46AA-E629-AC58-7ABA35376163";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1.5543122344752192e-15 15 1.5543122344752192e-15
		 25 1.5543122344752192e-15 40 1.5543122344752192e-15;
createNode animCurveTL -n "Cone_11_translateY";
	rename -uid "BBA4211F-4824-5038-DD4A-D282A4CBC2F3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1.9999996832207216 15 1.9999996832207216
		 25 1.9999996832207216 40 1.9999996832207216;
createNode animCurveTL -n "Cone_11_translateZ";
	rename -uid "3156526C-495D-A42E-E2A0-318D010EE547";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1.1131875078558223e-31 15 1.1131875078558223e-31
		 25 1.1131875078558223e-31 40 1.1131875078558223e-31;
createNode animCurveTA -n "Cone_11_rotateX";
	rename -uid "5BCB9094-4396-0545-35E1-3C9E9789D3E0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_11_rotateY";
	rename -uid "F4D8C368-4F55-B39E-D502-3D8FFA7DC0C0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "Cone_11_rotateZ";
	rename -uid "8AA1640E-4087-1F2C-DFB7-E1998AD4BF70";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "Cone_11_scaleX";
	rename -uid "2F48C1FB-4FE2-4C8E-A1D4-5FB5438550FA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_11_scaleY";
	rename -uid "2F676D16-4B40-8FCA-9875-F9AF5AB442BA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "Cone_11_scaleZ";
	rename -uid "E6B50CD3-4360-6A07-73AF-E3B728ABFC3D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone4_visibility";
	rename -uid "859EE986-4642-10CE-17F6-B495315F9002";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pCone4_translateX";
	rename -uid "C8380B44-4915-D7C0-69B1-B19455AD19FF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTL -n "pCone4_translateY";
	rename -uid "B3120F93-498D-41CF-94A4-C99E40E34661";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 5.1490287664381125 15 5.1490287664381125
		 25 5.1490287664381125 40 5.1490287664381125;
createNode animCurveTL -n "pCone4_translateZ";
	rename -uid "5ABECFA3-4E76-8704-3DBE-E289EBB40205";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone4_rotateX";
	rename -uid "8185C742-4BB3-44B3-A680-CD9BB70F38FB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone4_rotateY";
	rename -uid "A2BDF345-4D46-1228-5E2D-BA98B802A789";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTA -n "pCone4_rotateZ";
	rename -uid "41DCD459-4CC1-4B7C-F315-98AFBFCAEEB9";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 25 0 40 0;
createNode animCurveTU -n "pCone4_scaleX";
	rename -uid "9323ED7E-4416-0E0D-8B41-4491C74DF5F7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone4_scaleY";
	rename -uid "0BAB2736-4F2E-7159-6AE8-3BB0CF05D7DF";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animCurveTU -n "pCone4_scaleZ";
	rename -uid "DB22226B-481F-D959-415A-9981650A4CD3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 1 25 1 40 1;
createNode animLayer -n "BaseAnimation";
	rename -uid "E3A9F804-4EA2-D911-6E29-DB931650CBBD";
	setAttr ".ovrd" yes;
createNode shadingEngine -n "nParticlePointsSE";
	rename -uid "8A98D0A0-427F-30A8-3C47-018D5E3E5043";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "421EE2E2-4F85-2DD8-7306-D693C5D118A1";
createNode particleSamplerInfo -n "particleSamplerInfo1";
	rename -uid "94915E22-479E-B5D2-69E0-58B97AF1F5F5";
createNode blinn -n "npPointsBlinn";
	rename -uid "F10F6407-4F58-BFEA-E237-A088C832E455";
createNode particleCloud -n "npPointsVolume";
	rename -uid "47FF2298-47BE-35F5-1682-C5A375BE4763";
createNode animCurveTU -n "BODY_blendParent1";
	rename -uid "571F12F3-4B16-23B8-A650-DFAF2834D744";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "BODY_blendParent2";
	rename -uid "9A03435B-4678-8264-BD53-9C868D3F89E8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "BODY_blendParent3";
	rename -uid "D7C52866-478D-9630-654E-E8A389EBBFA6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTL -n "BODY_translateX_BaseAnimation_extract_inputA";
	rename -uid "0DDFA2CA-4960-CF81-6BEB-19A3DC4CDB22";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 0;
createNode animCurveTL -n "BODY_translateY_BaseAnimation_extract_inputA";
	rename -uid "94875A42-41CC-89C8-C3D5-3CBFE2CDC570";
	setAttr ".tan" 18;
	setAttr -s 29 ".ktv[0:28]"  0 0 0.5 0.0060874302133613334 1 0.024956655414231175
		 1.5 0.057594419258024498 2 0.10510041527617822 2.5 0.16870276468124437 3 0.24977532327095894
		 4 0.47066980721264318 4.5 0.61414238141616861 5 0.78242301013961812 5.5 0.9778909081877325
		 6.5 1.4609904589813991 7 1.7543055254060627 7.5 2.0859107953672762 9 3.3294750223479594
		 11 5.4634995136992686 11.5 6.0122827390824645 12 6.5353309936682331 14 8.1768779003802337
		 20 10.619203499122586 25.5 11.827330692882025 28.5 11.957386032230621 33 12.910320285004122
		 36.5 15.261904399164351 42 20.394219730889091 51.5 23.552777663043216 59.5 24.919922312945165
		 69.5 28.903481759780743 150 47.729717507265562;
	setAttr -s 29 ".kit[27:28]"  1 18;
	setAttr -s 29 ".kot[27:28]"  1 18;
	setAttr -s 29 ".kix[27:28]"  0.35429584182538404 2.6833333333333331;
	setAttr -s 29 ".kiy[27:28]"  6.1011297624353737 0;
	setAttr -s 29 ".kox[27:28]"  1.277853781264275 2.6833333333333331;
	setAttr -s 29 ".koy[27:28]"  22.005193368482452 0;
createNode animCurveTL -n "BODY_translateZ_BaseAnimation_extract_inputA";
	rename -uid "77FBEAE0-43A3-1D7B-9F5A-2688C0C24DBC";
	setAttr ".tan" 18;
	setAttr -s 24 ".ktv[0:23]"  0 0 0.5 0.018586619672016455 1 0.072902857742666485
		 1.5 0.1607832827938511 2 0.28006246340747126 2.5 0.42857496816542789 3 0.60415536564962236
		 4 1.0278581131243274 4.5 1.2716496002786404 5.5 1.8122856443306916 7 2.7233909134958481
		 9 4.0341987319184449 10 4.691768072547843 12 5.9246203599188769 16.5 7.7501829860844049
		 23.5 8.8226432119377893 28 8.9509912193304082 30 9.3609795678238203 34 11.34162750491171
		 42 16.065155238258338 50.5 17.721682844306113 56.5 18.521628807243882 69 22.775424205991552
		 150 35.729618398633569;
	setAttr -s 24 ".kit[22:23]"  1 18;
	setAttr -s 24 ".kot[22:23]"  1 18;
	setAttr -s 24 ".kix[22:23]"  0.51431683821115537 2.7;
	setAttr -s 24 ".kiy[22:23]"  6.294708440873845 0;
	setAttr -s 24 ".kox[22:23]"  1.3270343441671382 2.7;
	setAttr -s 24 ".koy[22:23]"  16.24154137011887 0;
createNode animCurveTA -n "BODY_rotate_BaseAnimation_extract_inputAX";
	rename -uid "4C0DABBB-4C01-D402-48DC-93BFFBEFB7EB";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0.5 41.574472508282433 12 47.852258580605373
		 28.5 40.573214519679524 39.5 46.898858613716747 55 41.383278330948855 71.5 46.279351438198994
		 150 134.35322490877971;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1.9833333333333316;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  2.6166666666666667;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "BODY_rotate_BaseAnimation_extract_inputAY";
	rename -uid "7D81F747-41E2-E892-E60E-6CB4D30BEE19";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 -29.628281267133705;
createNode animCurveTA -n "BODY_rotate_BaseAnimation_extract_inputAZ";
	rename -uid "F696000B-4BE8-4076-2BAA-8FAA5A4F5622";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 150 -153.17609328196582;
createNode animLayer -n "BaseAnimation_extract1";
	rename -uid "6AE02C03-46B7-377B-0F04-A5927C7EA8FB";
	setAttr -s 6 ".dsm";
	setAttr -s 4 ".bnds";
	setAttr ".ovrd" yes;
createNode animBlendNodeAdditiveDL -n "BODY_translateX_BaseAnimation_extract1";
	rename -uid "1BFAC23B-454E-2863-7469-AFA8C6AFB3E7";
createNode animBlendNodeAdditiveDL -n "BODY_translateY_BaseAnimation_extract1";
	rename -uid "85FD0312-4B3B-DA63-698F-7DB650C71FC7";
	setAttr ".ia" 10.923555137605156;
	setAttr ".o" 22.09145253866583;
createNode animBlendNodeAdditiveDL -n "BODY_translateZ_BaseAnimation_extract1";
	rename -uid "CCA8E47F-4A49-7452-18F0-BD902EFEA5A8";
	setAttr ".ia" 8.5986509860496287;
	setAttr ".o" 17.085094034182884;
createNode animBlendNodeAdditiveRotation -n "BODY_rotate_BaseAnimation_extract1";
	rename -uid "F4D128F9-45CA-79FA-2349-8E9A4BFA4837";
	setAttr ".ia" -type "double3" 38.857896718448295 0 0 ;
	setAttr ".o" -type "double3" 44.802490061409642 -6.6501489338457072 -34.380793953096607 ;
select -ne :time1;
	setAttr ".o" 46;
	setAttr ".unw" 46;
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
	setAttr -s 103 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "BODY_translateX_BaseAnimation_extract1.o" "|BODY.tx";
connectAttr "BODY_translateY_BaseAnimation_extract1.o" "|BODY.ty";
connectAttr "BODY_translateZ_BaseAnimation_extract1.o" "|BODY.tz";
connectAttr "BODY_rotate_BaseAnimation_extract1.ox" "|BODY.rx";
connectAttr "BODY_rotate_BaseAnimation_extract1.oy" "|BODY.ry";
connectAttr "BODY_rotate_BaseAnimation_extract1.oz" "|BODY.rz";
connectAttr "Cone_1_1_visibility.o" "|BODY|Cone_1_1.v";
connectAttr "Cone_1_1_translateX.o" "|BODY|Cone_1_1.tx";
connectAttr "Cone_1_1_translateY.o" "|BODY|Cone_1_1.ty";
connectAttr "Cone_1_1_translateZ.o" "|BODY|Cone_1_1.tz";
connectAttr "Cone_1_1_rotateX.o" "|BODY|Cone_1_1.rx";
connectAttr "Cone_1_1_rotateY.o" "|BODY|Cone_1_1.ry";
connectAttr "Cone_1_1_rotateZ.o" "|BODY|Cone_1_1.rz";
connectAttr "Cone_1_1_scaleX.o" "|BODY|Cone_1_1.sx";
connectAttr "Cone_1_1_scaleY.o" "|BODY|Cone_1_1.sy";
connectAttr "Cone_1_1_scaleZ.o" "|BODY|Cone_1_1.sz";
connectAttr "Cone_2_visibility.o" "|BODY|Cone_1_1|Cone_2.v";
connectAttr "Cone_2_translateX.o" "|BODY|Cone_1_1|Cone_2.tx";
connectAttr "Cone_2_translateY.o" "|BODY|Cone_1_1|Cone_2.ty";
connectAttr "Cone_2_translateZ.o" "|BODY|Cone_1_1|Cone_2.tz";
connectAttr "Cone_2_rotateX.o" "|BODY|Cone_1_1|Cone_2.rx";
connectAttr "Cone_2_rotateY.o" "|BODY|Cone_1_1|Cone_2.ry";
connectAttr "Cone_2_rotateZ.o" "|BODY|Cone_1_1|Cone_2.rz";
connectAttr "Cone_2_scaleX.o" "|BODY|Cone_1_1|Cone_2.sx";
connectAttr "Cone_2_scaleY.o" "|BODY|Cone_1_1|Cone_2.sy";
connectAttr "Cone_2_scaleZ.o" "|BODY|Cone_1_1|Cone_2.sz";
connectAttr "Cone_3_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3.v";
connectAttr "Cone_3_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3.tx";
connectAttr "Cone_3_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3.ty";
connectAttr "Cone_3_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3.tz";
connectAttr "Cone_3_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3.rx";
connectAttr "Cone_3_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3.ry";
connectAttr "Cone_3_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3.rz";
connectAttr "Cone_3_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3.sx";
connectAttr "Cone_3_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3.sy";
connectAttr "Cone_3_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3.sz";
connectAttr "Cone_4_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.v";
connectAttr "Cone_4_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.tx";
connectAttr "Cone_4_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.ty";
connectAttr "Cone_4_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.tz";
connectAttr "Cone_4_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.rx";
connectAttr "Cone_4_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.ry";
connectAttr "Cone_4_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.rz";
connectAttr "Cone_4_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.sx";
connectAttr "Cone_4_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.sy";
connectAttr "Cone_4_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4.sz";
connectAttr "Cone_5_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.v"
		;
connectAttr "Cone_5_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.tx"
		;
connectAttr "Cone_5_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.ty"
		;
connectAttr "Cone_5_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.tz"
		;
connectAttr "Cone_5_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.rx";
connectAttr "Cone_5_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.ry";
connectAttr "Cone_5_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.rz";
connectAttr "Cone_5_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.sx";
connectAttr "Cone_5_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.sy";
connectAttr "Cone_5_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5.sz";
connectAttr "Cone_6_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.v"
		;
connectAttr "Cone_6_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tx"
		;
connectAttr "Cone_6_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ty"
		;
connectAttr "Cone_6_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tz"
		;
connectAttr "Cone_6_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rx"
		;
connectAttr "Cone_6_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ry"
		;
connectAttr "Cone_6_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rz"
		;
connectAttr "Cone_6_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sx"
		;
connectAttr "Cone_6_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sy"
		;
connectAttr "Cone_6_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sz"
		;
connectAttr "Cone_7_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.v"
		;
connectAttr "Cone_7_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tx"
		;
connectAttr "Cone_7_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ty"
		;
connectAttr "Cone_7_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tz"
		;
connectAttr "Cone_7_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rx"
		;
connectAttr "Cone_7_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ry"
		;
connectAttr "Cone_7_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rz"
		;
connectAttr "Cone_7_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sx"
		;
connectAttr "Cone_7_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sy"
		;
connectAttr "Cone_7_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sz"
		;
connectAttr "Cone_8_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.v"
		;
connectAttr "Cone_8_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tx"
		;
connectAttr "Cone_8_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ty"
		;
connectAttr "Cone_8_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tz"
		;
connectAttr "Cone_8_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rx"
		;
connectAttr "Cone_8_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ry"
		;
connectAttr "Cone_8_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rz"
		;
connectAttr "Cone_8_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sx"
		;
connectAttr "Cone_8_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sy"
		;
connectAttr "Cone_8_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sz"
		;
connectAttr "Cone_9_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.v"
		;
connectAttr "Cone_9_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tx"
		;
connectAttr "Cone_9_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ty"
		;
connectAttr "Cone_9_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tz"
		;
connectAttr "Cone_9_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rx"
		;
connectAttr "Cone_9_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ry"
		;
connectAttr "Cone_9_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rz"
		;
connectAttr "Cone_9_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sx"
		;
connectAttr "Cone_9_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sy"
		;
connectAttr "Cone_9_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sz"
		;
connectAttr "Cone_10_visibility.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.v"
		;
connectAttr "Cone_10_translateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tx"
		;
connectAttr "Cone_10_translateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ty"
		;
connectAttr "Cone_10_translateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tz"
		;
connectAttr "Cone_10_rotateX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rx"
		;
connectAttr "Cone_10_rotateY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ry"
		;
connectAttr "Cone_10_rotateZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rz"
		;
connectAttr "Cone_10_scaleX.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sx"
		;
connectAttr "Cone_10_scaleY.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sy"
		;
connectAttr "Cone_10_scaleZ.o" "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sz"
		;
connectAttr "Cone_12_visibility.o" "Cone_12.v";
connectAttr "Cone_12_translateX.o" "Cone_12.tx";
connectAttr "Cone_12_translateY.o" "Cone_12.ty";
connectAttr "Cone_12_translateZ.o" "Cone_12.tz";
connectAttr "Cone_12_rotateX.o" "Cone_12.rx";
connectAttr "Cone_12_rotateY.o" "Cone_12.ry";
connectAttr "Cone_12_rotateZ.o" "Cone_12.rz";
connectAttr "Cone_12_scaleX.o" "Cone_12.sx";
connectAttr "Cone_12_scaleY.o" "Cone_12.sy";
connectAttr "Cone_12_scaleZ.o" "Cone_12.sz";
connectAttr "Cone_1_2_visibility.o" "|BODY|Cone_1_2.v";
connectAttr "Cone_1_2_translateX.o" "|BODY|Cone_1_2.tx";
connectAttr "Cone_1_2_translateY.o" "|BODY|Cone_1_2.ty";
connectAttr "Cone_1_2_translateZ.o" "|BODY|Cone_1_2.tz";
connectAttr "Cone_1_2_rotateX.o" "|BODY|Cone_1_2.rx";
connectAttr "Cone_1_2_rotateY.o" "|BODY|Cone_1_2.ry";
connectAttr "Cone_1_2_rotateZ.o" "|BODY|Cone_1_2.rz";
connectAttr "Cone_1_2_scaleX.o" "|BODY|Cone_1_2.sx";
connectAttr "Cone_1_2_scaleY.o" "|BODY|Cone_1_2.sy";
connectAttr "Cone_1_2_scaleZ.o" "|BODY|Cone_1_2.sz";
connectAttr "Cone_2_visibility1.o" "|BODY|Cone_1_2|Cone_2.v";
connectAttr "Cone_2_translateX1.o" "|BODY|Cone_1_2|Cone_2.tx";
connectAttr "Cone_2_translateY1.o" "|BODY|Cone_1_2|Cone_2.ty";
connectAttr "Cone_2_translateZ1.o" "|BODY|Cone_1_2|Cone_2.tz";
connectAttr "Cone_2_rotateX1.o" "|BODY|Cone_1_2|Cone_2.rx";
connectAttr "Cone_2_rotateY1.o" "|BODY|Cone_1_2|Cone_2.ry";
connectAttr "Cone_2_rotateZ1.o" "|BODY|Cone_1_2|Cone_2.rz";
connectAttr "Cone_2_scaleX1.o" "|BODY|Cone_1_2|Cone_2.sx";
connectAttr "Cone_2_scaleY1.o" "|BODY|Cone_1_2|Cone_2.sy";
connectAttr "Cone_2_scaleZ1.o" "|BODY|Cone_1_2|Cone_2.sz";
connectAttr "Cone_3_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.v";
connectAttr "Cone_3_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.tx";
connectAttr "Cone_3_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.ty";
connectAttr "Cone_3_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.tz";
connectAttr "Cone_3_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.rx";
connectAttr "Cone_3_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.ry";
connectAttr "Cone_3_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.rz";
connectAttr "Cone_3_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.sx";
connectAttr "Cone_3_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.sy";
connectAttr "Cone_3_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3.sz";
connectAttr "Cone_4_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.v";
connectAttr "Cone_4_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.tx";
connectAttr "Cone_4_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.ty";
connectAttr "Cone_4_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.tz";
connectAttr "Cone_4_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.rx";
connectAttr "Cone_4_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.ry";
connectAttr "Cone_4_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.rz";
connectAttr "Cone_4_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.sx";
connectAttr "Cone_4_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.sy";
connectAttr "Cone_4_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4.sz";
connectAttr "Cone_5_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.v"
		;
connectAttr "Cone_5_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.tx"
		;
connectAttr "Cone_5_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.ty"
		;
connectAttr "Cone_5_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.tz"
		;
connectAttr "Cone_5_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.rx";
connectAttr "Cone_5_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.ry";
connectAttr "Cone_5_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.rz";
connectAttr "Cone_5_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.sx";
connectAttr "Cone_5_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.sy";
connectAttr "Cone_5_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5.sz";
connectAttr "Cone_6_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.v"
		;
connectAttr "Cone_6_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tx"
		;
connectAttr "Cone_6_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ty"
		;
connectAttr "Cone_6_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tz"
		;
connectAttr "Cone_6_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rx"
		;
connectAttr "Cone_6_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ry"
		;
connectAttr "Cone_6_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rz"
		;
connectAttr "Cone_6_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sx"
		;
connectAttr "Cone_6_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sy"
		;
connectAttr "Cone_6_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sz"
		;
connectAttr "Cone_7_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.v"
		;
connectAttr "Cone_7_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tx"
		;
connectAttr "Cone_7_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ty"
		;
connectAttr "Cone_7_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tz"
		;
connectAttr "Cone_7_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rx"
		;
connectAttr "Cone_7_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ry"
		;
connectAttr "Cone_7_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rz"
		;
connectAttr "Cone_7_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sx"
		;
connectAttr "Cone_7_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sy"
		;
connectAttr "Cone_7_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sz"
		;
connectAttr "Cone_8_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.v"
		;
connectAttr "Cone_8_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tx"
		;
connectAttr "Cone_8_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ty"
		;
connectAttr "Cone_8_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tz"
		;
connectAttr "Cone_8_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rx"
		;
connectAttr "Cone_8_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ry"
		;
connectAttr "Cone_8_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rz"
		;
connectAttr "Cone_8_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sx"
		;
connectAttr "Cone_8_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sy"
		;
connectAttr "Cone_8_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sz"
		;
connectAttr "Cone_9_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.v"
		;
connectAttr "Cone_9_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tx"
		;
connectAttr "Cone_9_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ty"
		;
connectAttr "Cone_9_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tz"
		;
connectAttr "Cone_9_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rx"
		;
connectAttr "Cone_9_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ry"
		;
connectAttr "Cone_9_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rz"
		;
connectAttr "Cone_9_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sx"
		;
connectAttr "Cone_9_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sy"
		;
connectAttr "Cone_9_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sz"
		;
connectAttr "Cone_10_visibility1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.v"
		;
connectAttr "Cone_10_translateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tx"
		;
connectAttr "Cone_10_translateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ty"
		;
connectAttr "Cone_10_translateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tz"
		;
connectAttr "Cone_10_rotateX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rx"
		;
connectAttr "Cone_10_rotateY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ry"
		;
connectAttr "Cone_10_rotateZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rz"
		;
connectAttr "Cone_10_scaleX1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sx"
		;
connectAttr "Cone_10_scaleY1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sy"
		;
connectAttr "Cone_10_scaleZ1.o" "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sz"
		;
connectAttr "Cone_14_visibility.o" "Cone_14.v";
connectAttr "Cone_14_translateX.o" "Cone_14.tx";
connectAttr "Cone_14_translateY.o" "Cone_14.ty";
connectAttr "Cone_14_translateZ.o" "Cone_14.tz";
connectAttr "Cone_14_rotateX.o" "Cone_14.rx";
connectAttr "Cone_14_rotateY.o" "Cone_14.ry";
connectAttr "Cone_14_rotateZ.o" "Cone_14.rz";
connectAttr "Cone_14_scaleX.o" "Cone_14.sx";
connectAttr "Cone_14_scaleY.o" "Cone_14.sy";
connectAttr "Cone_14_scaleZ.o" "Cone_14.sz";
connectAttr "Cone_1_3_visibility.o" "|BODY|Cone_1_3.v";
connectAttr "Cone_1_3_translateX.o" "|BODY|Cone_1_3.tx";
connectAttr "Cone_1_3_translateY.o" "|BODY|Cone_1_3.ty";
connectAttr "Cone_1_3_translateZ.o" "|BODY|Cone_1_3.tz";
connectAttr "Cone_1_3_rotateX.o" "|BODY|Cone_1_3.rx";
connectAttr "Cone_1_3_rotateY.o" "|BODY|Cone_1_3.ry";
connectAttr "Cone_1_3_rotateZ.o" "|BODY|Cone_1_3.rz";
connectAttr "Cone_1_3_scaleX.o" "|BODY|Cone_1_3.sx";
connectAttr "Cone_1_3_scaleY.o" "|BODY|Cone_1_3.sy";
connectAttr "Cone_1_3_scaleZ.o" "|BODY|Cone_1_3.sz";
connectAttr "Cone_2_visibility2.o" "|BODY|Cone_1_3|Cone_2.v";
connectAttr "Cone_2_translateX2.o" "|BODY|Cone_1_3|Cone_2.tx";
connectAttr "Cone_2_translateY2.o" "|BODY|Cone_1_3|Cone_2.ty";
connectAttr "Cone_2_translateZ2.o" "|BODY|Cone_1_3|Cone_2.tz";
connectAttr "Cone_2_rotateX2.o" "|BODY|Cone_1_3|Cone_2.rx";
connectAttr "Cone_2_rotateY2.o" "|BODY|Cone_1_3|Cone_2.ry";
connectAttr "Cone_2_rotateZ2.o" "|BODY|Cone_1_3|Cone_2.rz";
connectAttr "Cone_2_scaleX2.o" "|BODY|Cone_1_3|Cone_2.sx";
connectAttr "Cone_2_scaleY2.o" "|BODY|Cone_1_3|Cone_2.sy";
connectAttr "Cone_2_scaleZ2.o" "|BODY|Cone_1_3|Cone_2.sz";
connectAttr "Cone_3_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.v";
connectAttr "Cone_3_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.tx";
connectAttr "Cone_3_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.ty";
connectAttr "Cone_3_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.tz";
connectAttr "Cone_3_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.rx";
connectAttr "Cone_3_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.ry";
connectAttr "Cone_3_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.rz";
connectAttr "Cone_3_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.sx";
connectAttr "Cone_3_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.sy";
connectAttr "Cone_3_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3.sz";
connectAttr "Cone_4_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.v";
connectAttr "Cone_4_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.tx";
connectAttr "Cone_4_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.ty";
connectAttr "Cone_4_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.tz";
connectAttr "Cone_4_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.rx";
connectAttr "Cone_4_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.ry";
connectAttr "Cone_4_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.rz";
connectAttr "Cone_4_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.sx";
connectAttr "Cone_4_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.sy";
connectAttr "Cone_4_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4.sz";
connectAttr "Cone_5_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.v"
		;
connectAttr "Cone_5_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.tx"
		;
connectAttr "Cone_5_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.ty"
		;
connectAttr "Cone_5_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.tz"
		;
connectAttr "Cone_5_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.rx";
connectAttr "Cone_5_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.ry";
connectAttr "Cone_5_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.rz";
connectAttr "Cone_5_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.sx";
connectAttr "Cone_5_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.sy";
connectAttr "Cone_5_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5.sz";
connectAttr "Cone_6_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.v"
		;
connectAttr "Cone_6_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tx"
		;
connectAttr "Cone_6_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ty"
		;
connectAttr "Cone_6_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tz"
		;
connectAttr "Cone_6_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rx"
		;
connectAttr "Cone_6_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ry"
		;
connectAttr "Cone_6_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rz"
		;
connectAttr "Cone_6_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sx"
		;
connectAttr "Cone_6_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sy"
		;
connectAttr "Cone_6_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sz"
		;
connectAttr "Cone_7_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.v"
		;
connectAttr "Cone_7_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tx"
		;
connectAttr "Cone_7_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ty"
		;
connectAttr "Cone_7_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tz"
		;
connectAttr "Cone_7_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rx"
		;
connectAttr "Cone_7_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ry"
		;
connectAttr "Cone_7_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rz"
		;
connectAttr "Cone_7_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sx"
		;
connectAttr "Cone_7_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sy"
		;
connectAttr "Cone_7_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sz"
		;
connectAttr "Cone_8_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.v"
		;
connectAttr "Cone_8_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tx"
		;
connectAttr "Cone_8_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ty"
		;
connectAttr "Cone_8_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tz"
		;
connectAttr "Cone_8_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rx"
		;
connectAttr "Cone_8_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ry"
		;
connectAttr "Cone_8_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rz"
		;
connectAttr "Cone_8_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sx"
		;
connectAttr "Cone_8_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sy"
		;
connectAttr "Cone_8_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sz"
		;
connectAttr "Cone_9_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.v"
		;
connectAttr "Cone_9_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tx"
		;
connectAttr "Cone_9_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ty"
		;
connectAttr "Cone_9_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tz"
		;
connectAttr "Cone_9_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rx"
		;
connectAttr "Cone_9_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ry"
		;
connectAttr "Cone_9_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rz"
		;
connectAttr "Cone_9_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sx"
		;
connectAttr "Cone_9_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sy"
		;
connectAttr "Cone_9_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sz"
		;
connectAttr "Cone_10_visibility2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.v"
		;
connectAttr "Cone_10_translateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tx"
		;
connectAttr "Cone_10_translateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ty"
		;
connectAttr "Cone_10_translateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tz"
		;
connectAttr "Cone_10_rotateX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rx"
		;
connectAttr "Cone_10_rotateY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ry"
		;
connectAttr "Cone_10_rotateZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rz"
		;
connectAttr "Cone_10_scaleX2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sx"
		;
connectAttr "Cone_10_scaleY2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sy"
		;
connectAttr "Cone_10_scaleZ2.o" "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sz"
		;
connectAttr "Cone_13_visibility.o" "Cone_13.v";
connectAttr "Cone_13_translateX.o" "Cone_13.tx";
connectAttr "Cone_13_translateY.o" "Cone_13.ty";
connectAttr "Cone_13_translateZ.o" "Cone_13.tz";
connectAttr "Cone_13_rotateX.o" "Cone_13.rx";
connectAttr "Cone_13_rotateY.o" "Cone_13.ry";
connectAttr "Cone_13_rotateZ.o" "Cone_13.rz";
connectAttr "Cone_13_scaleX.o" "Cone_13.sx";
connectAttr "Cone_13_scaleY.o" "Cone_13.sy";
connectAttr "Cone_13_scaleZ.o" "Cone_13.sz";
connectAttr "Cone_1_4_visibility.o" "|BODY|Cone_1_4.v";
connectAttr "Cone_1_4_translateX.o" "|BODY|Cone_1_4.tx";
connectAttr "Cone_1_4_translateY.o" "|BODY|Cone_1_4.ty";
connectAttr "Cone_1_4_translateZ.o" "|BODY|Cone_1_4.tz";
connectAttr "Cone_1_4_rotateX.o" "|BODY|Cone_1_4.rx";
connectAttr "Cone_1_4_rotateY.o" "|BODY|Cone_1_4.ry";
connectAttr "Cone_1_4_rotateZ.o" "|BODY|Cone_1_4.rz";
connectAttr "Cone_1_4_scaleX.o" "|BODY|Cone_1_4.sx";
connectAttr "Cone_1_4_scaleY.o" "|BODY|Cone_1_4.sy";
connectAttr "Cone_1_4_scaleZ.o" "|BODY|Cone_1_4.sz";
connectAttr "Cone_2_visibility3.o" "|BODY|Cone_1_4|Cone_2.v";
connectAttr "Cone_2_translateX3.o" "|BODY|Cone_1_4|Cone_2.tx";
connectAttr "Cone_2_translateY3.o" "|BODY|Cone_1_4|Cone_2.ty";
connectAttr "Cone_2_translateZ3.o" "|BODY|Cone_1_4|Cone_2.tz";
connectAttr "Cone_2_rotateX3.o" "|BODY|Cone_1_4|Cone_2.rx";
connectAttr "Cone_2_rotateY3.o" "|BODY|Cone_1_4|Cone_2.ry";
connectAttr "Cone_2_rotateZ3.o" "|BODY|Cone_1_4|Cone_2.rz";
connectAttr "Cone_2_scaleX3.o" "|BODY|Cone_1_4|Cone_2.sx";
connectAttr "Cone_2_scaleY3.o" "|BODY|Cone_1_4|Cone_2.sy";
connectAttr "Cone_2_scaleZ3.o" "|BODY|Cone_1_4|Cone_2.sz";
connectAttr "Cone_3_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.v";
connectAttr "Cone_3_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.tx";
connectAttr "Cone_3_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.ty";
connectAttr "Cone_3_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.tz";
connectAttr "Cone_3_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.rx";
connectAttr "Cone_3_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.ry";
connectAttr "Cone_3_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.rz";
connectAttr "Cone_3_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.sx";
connectAttr "Cone_3_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.sy";
connectAttr "Cone_3_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3.sz";
connectAttr "Cone_4_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.v";
connectAttr "Cone_4_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.tx";
connectAttr "Cone_4_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.ty";
connectAttr "Cone_4_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.tz";
connectAttr "Cone_4_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.rx";
connectAttr "Cone_4_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.ry";
connectAttr "Cone_4_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.rz";
connectAttr "Cone_4_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.sx";
connectAttr "Cone_4_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.sy";
connectAttr "Cone_4_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4.sz";
connectAttr "Cone_5_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.v"
		;
connectAttr "Cone_5_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.tx"
		;
connectAttr "Cone_5_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.ty"
		;
connectAttr "Cone_5_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.tz"
		;
connectAttr "Cone_5_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.rx";
connectAttr "Cone_5_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.ry";
connectAttr "Cone_5_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.rz";
connectAttr "Cone_5_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.sx";
connectAttr "Cone_5_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.sy";
connectAttr "Cone_5_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5.sz";
connectAttr "Cone_6_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.v"
		;
connectAttr "Cone_6_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tx"
		;
connectAttr "Cone_6_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ty"
		;
connectAttr "Cone_6_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.tz"
		;
connectAttr "Cone_6_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rx"
		;
connectAttr "Cone_6_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.ry"
		;
connectAttr "Cone_6_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.rz"
		;
connectAttr "Cone_6_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sx"
		;
connectAttr "Cone_6_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sy"
		;
connectAttr "Cone_6_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6.sz"
		;
connectAttr "Cone_7_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.v"
		;
connectAttr "Cone_7_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tx"
		;
connectAttr "Cone_7_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ty"
		;
connectAttr "Cone_7_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.tz"
		;
connectAttr "Cone_7_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rx"
		;
connectAttr "Cone_7_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.ry"
		;
connectAttr "Cone_7_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.rz"
		;
connectAttr "Cone_7_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sx"
		;
connectAttr "Cone_7_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sy"
		;
connectAttr "Cone_7_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7.sz"
		;
connectAttr "Cone_8_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.v"
		;
connectAttr "Cone_8_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tx"
		;
connectAttr "Cone_8_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ty"
		;
connectAttr "Cone_8_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.tz"
		;
connectAttr "Cone_8_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rx"
		;
connectAttr "Cone_8_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.ry"
		;
connectAttr "Cone_8_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.rz"
		;
connectAttr "Cone_8_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sx"
		;
connectAttr "Cone_8_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sy"
		;
connectAttr "Cone_8_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8.sz"
		;
connectAttr "Cone_9_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.v"
		;
connectAttr "Cone_9_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tx"
		;
connectAttr "Cone_9_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ty"
		;
connectAttr "Cone_9_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.tz"
		;
connectAttr "Cone_9_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rx"
		;
connectAttr "Cone_9_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.ry"
		;
connectAttr "Cone_9_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.rz"
		;
connectAttr "Cone_9_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sx"
		;
connectAttr "Cone_9_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sy"
		;
connectAttr "Cone_9_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9.sz"
		;
connectAttr "Cone_10_visibility3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.v"
		;
connectAttr "Cone_10_translateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tx"
		;
connectAttr "Cone_10_translateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ty"
		;
connectAttr "Cone_10_translateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.tz"
		;
connectAttr "Cone_10_rotateX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rx"
		;
connectAttr "Cone_10_rotateY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.ry"
		;
connectAttr "Cone_10_rotateZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.rz"
		;
connectAttr "Cone_10_scaleX3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sx"
		;
connectAttr "Cone_10_scaleY3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sy"
		;
connectAttr "Cone_10_scaleZ3.o" "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10.sz"
		;
connectAttr "Cone_11_visibility.o" "Cone_11.v";
connectAttr "Cone_11_translateX.o" "Cone_11.tx";
connectAttr "Cone_11_translateY.o" "Cone_11.ty";
connectAttr "Cone_11_translateZ.o" "Cone_11.tz";
connectAttr "Cone_11_rotateX.o" "Cone_11.rx";
connectAttr "Cone_11_rotateY.o" "Cone_11.ry";
connectAttr "Cone_11_rotateZ.o" "Cone_11.rz";
connectAttr "Cone_11_scaleX.o" "Cone_11.sx";
connectAttr "Cone_11_scaleY.o" "Cone_11.sy";
connectAttr "Cone_11_scaleZ.o" "Cone_11.sz";
connectAttr "pCone1_visibility.o" "|BODY|pCone1.v";
connectAttr "pCone1_translateX.o" "|BODY|pCone1.tx";
connectAttr "pCone1_translateY.o" "|BODY|pCone1.ty";
connectAttr "pCone1_translateZ.o" "|BODY|pCone1.tz";
connectAttr "pCone1_rotateX.o" "|BODY|pCone1.rx";
connectAttr "pCone1_rotateY.o" "|BODY|pCone1.ry";
connectAttr "pCone1_rotateZ.o" "|BODY|pCone1.rz";
connectAttr "pCone1_scaleX.o" "|BODY|pCone1.sx";
connectAttr "pCone1_scaleY.o" "|BODY|pCone1.sy";
connectAttr "pCone1_scaleZ.o" "|BODY|pCone1.sz";
connectAttr "pCone2_visibility.o" "|BODY|pCone1|pCone2.v";
connectAttr "pCone2_translateX.o" "|BODY|pCone1|pCone2.tx";
connectAttr "pCone2_translateY.o" "|BODY|pCone1|pCone2.ty";
connectAttr "pCone2_translateZ.o" "|BODY|pCone1|pCone2.tz";
connectAttr "pCone2_rotateX.o" "|BODY|pCone1|pCone2.rx";
connectAttr "pCone2_rotateY.o" "|BODY|pCone1|pCone2.ry";
connectAttr "pCone2_rotateZ.o" "|BODY|pCone1|pCone2.rz";
connectAttr "pCone2_scaleX.o" "|BODY|pCone1|pCone2.sx";
connectAttr "pCone2_scaleY.o" "|BODY|pCone1|pCone2.sy";
connectAttr "pCone2_scaleZ.o" "|BODY|pCone1|pCone2.sz";
connectAttr "pCone3_visibility.o" "|BODY|pCone1|pCone2|pCone3.v";
connectAttr "pCone3_translateX.o" "|BODY|pCone1|pCone2|pCone3.tx";
connectAttr "pCone3_translateY.o" "|BODY|pCone1|pCone2|pCone3.ty";
connectAttr "pCone3_translateZ.o" "|BODY|pCone1|pCone2|pCone3.tz";
connectAttr "pCone3_rotateX.o" "|BODY|pCone1|pCone2|pCone3.rx";
connectAttr "pCone3_rotateY.o" "|BODY|pCone1|pCone2|pCone3.ry";
connectAttr "pCone3_rotateZ.o" "|BODY|pCone1|pCone2|pCone3.rz";
connectAttr "pCone3_scaleX.o" "|BODY|pCone1|pCone2|pCone3.sx";
connectAttr "pCone3_scaleY.o" "|BODY|pCone1|pCone2|pCone3.sy";
connectAttr "pCone3_scaleZ.o" "|BODY|pCone1|pCone2|pCone3.sz";
connectAttr "pCone4_visibility.o" "pCone4.v";
connectAttr "pCone4_translateX.o" "pCone4.tx";
connectAttr "pCone4_translateY.o" "pCone4.ty";
connectAttr "pCone4_translateZ.o" "pCone4.tz";
connectAttr "pCone4_rotateX.o" "pCone4.rx";
connectAttr "pCone4_rotateY.o" "pCone4.ry";
connectAttr "pCone4_rotateZ.o" "pCone4.rz";
connectAttr "pCone4_scaleX.o" "pCone4.sx";
connectAttr "pCone4_scaleY.o" "pCone4.sy";
connectAttr "pCone4_scaleZ.o" "pCone4.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "nParticlePointsSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "nParticlePointsSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "BaseAnimation_extract1.sl" "BaseAnimation.chsl[2]";
connectAttr "BaseAnimation_extract1.play" "BaseAnimation.cdly[0]";
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
connectAttr "BaseAnimation.csol" "BaseAnimation_extract1.sslo";
connectAttr "BaseAnimation.fgwt" "BaseAnimation_extract1.pwth";
connectAttr "BaseAnimation.omte" "BaseAnimation_extract1.pmte";
connectAttr "|BODY.tx" "BaseAnimation_extract1.dsm" -na;
connectAttr "|BODY.ty" "BaseAnimation_extract1.dsm" -na;
connectAttr "|BODY.tz" "BaseAnimation_extract1.dsm" -na;
connectAttr "|BODY.rx" "BaseAnimation_extract1.dsm" -na;
connectAttr "|BODY.ry" "BaseAnimation_extract1.dsm" -na;
connectAttr "|BODY.rz" "BaseAnimation_extract1.dsm" -na;
connectAttr "BODY_translateX_BaseAnimation_extract1.msg" "BaseAnimation_extract1.bnds[0]"
		;
connectAttr "BODY_translateY_BaseAnimation_extract1.msg" "BaseAnimation_extract1.bnds[1]"
		;
connectAttr "BODY_translateZ_BaseAnimation_extract1.msg" "BaseAnimation_extract1.bnds[2]"
		;
connectAttr "BODY_rotate_BaseAnimation_extract1.msg" "BaseAnimation_extract1.bnds[6]"
		;
connectAttr "BaseAnimation_extract1.bgwt" "BODY_translateX_BaseAnimation_extract1.wa"
		;
connectAttr "BaseAnimation_extract1.fgwt" "BODY_translateX_BaseAnimation_extract1.wb"
		;
connectAttr "BODY_translateX_BaseAnimation_extract_inputA.o" "BODY_translateX_BaseAnimation_extract1.ib"
		;
connectAttr "BaseAnimation_extract1.bgwt" "BODY_translateY_BaseAnimation_extract1.wa"
		;
connectAttr "BaseAnimation_extract1.fgwt" "BODY_translateY_BaseAnimation_extract1.wb"
		;
connectAttr "BODY_translateY_BaseAnimation_extract_inputA.o" "BODY_translateY_BaseAnimation_extract1.ib"
		;
connectAttr "BaseAnimation_extract1.bgwt" "BODY_translateZ_BaseAnimation_extract1.wa"
		;
connectAttr "BaseAnimation_extract1.fgwt" "BODY_translateZ_BaseAnimation_extract1.wb"
		;
connectAttr "BODY_translateZ_BaseAnimation_extract_inputA.o" "BODY_translateZ_BaseAnimation_extract1.ib"
		;
connectAttr "|BODY.ro" "BODY_rotate_BaseAnimation_extract1.ro";
connectAttr "BaseAnimation_extract1.oram" "BODY_rotate_BaseAnimation_extract1.acm"
		;
connectAttr "BaseAnimation_extract1.bgwt" "BODY_rotate_BaseAnimation_extract1.wa"
		;
connectAttr "BaseAnimation_extract1.fgwt" "BODY_rotate_BaseAnimation_extract1.wb"
		;
connectAttr "BODY_rotate_BaseAnimation_extract_inputAX.o" "BODY_rotate_BaseAnimation_extract1.ibx"
		;
connectAttr "BODY_rotate_BaseAnimation_extract_inputAY.o" "BODY_rotate_BaseAnimation_extract1.iby"
		;
connectAttr "BODY_rotate_BaseAnimation_extract_inputAZ.o" "BODY_rotate_BaseAnimation_extract1.ibz"
		;
connectAttr "nParticlePointsSE.pa" ":renderPartition.st" -na;
connectAttr "npPointsBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "npPointsVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Cone_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|Cone_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_1_Shape1.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_1_Shape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_1_Shape3.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_1_Shape4.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|BODYShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Ref|BODY|pCone1|pConeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Ref|BODY|pCone1|pCone2|pConeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Ref|BODY|pCone1|pCone2|pCone3|pConeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|BODYShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BODY|Cone_1_1|Cone_1_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_1|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_1_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_2|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_1_Shape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_3|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_1_Shape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_Shape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_Shape6.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_Shape7.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_Shape8.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_Shape9.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|Cone_1_4|Cone_2|Cone_3|Cone_4|Cone_5|Cone_6|Cone_7|Cone_8|Cone_9|Cone_10|Cone_Shape10.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|BODY|pCone1|pConeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|BODY|pCone1|pCone2|pConeShape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|BODY|pCone1|pCone2|pCone3|pConeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Cone_Shape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Cone_Shape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Cone_Shape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Cone_Shape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape4.iog" ":initialShadingGroup.dsm" -na;
// End of Octopus.ma
