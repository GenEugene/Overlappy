//Maya ASCII 2022 scene
//Name: test_scene_01.ma
//Last modified: Sat, Apr 09, 2022 01:16:07 AM
//Codeset: 1251
requires maya "2022";
requires "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19044)";
fileInfo "UUID" "DB80DFEF-4DEB-7891-6CB3-97A1E93CA1D9";
createNode transform -s -n "persp";
	rename -uid "F2EFB51E-4208-1E9B-5F40-068ED671E282";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 633.834544651334 278.73354780375422 252.41944108878985 ;
	setAttr ".r" -type "double3" -14.138352729607018 65.000000000004391 3.7629167612916491e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "559007C1-4418-043B-E705-8DAF85ED4CA7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 743.27596200181608;
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
createNode transform -n "pCube2";
	rename -uid "F4B19D1D-4BB1-45C3-286E-A98E1B49DE46";
createNode mesh -n "pCubeShape2" -p "pCube2";
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
createNode transform -n "pCube3" -p "pCube2";
	rename -uid "CB89DC98-4FCD-2891-55C6-B49297CB3B46";
	setAttr ".rp" -type "double3" 0 78.354178836370693 0 ;
	setAttr ".sp" -type "double3" 0 78.354178836370693 0 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
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
createNode transform -n "pCube4" -p "pCube3";
	rename -uid "BB27AC2D-41FF-DE8E-EA8F-C78F0ABBB9AB";
	setAttr ".rp" -type "double3" 0 158.04630569975023 0 ;
	setAttr ".sp" -type "double3" 0 158.04630569975023 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
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
createNode transform -n "pCube5" -p "pCube4";
	rename -uid "A014D6E9-44BF-2371-3D1F-0A9A87222D92";
	setAttr ".rp" -type "double3" 0 236.04635808733033 0 ;
	setAttr ".sp" -type "double3" 0 236.04635808733033 0 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
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
createNode transform -n "pCube6" -p "pCube4";
	rename -uid "5425634B-49B9-9D15-300A-0695D58C1A59";
	setAttr ".rp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
	setAttr ".sp" -type "double3" 4.2827724204345259 162.10212895042167 105.24226343415117 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F8149F7E-4277-4605-3A20-8F89A1E9A06A";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9B570059-4182-DAE9-74A3-7C9E69E9E232";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "125072D7-4F78-89D8-6610-9BBAA5EFAB2F";
createNode displayLayerManager -n "layerManager";
	rename -uid "FEDC4671-4281-938B-4FEE-39B73AB040D3";
createNode displayLayer -n "defaultLayer";
	rename -uid "F981115F-414C-5A15-6771-1A8ED2DDD70A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "720F1DCC-4A05-14AB-4605-67BAA7E4497C";
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
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 110 -ast 0 -aet 110 ";
	setAttr ".st" 6;
createNode animCurveTU -n "pCube2_visibility";
	rename -uid "04825B87-44CB-65BA-A33E-F190989833DC";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 48 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pCube2_translateX";
	rename -uid "2262022D-4547-9359-C288-0F89FF6FC54E";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 48 0;
createNode animCurveTL -n "pCube2_translateY";
	rename -uid "B4915002-4682-623B-1439-969926C3025E";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 48 0;
createNode animCurveTL -n "pCube2_translateZ";
	rename -uid "13490098-4558-C6F3-7705-DEB970B4439B";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 48 0;
createNode animCurveTA -n "pCube2_rotateX";
	rename -uid "4F7F1A36-44A5-F15E-4712-9F90094D77CE";
	setAttr ".tan" 28;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 6.6094181711501259 15 8.836016474978841
		 25 -23.190588575900794 48 -23.190588575900794 55 -48.345679895174115 66 -183.12308718960404;
createNode animCurveTA -n "pCube2_rotateY";
	rename -uid "E8A39DE4-4B69-6406-B566-12A60DE96274";
	setAttr ".tan" 28;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 1.6842909726729809 15 1.717007778351481
		 25 5.1432704514053453 48 5.1432704514053453 55 -17.089654135573163 66 -13.520803284304291;
createNode animCurveTA -n "pCube2_rotateZ";
	rename -uid "B17AFBD9-4E5E-75B9-5C4E-D093A0694371";
	setAttr ".tan" 28;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -9.1197063271498653 15 -11.871062515478497
		 25 29.023951939590933 48 29.023951939590933 55 77.146002484730289 66 94.984959187619623;
createNode animCurveTU -n "pCube2_scaleX";
	rename -uid "173D856F-4FAE-DF51-5194-E39BF5A6991B";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 48 1;
createNode animCurveTU -n "pCube2_scaleY";
	rename -uid "1DCAE023-47B8-C6DB-45F5-0BBB5D74E727";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 48 1;
createNode animCurveTU -n "pCube2_scaleZ";
	rename -uid "2E0BCF51-4D13-E832-2078-90AEB51DCE50";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 48 1;
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
	setAttr -s 5 ".dsm";
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
connectAttr "pCube2_visibility.o" "pCube2.v";
connectAttr "pCube2_translateX.o" "pCube2.tx";
connectAttr "pCube2_translateY.o" "pCube2.ty";
connectAttr "pCube2_translateZ.o" "pCube2.tz";
connectAttr "pCube2_rotateX.o" "pCube2.rx";
connectAttr "pCube2_rotateY.o" "pCube2.ry";
connectAttr "pCube2_rotateZ.o" "pCube2.rz";
connectAttr "pCube2_scaleX.o" "pCube2.sx";
connectAttr "pCube2_scaleY.o" "pCube2.sy";
connectAttr "pCube2_scaleZ.o" "pCube2.sz";
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
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
// End of test_scene_01.ma
