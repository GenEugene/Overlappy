//Maya ASCII 2022 scene
//Name: test_scene_01.ma
//Last modified: Fri, Apr 08, 2022 06:25:46 PM
//Codeset: 1251
requires maya "2022";
requires "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19044)";
fileInfo "UUID" "AF2FCFCF-406B-A9EC-41F0-18B52C54375A";
createNode transform -s -n "persp";
	rename -uid "F2EFB51E-4208-1E9B-5F40-068ED671E282";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 323.42411437712144 214.86633694554737 266.19336385944189 ;
	setAttr ".r" -type "double3" -14.738352729602473 57.000000000000362 -5.8397479375964906e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "559007C1-4418-043B-E705-8DAF85ED4CA7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 455.24318855363799;
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
createNode transform -n "pCube1";
	rename -uid "75DAC583-4DC4-B743-32F5-6BB1D946AA32";
	setAttr ".s" -type "double3" 53.58405005675607 53.58405005675607 53.58405005675607 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "976E3290-44CC-5845-AF94-F9BC36241E4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1DF197EB-4B9A-8091-711F-39B3A92A6086";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0EBF7E82-44BC-9779-A401-309087CA542B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8E97506B-44C5-7072-8FD2-E2B546BB932D";
createNode displayLayerManager -n "layerManager";
	rename -uid "DA771593-437C-05EA-FF16-5D9AAE5812DA";
createNode displayLayer -n "defaultLayer";
	rename -uid "F981115F-414C-5A15-6771-1A8ED2DDD70A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "45B7065C-41D4-6518-8FC4-3AACFBB22390";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D52DDD41-4E11-5313-C822-C0A1E337E5B6";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "10466B35-43A9-F713-9A9C-B5A08F4E0003";
	setAttr ".cuv" 4;
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
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "F0BDFA99-482B-A100-29F1-E7AEC350EFF9";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  5 -140.71748787916749 19 -112.49116182122833;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "D8288B77-447D-F827-71BE-669635EB0DCD";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  5 123.34920947084333 19 217.68011924313757;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "F55A4F1F-48E8-BEDC-A948-CFA02AB13D5F";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  5 48.205580776034935 19 -40.820981327573548;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D71A42A1-4712-B81B-9FBC-CA92A2B35E24";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
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
connectAttr "pCube1_translateX.o" "pCube1.tx";
connectAttr "pCube1_translateY.o" "pCube1.ty";
connectAttr "pCube1_translateZ.o" "pCube1.tz";
connectAttr "polyCube1.out" "pCubeShape1.i";
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
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of test_scene_01.ma
