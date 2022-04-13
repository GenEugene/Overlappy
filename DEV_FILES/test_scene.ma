//Maya ASCII 2022 scene
//Name: test_scene.ma
//Last modified: Wed, Apr 13, 2022 01:23:01 PM
//Codeset: 1251
requires maya "2022";
requires "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19044)";
fileInfo "UUID" "DE0DB213-46F2-10E8-1590-12B690C42702";
createNode transform -s -n "persp";
	rename -uid "F2EFB51E-4208-1E9B-5F40-068ED671E282";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2551.0578060064008 1075.6359581920187 -416.51183946480853 ;
	setAttr ".r" -type "double3" -4.5383527296155561 88.200000000000585 1.2657106891119354e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "559007C1-4418-043B-E705-8DAF85ED4CA7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2696.2476896197927;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EACA380C-4F74-3D3A-F61E-6BAF4EB427AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "70D3B76C-4E86-654C-55D2-D29F9525EE0A";
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
	rename -uid "AB4937A3-40E5-1283-2145-BE8FF3D66E70";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "93002B35-4FB1-2544-CECE-65BCFCAC1587";
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
	rename -uid "B69631C7-42CC-7FEE-FD9A-7D8ED96B3F1F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B6456447-4740-C537-406D-9A8AB8BBA787";
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
createNode transform -n "refAnimation";
	rename -uid "79AEEC0C-4587-5247-2989-98AE3CB97890";
	setAttr ".rp" -type "double3" 0 0 301.9840181372731 ;
	setAttr ".sp" -type "double3" 0 0 301.9840181372731 ;
createNode mesh -n "refAnimationShape" -p "refAnimation";
	rename -uid "098E85EE-454B-52F4-3863-C0814C96CA02";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 328.27603 
		26.292025 -26.292025 328.27603 -26.292025 26.292025 328.27603 26.292025 26.292025 
		328.27603 -26.292025 26.292025 275.69199 26.292025 26.292025 275.69199 -26.292025 
		-26.292025 275.69199 26.292025 -26.292025 275.69199;
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
createNode transform -n "cube1";
	rename -uid "0585D492-4DA8-9F4A-B6BE-8BA8CA148B38";
createNode mesh -n "cubeShape1" -p "|cube1";
	rename -uid "87DB74F7-4DBA-104A-2DEA-D4B3BCF40A5A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "cube2" -p "|cube1";
	rename -uid "7EBAC902-4D80-7E6F-3C75-569420B26A6F";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "cubeShape2" -p "|cube1|cube2";
	rename -uid "354B05FB-4BAF-BE8F-AF62-688CFEEA7934";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "cube3" -p "|cube1|cube2";
	rename -uid "BDB9F4F0-4712-E2A0-F363-A9B75270CAFE";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "cubeShape3" -p "|cube1|cube2|cube3";
	rename -uid "D1323029-4199-9FE8-F1C1-E29321BA2684";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "cube4" -p "|cube1|cube2|cube3";
	rename -uid "E0FCCF44-4C04-E461-0037-D4BF78EF238F";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "cubeShape4" -p "|cube1|cube2|cube3|cube4";
	rename -uid "1E9420CD-49EA-A189-FDD1-EA9DF4402B79";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "cube5" -p "|cube1|cube2|cube3";
	rename -uid "DED062C3-42FD-1BCD-9A03-E581D798234A";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "cubeShape5" -p "|cube1|cube2|cube3|cube5";
	rename -uid "56624A8B-475D-CA85-ED16-1B8FD08D6B94";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "cube_1";
	rename -uid "1EB658EE-4E2D-4EE8-3758-E6AD2166C40C";
	setAttr ".t" -type "double3" 0 0 -343.16961299959672 ;
createNode mesh -n "cube_Shape1" -p "|cube_1";
	rename -uid "BD34B9B8-4082-6E94-46D6-C4BD1093149C";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "cube_2" -p "|cube_1";
	rename -uid "F9B610FD-40B8-9FB0-0606-76A7F9A04E06";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "cube_Shape2" -p "|cube_1|cube_2";
	rename -uid "87FC1D18-4FDC-7693-C352-67B215423F05";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "cube_3" -p "|cube_1|cube_2";
	rename -uid "64F86899-4EFF-4954-AF5F-C9B5357AD1D4";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "cube_Shape3" -p "|cube_1|cube_2|cube_3";
	rename -uid "2FD5802B-486C-1CD2-272A-F99C150C4FE4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "cube_4" -p "|cube_1|cube_2|cube_3";
	rename -uid "04A78F5B-4344-67AB-AC08-35B9EC19AA66";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "cube_Shape4" -p "|cube_1|cube_2|cube_3|cube_4";
	rename -uid "717EB6D7-427F-391D-28C7-0FB70786853A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "cube_5" -p "|cube_1|cube_2|cube_3";
	rename -uid "B87ED416-4981-EA89-A2B7-D9B6C126DACD";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "cube_Shape5" -p "|cube_1|cube_2|cube_3|cube_5";
	rename -uid "87DD6CC1-4FBE-76D4-AE17-4AA98D1F01CA";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns1:cube1";
	rename -uid "03F7FEF0-4F64-27CB-64B3-CD925461A017";
	setAttr ".t" -type "double3" 0 782.47315529971252 0 ;
createNode mesh -n "ns1:cubeShape1" -p "|ns1:cube1";
	rename -uid "05027A52-4302-40F3-A8CE-DCA18EFA0848";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns1:cube2" -p "|ns1:cube1";
	rename -uid "3B11F9A8-421A-50FC-E756-0DBEB8397DEC";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns1:cubeShape2" -p "|ns1:cube1|ns1:cube2";
	rename -uid "BF705FB8-4EAF-6E38-FB87-9B8CA3185FD5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns1:cube3" -p "|ns1:cube1|ns1:cube2";
	rename -uid "C728C9F1-4572-FAC8-4298-A28E0E10E1F3";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns1:cubeShape3" -p "|ns1:cube1|ns1:cube2|ns1:cube3";
	rename -uid "EDCB6EB0-4118-7EC4-284C-FAADE5BCF0F0";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns1:cube4" -p "|ns1:cube1|ns1:cube2|ns1:cube3";
	rename -uid "D5165FB9-486B-4C20-F8C4-4ABD924AF380";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns1:cubeShape4" -p "|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube4";
	rename -uid "6B6A4DC5-4E7A-F6A4-97CE-E492051E0092";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns1:cube5" -p "|ns1:cube1|ns1:cube2|ns1:cube3";
	rename -uid "3EF24529-42CD-2E65-29DB-379CA969678A";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns1:cubeShape5" -p "|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube5";
	rename -uid "F0923E33-4375-E807-2821-699A23D272FC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns1:cube_1";
	rename -uid "CCD5BE95-45AA-87A6-3204-3C818DFF97B9";
	setAttr ".t" -type "double3" 0 782.47315529971252 -343.16961299959672 ;
createNode mesh -n "ns1:cube_Shape1" -p "|ns1:cube_1";
	rename -uid "E3E2447B-49FC-398E-86E8-E9B5CCDC3EAF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns1:cube_2" -p "|ns1:cube_1";
	rename -uid "447D3DA7-48E1-8805-5C39-1998D24319F2";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns1:cube_Shape2" -p "|ns1:cube_1|ns1:cube_2";
	rename -uid "0E5C00AD-4C81-46BF-BFD3-C3B5EC5948E4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns1:cube_3" -p "|ns1:cube_1|ns1:cube_2";
	rename -uid "36EBEBCE-4FC3-CC6C-B95C-DBBAE4BD3CF6";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns1:cube_Shape3" -p "|ns1:cube_1|ns1:cube_2|ns1:cube_3";
	rename -uid "558EFE47-473F-46F2-B0EB-39B2B74C06F7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns1:cube_4" -p "|ns1:cube_1|ns1:cube_2|ns1:cube_3";
	rename -uid "91FEC937-409A-07C4-ED17-1698BF5ED136";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns1:cube_Shape4" -p "|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_4";
	rename -uid "55A14804-4FE3-496F-5F71-948D41B589E6";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns1:cube_5" -p "|ns1:cube_1|ns1:cube_2|ns1:cube_3";
	rename -uid "AB53C23B-492F-5F07-C3A1-7D9E014DC894";
	setAttr ".t" -type "double3" 19.285513906202596 -51.98670541541594 109.81584707210862 ;
	setAttr ".r" -type "double3" 39.452638239895634 0.62285048346917349 -11.24582456027294 ;
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns1:cube_Shape5" -p "|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_5";
	rename -uid "ABAC67FD-49BE-74A9-2DFF-D389AAF5B2A7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns_2:cube1";
	rename -uid "3750F95D-48B1-4B05-24E1-D8893FB6A6D7";
	setAttr ".t" -type "double3" 0 399.39912160338497 -5.6843418860808015e-14 ;
createNode mesh -n "ns_2:cubeShape1" -p "|ns_2:cube1";
	rename -uid "2CB02399-4011-9CDC-845C-17B43233D6BF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns_2:cube2" -p "|ns_2:cube1";
	rename -uid "2428985B-4274-C40A-E11D-9E9162364F3D";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns_2:cubeShape2" -p "|ns_2:cube1|ns_2:cube2";
	rename -uid "9A321951-46D3-35D7-90DA-41AAADA38975";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns_2:cube3" -p "|ns_2:cube1|ns_2:cube2";
	rename -uid "BDB67DB6-4EEE-BA65-22E0-E2A3A363B04D";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns_2:cubeShape3" -p "|ns_2:cube1|ns_2:cube2|ns_2:cube3";
	rename -uid "1FE934ED-4E77-B857-A9E7-CB95D31900D1";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns_2:cube4" -p "|ns_2:cube1|ns_2:cube2|ns_2:cube3";
	rename -uid "D18E7E33-4C41-8B41-A5AB-C8A4AA19232F";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns_2:cubeShape4" -p "|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube4";
	rename -uid "31C2AF5F-44FD-8570-AAB7-E6B7E27A5601";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns_2:cube5" -p "|ns_2:cube1|ns_2:cube2|ns_2:cube3";
	rename -uid "F7098F50-440C-BF51-9A94-5C8B91DAC356";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns_2:cubeShape5" -p "|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube5";
	rename -uid "1A01DD73-4C38-B787-C24D-4C9BEAFE92E3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns_2:cube_1";
	rename -uid "16423CF1-42CF-B909-4009-1F92C564C2FD";
	setAttr ".t" -type "double3" 0 399.39912160338497 -343.16961299959678 ;
createNode mesh -n "ns_2:cube_Shape1" -p "|ns_2:cube_1";
	rename -uid "C1B64F37-4C39-DC63-D358-B0A63E622C11";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns_2:cube_2" -p "|ns_2:cube_1";
	rename -uid "3434B2E2-4DE4-73F4-1B65-1C97FAD1ACAE";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns_2:cube_Shape2" -p "|ns_2:cube_1|ns_2:cube_2";
	rename -uid "38BD0EF6-4D82-8C8C-F014-7698D98F2966";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns_2:cube_3" -p "|ns_2:cube_1|ns_2:cube_2";
	rename -uid "EE5F7596-4FC5-0639-B502-83A7F666D496";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns_2:cube_Shape3" -p "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3";
	rename -uid "D6EE8296-4E48-6470-BABC-F4AEB33BBB32";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns_2:cube_4" -p "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3";
	rename -uid "809599C3-48FF-8705-183F-70B31C30109B";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns_2:cube_Shape4" -p "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_4";
	rename -uid "327142FC-475F-8493-7E7F-A8ACF4F9AECF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns_2:cube_5" -p "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3";
	rename -uid "37570B78-49B5-600E-A40F-B7818B74EBB3";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns_2:cube_Shape5" -p "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_5";
	rename -uid "CF0D68D9-4FC9-F825-9FEE-B3BCE45EE494";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "testGroup";
	rename -uid "688457F9-45D7-B9FF-810F-EB81306E3FB0";
	setAttr ".t" -type "double3" 0 0 -725.17590323430272 ;
createNode transform -n "cube1" -p "testGroup";
	rename -uid "F4B19D1D-4BB1-45C3-286E-A98E1B49DE46";
createNode mesh -n "cubeShape1" -p "|testGroup|cube1";
	rename -uid "A5AA239B-4A7D-934B-5974-A8B0D5487919";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "cube2" -p "|testGroup|cube1";
	rename -uid "CB89DC98-4FCD-2891-55C6-B49297CB3B46";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "cubeShape2" -p "|testGroup|cube1|cube2";
	rename -uid "A59FD986-425A-AC07-03B8-E6A228CE869C";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "cube3" -p "|testGroup|cube1|cube2";
	rename -uid "BB27AC2D-41FF-DE8E-EA8F-C78F0ABBB9AB";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "cubeShape3" -p "|testGroup|cube1|cube2|cube3";
	rename -uid "22D5E77D-44D7-A897-6F2F-138BDEFF6A98";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "cube4" -p "|testGroup|cube1|cube2|cube3";
	rename -uid "A014D6E9-44BF-2371-3D1F-0A9A87222D92";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "cubeShape4" -p "|testGroup|cube1|cube2|cube3|cube4";
	rename -uid "BF3DB928-433F-C640-DFA1-7DB042AE9A60";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "cube5" -p "|testGroup|cube1|cube2|cube3";
	rename -uid "5425634B-49B9-9D15-300A-0695D58C1A59";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "cubeShape5" -p "|testGroup|cube1|cube2|cube3|cube5";
	rename -uid "3B141ADA-4CCD-C3E6-5700-F695AC06AEAF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "cube_1" -p "testGroup";
	rename -uid "6DFFB9ED-42D9-ED1C-7AA8-3FBB143E1EA4";
	setAttr ".t" -type "double3" 0 0 -343.16961299959672 ;
createNode mesh -n "cube_Shape1" -p "|testGroup|cube_1";
	rename -uid "C9FF3E37-4EF1-459F-912A-50ABD68B3140";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "cube_2" -p "|testGroup|cube_1";
	rename -uid "FD3B55A6-478A-1641-F57E-46A3BA482F80";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "cube_Shape2" -p "|testGroup|cube_1|cube_2";
	rename -uid "865F9B64-4E7C-3CBC-3CF8-66BAF442AA11";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "cube_3" -p "|testGroup|cube_1|cube_2";
	rename -uid "60F71CAC-49F8-0E11-4157-EA8B64DE7139";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "cube_Shape3" -p "|testGroup|cube_1|cube_2|cube_3";
	rename -uid "6B8CAF9D-4FB1-B570-25C0-258832F0C88A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "cube_4" -p "|testGroup|cube_1|cube_2|cube_3";
	rename -uid "9690A067-4DE7-2BB6-2925-03B920932F85";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "cube_Shape4" -p "|testGroup|cube_1|cube_2|cube_3|cube_4";
	rename -uid "E741B8FA-4939-5DC2-BDFC-A5B349F990A3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "cube_5" -p "|testGroup|cube_1|cube_2|cube_3";
	rename -uid "A28B6209-4245-D307-D3D6-CD8C9786ED18";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "cube_Shape5" -p "|testGroup|cube_1|cube_2|cube_3|cube_5";
	rename -uid "1246556B-4028-535B-BF87-259856BA18EF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns1:cube1" -p "testGroup";
	rename -uid "8F1F9E72-48D0-62CF-FE62-8A911357D33C";
	setAttr ".t" -type "double3" 0 399.39912160338497 -5.6843418860808015e-14 ;
createNode mesh -n "ns1:cubeShape1" -p "|testGroup|ns1:cube1";
	rename -uid "A619CC8B-441A-84B8-D068-4E8ACC19B1A7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns1:cube2" -p "|testGroup|ns1:cube1";
	rename -uid "25907B04-4AA9-9CF1-384E-8F9AD04D2891";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns1:cubeShape2" -p "|testGroup|ns1:cube1|ns1:cube2";
	rename -uid "D272D26E-493D-7BBA-A4FA-EE87FE449621";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns1:cube3" -p "|testGroup|ns1:cube1|ns1:cube2";
	rename -uid "B8A5D415-4883-45BA-E9CC-C0BFC0C5A3AF";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns1:cubeShape3" -p "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3";
	rename -uid "9DAE0089-497D-69A1-7E4C-B88E1B747D0F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns1:cube4" -p "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3";
	rename -uid "A4403F1A-49AA-503B-DDDE-3996E9A39F56";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns1:cubeShape4" -p "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube4";
	rename -uid "F264C6A0-4846-E06B-5BB0-819763CF573A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns1:cube5" -p "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3";
	rename -uid "CED66D81-43E7-1F61-D951-129D29958974";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns1:cubeShape5" -p "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube5";
	rename -uid "C28795F4-4BA0-264B-7F6B-FB82C39AD922";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns1:cube_1" -p "testGroup";
	rename -uid "EBCFFE14-4A4F-AB6D-D6EB-9D95CA356FA8";
	setAttr ".t" -type "double3" 0 399.39912160338497 -343.16961299959678 ;
createNode mesh -n "ns1:cube_Shape1" -p "|testGroup|ns1:cube_1";
	rename -uid "4271312A-4E34-4BFB-1A2A-0F8761F0B7F7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns1:cube_2" -p "|testGroup|ns1:cube_1";
	rename -uid "2D2B11D7-485E-4A6C-715A-029DF23168D7";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns1:cube_Shape2" -p "|testGroup|ns1:cube_1|ns1:cube_2";
	rename -uid "EA7A0B51-4E35-72A9-65C7-20870D245275";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns1:cube_3" -p "|testGroup|ns1:cube_1|ns1:cube_2";
	rename -uid "E4696FC2-46E2-2A59-2D89-C5AD36F68FD0";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns1:cube_Shape3" -p "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3";
	rename -uid "77AFBB1D-4E8F-A1B6-9D1A-EAACAFBA9F6F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns1:cube_4" -p "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3";
	rename -uid "34817645-48D2-CAB1-41D1-0CACF02580D5";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns1:cube_Shape4" -p "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_4";
	rename -uid "B9E4F561-43E3-1459-008E-4D961A69ADF4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns1:cube_5" -p "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3";
	rename -uid "4A3A242C-4990-F72C-60DD-6E8A46966A90";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns1:cube_Shape5" -p "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_5";
	rename -uid "BEF86E47-4369-0D80-F821-98B08E9935DB";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns_2:cube1" -p "testGroup";
	rename -uid "3A3F6486-4052-13D8-B357-02BFF29970BC";
	setAttr ".t" -type "double3" 0 782.47315529971252 0 ;
createNode mesh -n "ns_2:cubeShape1" -p "|testGroup|ns_2:cube1";
	rename -uid "2390F83B-45FC-6C5B-5867-09AB4256A4D7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns_2:cube2" -p "|testGroup|ns_2:cube1";
	rename -uid "D5AF67D2-4A59-B189-35B8-0390A827C34E";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns_2:cubeShape2" -p "|testGroup|ns_2:cube1|ns_2:cube2";
	rename -uid "96B191A6-4F4A-7CDC-9860-BBB42DA7B056";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns_2:cube3" -p "|testGroup|ns_2:cube1|ns_2:cube2";
	rename -uid "F6CCD465-4624-06D3-8BF2-92A54A1213E6";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns_2:cubeShape3" -p "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3";
	rename -uid "3666651D-44A8-72B0-65B9-8E81DF679F27";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns_2:cube4" -p "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3";
	rename -uid "5036BF66-4E0A-A9CE-4A95-A38BCBEE945D";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns_2:cubeShape4" -p "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube4";
	rename -uid "D7B1AE71-44DB-9C4F-7B01-91B193EA8FD9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns_2:cube5" -p "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3";
	rename -uid "65BEC223-4031-D8FC-735B-2AA9D54827ED";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns_2:cubeShape5" -p "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube5";
	rename -uid "ACF0A22B-48C5-6F96-9BA5-9A96AF1D6F80";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode transform -n "ns_2:cube_1" -p "testGroup";
	rename -uid "03C28EA2-49C1-F0D9-F73C-AAAF7C966A7C";
	setAttr ".t" -type "double3" 0 782.47315529971252 -343.16961299959672 ;
createNode mesh -n "ns_2:cube_Shape1" -p "|testGroup|ns_2:cube_1";
	rename -uid "6936CF5F-4440-B391-2AF7-08A40CF29A4E";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 -26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 26.292025 26.292025 
		26.292025 -26.292025 26.292025 -26.292025 26.292025 26.292025 -26.292025 -26.292025 
		-26.292025 -26.292025 26.292025 -26.292025 -26.292025;
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
createNode transform -n "ns_2:cube_2" -p "|testGroup|ns_2:cube_1";
	rename -uid "EBDD611C-4A4F-9760-7202-45ACEC563AD0";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "ns_2:cube_Shape2" -p "|testGroup|ns_2:cube_1|ns_2:cube_2";
	rename -uid "0A586023-402A-6717-54CF-17884B4519A1";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 52.062157 26.292025 
		26.292025 52.062157 26.292025 -26.292025 104.6462 26.292025 26.292025 104.6462 26.292025 
		-26.292025 104.6462 -26.292025 26.292025 104.6462 -26.292025 -26.292025 52.062157 
		-26.292025 26.292025 52.062157 -26.292025;
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
createNode transform -n "ns_2:cube_3" -p "|testGroup|ns_2:cube_1|ns_2:cube_2";
	rename -uid "1768326A-4899-F3EE-11F0-1CBEDCBA2D47";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "ns_2:cube_Shape3" -p "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3";
	rename -uid "06F739DA-420D-553E-FACD-9D9E97697ECC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 131.75429 26.292025 
		26.292025 131.75429 26.292025 -26.292025 184.33833 26.292025 26.292025 184.33833 
		26.292025 -26.292025 184.33833 -26.292025 26.292025 184.33833 -26.292025 -26.292025 
		131.75429 -26.292025 26.292025 131.75429 -26.292025;
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
createNode transform -n "ns_2:cube_4" -p "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3";
	rename -uid "41F7709F-4C41-CBD4-159A-8D856051093B";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "ns_2:cube_Shape4" -p "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_4";
	rename -uid "1AA459B7-44F6-CE74-2BBE-B890B94BB676";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -26.292025 209.75433 26.292025 
		26.292025 209.75433 26.292025 -26.292025 262.33838 26.292025 26.292025 262.33838 
		26.292025 -26.292025 262.33838 -26.292025 26.292025 262.33838 -26.292025 -26.292025 
		209.75433 -26.292025 26.292025 209.75433 -26.292025;
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
createNode transform -n "ns_2:cube_5" -p "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3";
	rename -uid "BE67187C-4330-2BFE-AB8E-2680DA8FCB1E";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "ns_2:cube_Shape5" -p "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_5";
	rename -uid "EA5DFBE1-46CC-B595-89B6-898847832FA8";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -20.279751 124.16219 111.64722 
		29.097368 125.39151 93.429504 -7.4952374 158.95831 149.41551 41.881882 160.18764 
		131.1978 -20.531822 198.81274 117.05502 28.845295 200.04207 98.837311 -33.316338 
		164.01662 79.286736 16.060783 165.24594 61.069023;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6FB3767A-4096-ECB4-0DAA-1C9A493CAB9E";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F6E37473-437D-D1B0-A028-A8A0E9EDC161";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E04DF5CD-44A9-5F69-6C88-1CBF2C212FB4";
createNode displayLayerManager -n "layerManager";
	rename -uid "919C22DD-45B8-0A9D-0B9D-1A8155E53E8F";
createNode displayLayer -n "defaultLayer";
	rename -uid "F981115F-414C-5A15-6771-1A8ED2DDD70A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B57F8EBE-460C-5A58-5272-619D2CA10668";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D52DDD41-4E11-5313-C822-C0A1E337E5B6";
	setAttr ".g" yes;
createNode shadingEngine -n "nParticlePointsSE";
	rename -uid "F56E60DB-4C6E-8AC7-57AD-2086B40DC245";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "9144C227-4A11-705C-37A4-5493DB139FFC";
createNode particleSamplerInfo -n "particleSamplerInfo1";
	rename -uid "4498E5DD-4090-1229-CA3A-4990D31E47F2";
createNode blinn -n "npPointsBlinn";
	rename -uid "8C654461-45E4-EBE1-9349-26945D5D3E46";
createNode particleCloud -n "npPointsVolume";
	rename -uid "73A9946C-4F6E-B38D-D0D8-8F9A6CF9C30B";
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D71A42A1-4712-B81B-9FBC-CA92A2B35E24";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 120 ";
	setAttr ".st" 6;
createNode animCurveTA -n "refAnimation_rotateX";
	rename -uid "FB0ECB72-47D8-6204-04B2-84AE145B82E8";
	setAttr ".tan" 28;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 6.6094181711501259 15 8.836016474978841
		 25 -23.190588575900794 48 -23.190588575900794 55 -48.345679895174115 66 -183.12308718960404;
createNode animCurveTA -n "refAnimation_rotateY";
	rename -uid "7BE3132A-4A00-8180-C9FE-438065744ADB";
	setAttr ".tan" 28;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 1.6842909726729809 15 1.717007778351481
		 25 5.1432704514053453 48 5.1432704514053453 55 -17.089654135573163 66 -13.520803284304291;
createNode animCurveTA -n "refAnimation_rotateZ";
	rename -uid "8F33BE6F-4B16-382B-756C-60A0DBB33B16";
	setAttr ".tan" 28;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -9.1197063271498653 15 -11.871062515478497
		 25 29.023951939590933 48 29.023951939590933 55 77.146002484730289 66 94.984959187619623;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 61 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 2;
	setAttr ".ef" 20;
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "refAnimation_rotateX.o" "refAnimation.rx";
connectAttr "refAnimation_rotateY.o" "refAnimation.ry";
connectAttr "refAnimation_rotateZ.o" "refAnimation.rz";
connectAttr "refAnimation.r" "|cube1.r";
connectAttr "refAnimation.r" "|cube_1.r";
connectAttr "refAnimation.r" "|ns1:cube1.r";
connectAttr "refAnimation.r" "|ns1:cube_1.r";
connectAttr "refAnimation.r" "|ns_2:cube1.r";
connectAttr "refAnimation.r" "|ns_2:cube_1.r";
connectAttr "refAnimation.r" "|testGroup|cube1.r";
connectAttr "refAnimation.r" "|testGroup|cube_1.r";
connectAttr "refAnimation.r" "|testGroup|ns1:cube1.r";
connectAttr "refAnimation.r" "|testGroup|ns1:cube_1.r";
connectAttr "refAnimation.r" "|testGroup|ns_2:cube1.r";
connectAttr "refAnimation.r" "|testGroup|ns_2:cube_1.r";
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
connectAttr "|testGroup|cube1|cubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|testGroup|cube1|cube2|cubeShape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|testGroup|cube1|cube2|cube3|cubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|cube1|cube2|cube3|cube4|cubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|cube1|cube2|cube3|cube5|cubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|cube_1|cube_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|testGroup|cube_1|cube_2|cube_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|cube_1|cube_2|cube_3|cube_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|cube_1|cube_2|cube_3|cube_4|cube_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|cube_1|cube_2|cube_3|cube_5|cube_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube1|ns1:cubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube1|ns1:cube2|ns1:cubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube4|ns1:cubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube5|ns1:cubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube_1|ns1:cube_Shape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_4|ns1:cube_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_5|ns1:cube_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube1|ns_2:cubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube4|ns_2:cubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube5|ns_2:cubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube_1|ns_2:cube_Shape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_4|ns_2:cube_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|testGroup|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_5|ns_2:cube_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "refAnimationShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cube1|cubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cube1|cube2|cubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cube1|cube2|cube3|cubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cube1|cube2|cube3|cube4|cubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cube1|cube2|cube3|cube5|cubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cube_1|cube_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cube_1|cube_2|cube_Shape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cube_1|cube_2|cube_3|cube_Shape3.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|cube_1|cube_2|cube_3|cube_4|cube_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|cube_1|cube_2|cube_3|cube_5|cube_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube1|ns_2:cubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|ns_2:cube1|ns_2:cube2|ns_2:cubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube4|ns_2:cubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube1|ns_2:cube2|ns_2:cube3|ns_2:cube5|ns_2:cubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube_1|ns_2:cube_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_4|ns_2:cube_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns_2:cube_1|ns_2:cube_2|ns_2:cube_3|ns_2:cube_5|ns_2:cube_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube1|ns1:cubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|ns1:cube1|ns1:cube2|ns1:cubeShape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cubeShape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube4|ns1:cubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube1|ns1:cube2|ns1:cube3|ns1:cube5|ns1:cubeShape5.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube_1|ns1:cube_Shape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|ns1:cube_1|ns1:cube_2|ns1:cube_Shape2.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_Shape3.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_4|ns1:cube_Shape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|ns1:cube_1|ns1:cube_2|ns1:cube_3|ns1:cube_5|ns1:cube_Shape5.iog" ":initialShadingGroup.dsm"
		 -na;
// End of test_scene.ma
