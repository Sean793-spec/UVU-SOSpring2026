//Maya ASCII 2024 scene
//Name: AOV_SO.ma
//Last modified: Mon, Feb 23, 2026 06:54:04 PM
//Codeset: 932
file -rdi 1 -ns "Ultimate_Bony_v1_0_5" -rfn "Ultimate_Bony_v1_0_5RN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/Sean O'Hara/OneDrive/Desktop/Git/UVU-SOSpring2026/Maya/Animation/Animation Items/3D_Rigs_export/UltimateRigs/Ultimate_Bony_v1.0.5.ma";
file -r -ns "Ultimate_Bony_v1_0_5" -dr 1 -rfn "Ultimate_Bony_v1_0_5RN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/Sean O'Hara/OneDrive/Desktop/Git/UVU-SOSpring2026/Maya/Animation/Animation Items/3D_Rigs_export/UltimateRigs/Ultimate_Bony_v1.0.5.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOV" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter"
		 -nodeType "aiSkyDomeLight" -nodeType "aiAreaLight" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "EDCDF5BA-44FE-7E60-89FA-D593F415A9A4";
createNode transform -s -n "persp";
	rename -uid "41CCC29F-4405-225B-CD17-D19CE0AA75E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -36.642683052394595 23.517820627108868 -14.64832082450806 ;
	setAttr ".r" -type "double3" -27.338352704447445 -3699.400000000604 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D39DC82D-4CDB-BDF0-EAF8-18BCA303622E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.741912241279799;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.53000980483361881 5.9966173924685657 -8.9487347223172762 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgm" no;
	setAttr ".dfg" yes;
createNode transform -s -n "top";
	rename -uid "B41A3B37-4A22-2E26-9B1E-E1A800144551";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B58B2617-4F0E-1564-1CC8-FDB1685C0B2B";
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
	rename -uid "25381D48-4FEE-A618-DC56-EDAEFA2DBCFB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9A93B8FC-4AB3-24C3-F42D-BBA2DE332B1E";
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
	rename -uid "A1C9ED87-471A-A899-E6B9-9997C52CA25F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F481F92C-486C-240A-6CC6-2091347B75E0";
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
	rename -uid "15B5E479-45BF-CD99-5C13-EFBA9AB7F674";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "04E05E55-418D-0BE9-07C7-68B7D41B7943";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
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
createNode transform -n "aiSkyDomeLight1";
	rename -uid "7E0FE569-4ED0-1F1E-2A84-219D8EB5E3AC";
	setAttr ".r" -type "double3" -0.042085916495247198 0.13779657885943886 -0.17055864259132214 ;
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "B9EC6B7B-475D-AF1A-128D-198267EF5521";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 9.9522676467895508;
	setAttr ".ai_exposure" -2.841726541519165;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "aiAreaLight1";
	rename -uid "101BDEC7-488B-D6DB-5519-B7AD8E858D44";
	setAttr ".t" -type "double3" -35.455518848224081 15.08118136917167 17.36429732919521 ;
	setAttr ".r" -type "double3" -34.169935810680464 -57.154117500288031 29.696513114279405 ;
	setAttr ".s" -type "double3" 12.81758325725723 4.707931623961735 4.707931623961735 ;
createNode aiAreaLight -n "aiAreaLightShape1" -p "aiAreaLight1";
	rename -uid "35CEFFBD-4B45-D63B-ED77-19A15D92B7F8";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.76372313499450684;
	setAttr ".ai_exposure" 13.825873374938965;
	setAttr ".ai_translator" -type "string" "disk";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight2";
	rename -uid "249608E2-4343-98C9-4AF0-B5BDB7BACB84";
	setAttr ".t" -type "double3" -39.13621678902112 7.3622735862349815 -11.351285024882396 ;
	setAttr ".r" -type "double3" -222.12876159286594 -75.215540637099565 -132.89432320155385 ;
	setAttr ".s" -type "double3" 4.707931623961735 4.707931623961735 4.707931623961735 ;
createNode aiAreaLight -n "aiAreaLightShape2" -p "aiAreaLight2";
	rename -uid "AF124473-47E9-E61B-E196-4CB775F1666F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 9.0692119598388672;
	setAttr ".urs" no;
	setAttr ".ai_cast_shadows" no;
	setAttr ".ai_exposure" 10;
	setAttr ".ai_cast_volumetric_shadows" no;
	setAttr ".ai_translator" -type "string" "disk";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight3";
	rename -uid "DF87C754-4A1A-8A41-3B7E-8D8CAC40E91B";
	setAttr ".t" -type "double3" 14.486690294682802 11.817971851470674 0.52560474060053908 ;
	setAttr ".r" -type "double3" -335.55385043096089 88.96835834331722 -318.61876109377664 ;
	setAttr ".s" -type "double3" 9.9700188885411496 9.9700188885411496 9.9700188885411496 ;
createNode aiAreaLight -n "aiAreaLightShape3" -p "aiAreaLight3";
	rename -uid "12DA3CBD-45B9-AA8B-DCA6-03A15AA1D089";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 1.6945106983184814;
	setAttr ".urs" no;
	setAttr ".ai_cast_shadows" no;
	setAttr ".ai_exposure" 7.1103119850158691;
	setAttr ".ai_cast_volumetric_shadows" no;
	setAttr ".ai_translator" -type "string" "disk";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pCube2";
	rename -uid "72ECA4C5-4943-22DE-BE92-9999BA603937";
	setAttr ".t" -type "double3" 0 -0.29269527271637252 27.51299042010745 ;
	setAttr ".s" -type "double3" 24.097491106167457 0.23709095513714254 24.219358257552351 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "A6973820-4DE5-DB92-E04D-6CAD8A148856";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
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
createNode transform -n "pCube3";
	rename -uid "5EC4C5FD-444B-8E56-C319-E2AF1601254C";
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "1F296293-4658-A1B3-ED5E-1F8E1C039B76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
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
createNode transform -n "pCube4";
	rename -uid "D32F8B53-4345-16E0-1A86-B9A9C0B495C6";
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "52943DF6-44F1-06A3-BFE0-BC91F8458B8D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
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
createNode transform -n "camera1";
	rename -uid "9E8DBE01-4723-2618-76C4-1E8F5F625F26";
	setAttr ".t" -type "double3" -60.908702239161926 7.9509774703151344 2.1393090042506566 ;
	setAttr ".r" -type "double3" 0.53889352785789912 -91.199999999999932 0 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "C9096822-43BA-B4D4-98F1-7EB629127113";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 15.428222712012998;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BBE1C85E-4507-B885-8881-3F9A64D75C71";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CAB0B05C-4F4E-9C4E-4DF3-39858D1F0B36";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3A67C6F3-4BA0-280C-94F6-35A94E5EBF51";
createNode displayLayerManager -n "layerManager";
	rename -uid "E0DD5744-44CB-3A13-02BA-349CE40B87D1";
createNode displayLayer -n "defaultLayer";
	rename -uid "09FE265E-4534-89E4-7DA9-99A27EA0D00D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "ECC95A4C-492C-7857-DBBC-D28008BE65E4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D6CF7F8B-4120-F897-14A1-37801A5D4E33";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "00B1FAB3-4A39-2705-513D-E9A11954DE64";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr -s 6 ".aovs";
	setAttr ".AA_samples" 10;
	setAttr ".version" -type "string" "5.3.4.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=cameraShape1;Color Management.Gamma=1;Color Management.Exposure=2.5;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "24A0484D-418D-B19B-16BF-5ABEE8A770B0";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A155BE44-4823-7EA6-572F-BC8FFABB7AAD";
	setAttr ".ai_translator" -type "string" "png";
	setAttr ".color_management" 1;
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "217806E4-4DE9-D8C4-BAD3-E89A79C679E2";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "95D65BA2-467E-7052-18F2-56865AC46EF6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1021\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 507\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 507\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 507\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1021\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1021\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F3387538-4EAE-90B1-1E5B-36B644F9A401";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 173 -ast 0 -aet 308 ";
	setAttr ".st" 6;
createNode file -n "file1";
	rename -uid "155BCB3D-4410-EC66-593E-FA8A23011CBD";
	setAttr ".ftn" -type "string" "C:/Users/Sean O'Hara/Downloads/Sunset.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "B7F07BD6-4F31-2E39-9A23-BE91BFB21ACE";
createNode aiAOV -n "aiAOV_transmission";
	rename -uid "DAA13BA3-41F3-7033-1646-73A178B00C6E";
	setAttr ".aovn" -type "string" "transmission";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_specular";
	rename -uid "F0544ABF-4CDF-0647-A41B-2783C2A6E17C";
	setAttr ".aovn" -type "string" "specular";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_shadow";
	rename -uid "EF6A602D-43C5-AD8C-0119-D296BC4556F3";
	setAttr ".aovn" -type "string" "shadow";
	setAttr ".aovt" 5;
createNode shadingEngine -n "aiLambert1SG";
	rename -uid "E9AE408C-4634-6EE6-3395-CF9089ED315C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 7 ".aovs";
	setAttr ".aovs[1].aov_name" -type "string" "shadow";
	setAttr ".aovs[2].aov_name" -type "string" "specular";
	setAttr ".aovs[3].aov_name" -type "string" "transmission";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "ID";
	setAttr ".aovs[6].aov_name" -type "string" "shadow_diff";
	setAttr ".aovs[7].aov_name" -type "string" "shadow_mask";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_shadow","aiCustomAOVs[1]","ai_aov_specular"
		,"aiCustomAOVs[2]","ai_aov_transmission","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4].aovName"
		,"ai_aov_ID","aiCustomAOVs[5].aovName","ai_aov_shadow_diff","aiCustomAOVs[6].aovName"
		,"ai_aov_shadow_mask","aiCustomAOVs[7].aovName"} ;
createNode materialInfo -n "materialInfo1";
	rename -uid "06CABC3A-4C14-9B41-1D01-E8B8850A763D";
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "890842FE-4040-FC60-CC4C-F8B0ED71DA79";
	setAttr ".base_color" -type "float3" 0 1 0.1348 ;
	setAttr ".emission" 0.3492063581943512;
	setAttr ".emission_color" -type "float3" 0.43189999 1 0 ;
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "576F1AB6-4AB3-39DD-7569-26AF4DCC6765";
	setAttr ".base_color" -type "float3" 0 0.72490001 1 ;
	setAttr ".transmission" 1;
	setAttr ".transmission_color" -type "float3" 0 0.72479999 1 ;
	setAttr ".emission" 0.014319809153676033;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "5FC94F25-40B1-A796-A3D0-C79926CE2793";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 7 ".aovs";
	setAttr ".aovs[1].aov_name" -type "string" "shadow";
	setAttr ".aovs[2].aov_name" -type "string" "specular";
	setAttr ".aovs[3].aov_name" -type "string" "transmission";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "ID";
	setAttr ".aovs[6].aov_name" -type "string" "shadow_diff";
	setAttr ".aovs[7].aov_name" -type "string" "shadow_mask";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_shadow","aiCustomAOVs[1]","ai_aov_specular"
		,"aiCustomAOVs[2]","ai_aov_transmission","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4].aovName"
		,"ai_aov_ID","aiCustomAOVs[5].aovName","ai_aov_shadow_diff","aiCustomAOVs[6].aovName"
		,"ai_aov_shadow_mask","aiCustomAOVs[7].aovName"} ;
createNode materialInfo -n "materialInfo2";
	rename -uid "A04A26D6-4A22-7498-8A43-27A9002716DF";
createNode aiAOVDriver -n "aiAOVDriver2";
	rename -uid "A5A9FAF2-47F5-EAF0-23E0-0BB4306CA242";
	setAttr ".ai_translator" -type "string" "jpeg";
createNode aiAOVDriver -n "aiAOVDriver3";
	rename -uid "CCD74AAA-4C66-8C28-FA75-9CAE9F12E71A";
	setAttr ".ai_translator" -type "string" "jpeg";
createNode aiAOVDriver -n "aiAOVDriver4";
	rename -uid "3E2C751B-44E7-36AE-5FC7-1DB4A87CC2AA";
	setAttr ".ai_translator" -type "string" "jpeg";
createNode aiAOV -n "aiAOV_diffuse";
	rename -uid "1416277D-4360-EA03-A725-2799FB43ABEB";
	setAttr ".aovn" -type "string" "diffuse";
	setAttr ".aovt" 5;
createNode reference -n "Ultimate_Bony_v1_0_5RN";
	rename -uid "F4C2287A-4D6E-677C-4143-C29223385280";
	setAttr -s 225 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ultimate_Bony_v1_0_5RN"
		"Ultimate_Bony_v1_0_5RN" 0
		"Ultimate_Bony_v1_0_5RN" 323
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT" "translate" 
		" -type \"double3\" 0 0.13780287531648561 -22.45310531164325241"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"rotatePivot" " -type \"double3\" 0.459382534027099 0.58418124914169312 -0.094986259937286863"
		
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"scalePivot" " -type \"double3\" 0.459382534027099 0.58418124914169312 -0.094986259937286863"
		
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"Stretch" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"KneeLock" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"footTilt" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"heelBall" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"toeUpDn" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC" 
		"ballSwivel" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristFKCG|Ultimate_Bony_v1_0_5:Bony_lWristFKC" 
		"scaleY" " -k 0"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristFKCG|Ultimate_Bony_v1_0_5:Bony_lWristFKC" 
		"scaleZ" " -k 0"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC" 
		"footTilt" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC" 
		"heelBall" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC" 
		"toeUpDn" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristFKCG|Ultimate_Bony_v1_0_5:Bony_rWristFKC" 
		"scaleY" " -k 0"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristFKCG|Ultimate_Bony_v1_0_5:Bony_rWristFKC" 
		"scaleZ" " -k 0"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_rShoulderFKC" 
		"ShoulderOrient" " -k 1"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg|Ultimate_Bony_v1_0_5:Bony_L_legShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_arm|Ultimate_Bony_v1_0_5:Bony_L_armShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg|Ultimate_Bony_v1_0_5:Bony_R_legShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_arm|Ultimate_Bony_v1_0_5:Bony_R_armShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "Ultimate_Bony_v1_0_5:char_body_blinn1SG" "aiCustomAOVs" " -s 2"
		2 "Ultimate_Bony_v1_0_5:char_body_blinn1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"shadow_diff\""
		
		2 "Ultimate_Bony_v1_0_5:char_body_blinn1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"shadow_mask\""
		
		2 "Ultimate_Bony_v1_0_5:char_body_blinn5SG" "aiCustomAOVs" " -s 2"
		2 "Ultimate_Bony_v1_0_5:char_body_blinn5SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"shadow_diff\""
		
		2 "Ultimate_Bony_v1_0_5:char_body_blinn5SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"shadow_mask\""
		
		2 "Ultimate_Bony_v1_0_5:groupParts170" "inputRemoveComponent" " -type \"componentList\" 1 \"f[0:271]\""
		
		2 "Ultimate_Bony_v1_0_5:groupParts170" "groupId" " 264"
		2 "Ultimate_Bony_v1_0_5:groupParts173" "inputRemoveComponent" " -type \"componentList\" 1 \"f[0:279]\""
		
		2 "Ultimate_Bony_v1_0_5:groupParts173" "groupId" " 265"
		2 "Ultimate_Bony_v1_0_5:groupParts176" "inputRemoveComponent" " -type \"componentList\" 1 \"f[0:271]\""
		
		2 "Ultimate_Bony_v1_0_5:groupParts176" "groupId" " 266"
		2 "Ultimate_Bony_v1_0_5:groupParts177" "inputRemoveComponent" " -type \"componentList\" 1 \"f[0:279]\""
		
		2 "Ultimate_Bony_v1_0_5:groupParts177" "groupId" " 267"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_wrist|Ultimate_Bony_v1_0_5:Bony_R_wristShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_elbow|Ultimate_Bony_v1_0_5:Bony_R_elbowShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_shoulder|Ultimate_Bony_v1_0_5:Bony_R_shoulderShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_but|Ultimate_Bony_v1_0_5:Bony_R_butShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_knee|Ultimate_Bony_v1_0_5:Bony_R_kneeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_ankle|Ultimate_Bony_v1_0_5:Bony_R_ankleShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_wrist|Ultimate_Bony_v1_0_5:Bony_L_wristShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_elbow|Ultimate_Bony_v1_0_5:Bony_L_elbowShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_shoulder|Ultimate_Bony_v1_0_5:Bony_L_shoulderShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_but|Ultimate_Bony_v1_0_5:Bony_L_butShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_knee|Ultimate_Bony_v1_0_5:Bony_L_kneeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_ankle|Ultimate_Bony_v1_0_5:Bony_L_ankleShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_neck|Ultimate_Bony_v1_0_5:Bony_neckShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn5SG.dagSetMembers" "-na"
		3 "Ultimate_Bony_v1_0_5:groupId176.groupId" "Ultimate_Bony_v1_0_5:groupParts176.groupId" 
		""
		3 "Ultimate_Bony_v1_0_5:groupId174.groupId" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_arm|Ultimate_Bony_v1_0_5:Bony_L_armShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "Ultimate_Bony_v1_0_5:char_body_blinn1SG.memberWireframeColor" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_arm|Ultimate_Bony_v1_0_5:Bony_L_armShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "Ultimate_Bony_v1_0_5:groupId177.groupId" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg|Ultimate_Bony_v1_0_5:Bony_R_legShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "Ultimate_Bony_v1_0_5:char_body_blinn1SG.memberWireframeColor" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg|Ultimate_Bony_v1_0_5:Bony_R_legShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "Ultimate_Bony_v1_0_5:groupId176.groupId" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_arm|Ultimate_Bony_v1_0_5:Bony_R_armShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "Ultimate_Bony_v1_0_5:char_body_blinn1SG.memberWireframeColor" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_arm|Ultimate_Bony_v1_0_5:Bony_R_armShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "Ultimate_Bony_v1_0_5:groupId177.groupId" "Ultimate_Bony_v1_0_5:groupParts177.groupId" 
		""
		3 "Ultimate_Bony_v1_0_5:groupId175.groupId" "Ultimate_Bony_v1_0_5:groupParts173.groupId" 
		""
		3 "Ultimate_Bony_v1_0_5:groupId174.groupId" "Ultimate_Bony_v1_0_5:groupParts170.groupId" 
		""
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_arm|Ultimate_Bony_v1_0_5:Bony_R_armShape.instObjGroups.objectGroups[0]" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "Ultimate_Bony_v1_0_5:groupId176.message" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.groupNodes" 
		"-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg|Ultimate_Bony_v1_0_5:Bony_R_legShape.instObjGroups.objectGroups[0]" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "Ultimate_Bony_v1_0_5:groupId177.message" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.groupNodes" 
		"-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_pinky1|Ultimate_Bony_v1_0_5:Bony_R_pinkyShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_pinky2|Ultimate_Bony_v1_0_5:Bony_R_pinkyShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_pinky3|Ultimate_Bony_v1_0_5:Bony_R_pinkyShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_index3|Ultimate_Bony_v1_0_5:Bony_R_indexShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_index2|Ultimate_Bony_v1_0_5:Bony_R_indexShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_index1|Ultimate_Bony_v1_0_5:Bony_R_indexShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_thumb1|Ultimate_Bony_v1_0_5:Bony_R_thumbShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_thumb2|Ultimate_Bony_v1_0_5:Bony_R_thumbShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_thumb3|Ultimate_Bony_v1_0_5:Bony_R_thumbShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_hand|Ultimate_Bony_v1_0_5:Bony_R_handShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_arm|Ultimate_Bony_v1_0_5:Bony_L_armShape.instObjGroups.objectGroups[0]" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "Ultimate_Bony_v1_0_5:groupId174.message" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.groupNodes" 
		"-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_toe|Ultimate_Bony_v1_0_5:Bony_R_toeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_foot|Ultimate_Bony_v1_0_5:Bony_R_footShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_pelvis|Ultimate_Bony_v1_0_5:Bony_pelvisShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg|Ultimate_Bony_v1_0_5:Bony_L_legShape.instObjGroups.objectGroups[0]" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "Ultimate_Bony_v1_0_5:groupId175.message" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.groupNodes" 
		"-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_pinky1|Ultimate_Bony_v1_0_5:Bony_L_pinkyShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_pinky2|Ultimate_Bony_v1_0_5:Bony_L_pinkyShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_pinky3|Ultimate_Bony_v1_0_5:Bony_L_pinkyShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_index3|Ultimate_Bony_v1_0_5:Bony_L_indexShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_index2|Ultimate_Bony_v1_0_5:Bony_L_indexShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_index1|Ultimate_Bony_v1_0_5:Bony_L_indexShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_thumb1|Ultimate_Bony_v1_0_5:Bony_L_thumbShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_thumb2|Ultimate_Bony_v1_0_5:Bony_L_thumbShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_thumb3|Ultimate_Bony_v1_0_5:Bony_L_thumbShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_hand|Ultimate_Bony_v1_0_5:Bony_L_handShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_toe|Ultimate_Bony_v1_0_5:Bony_L_toeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_foot|Ultimate_Bony_v1_0_5:Bony_L_footShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_head|Ultimate_Bony_v1_0_5:Bony_headShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_chest|Ultimate_Bony_v1_0_5:Bony_chestShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_spine2|Ultimate_Bony_v1_0_5:Bony_spine2Shape.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_spine1|Ultimate_Bony_v1_0_5:Bony_spineShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5:char_body_blinn1SG.dagSetMembers" "-na"
		3 "Ultimate_Bony_v1_0_5:groupId175.groupId" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg|Ultimate_Bony_v1_0_5:Bony_L_legShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "Ultimate_Bony_v1_0_5:char_body_blinn1SG.memberWireframeColor" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg|Ultimate_Bony_v1_0_5:Bony_L_legShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_ROOTCG|Ultimate_Bony_v1_0_5:Bony_ROOTC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[1]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_ROOTCG|Ultimate_Bony_v1_0_5:Bony_ROOTC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[2]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_ROOTCG|Ultimate_Bony_v1_0_5:Bony_ROOTC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[3]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_ROOTCG|Ultimate_Bony_v1_0_5:Bony_ROOTC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[4]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_ROOTCG|Ultimate_Bony_v1_0_5:Bony_ROOTC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[5]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_ROOTCG|Ultimate_Bony_v1_0_5:Bony_ROOTC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[6]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_MainHipCG|Ultimate_Bony_v1_0_5:Bony_MainHipC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[7]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_MainHipCG|Ultimate_Bony_v1_0_5:Bony_MainHipC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[8]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_MainHipCG|Ultimate_Bony_v1_0_5:Bony_MainHipC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[9]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_MainHipCG|Ultimate_Bony_v1_0_5:Bony_MainHipC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[10]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_MainHipCG|Ultimate_Bony_v1_0_5:Bony_MainHipC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[11]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_MainHipCG|Ultimate_Bony_v1_0_5:Bony_MainHipC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[12]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine01FKCG|Ultimate_Bony_v1_0_5:Bony_Spine01FKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[13]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine01FKCG|Ultimate_Bony_v1_0_5:Bony_Spine01FKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[14]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine01FKCG|Ultimate_Bony_v1_0_5:Bony_Spine01FKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[15]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_SpineTopIKCG|Ultimate_Bony_v1_0_5:Bony_SpineTopIKC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[16]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_SpineTopIKCG|Ultimate_Bony_v1_0_5:Bony_SpineTopIKC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[17]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_SpineTopIKCG|Ultimate_Bony_v1_0_5:Bony_SpineTopIKC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[18]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_SpineTopIKCG|Ultimate_Bony_v1_0_5:Bony_SpineTopIKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[19]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_SpineTopIKCG|Ultimate_Bony_v1_0_5:Bony_SpineTopIKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[20]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_SpineTopIKCG|Ultimate_Bony_v1_0_5:Bony_SpineTopIKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[21]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine02FKCG|Ultimate_Bony_v1_0_5:Bony_Spine02FKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[22]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine02FKCG|Ultimate_Bony_v1_0_5:Bony_Spine02FKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[23]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine02FKCG|Ultimate_Bony_v1_0_5:Bony_Spine02FKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[24]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine03FKCG|Ultimate_Bony_v1_0_5:Bony_Spine03FKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[25]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine03FKCG|Ultimate_Bony_v1_0_5:Bony_Spine03FKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[26]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Spine03FKCG|Ultimate_Bony_v1_0_5:Bony_Spine03FKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[27]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_HeadCG2|Ultimate_Bony_v1_0_5:Bony_HeadCG|Ultimate_Bony_v1_0_5:Bony_HeadC.HeadOrient" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[28]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_HeadCG2|Ultimate_Bony_v1_0_5:Bony_HeadCG|Ultimate_Bony_v1_0_5:Bony_HeadC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[29]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_HeadCG2|Ultimate_Bony_v1_0_5:Bony_HeadCG|Ultimate_Bony_v1_0_5:Bony_HeadC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[30]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_HeadCG2|Ultimate_Bony_v1_0_5:Bony_HeadCG|Ultimate_Bony_v1_0_5:Bony_HeadC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[31]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Neck01CG|Ultimate_Bony_v1_0_5:Bony_Neck01C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[32]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Neck01CG|Ultimate_Bony_v1_0_5:Bony_Neck01C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[33]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_Neck01CG|Ultimate_Bony_v1_0_5:Bony_Neck01C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[34]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lLegSwitchCG|Ultimate_Bony_v1_0_5:Bony_lLegSwitchC.SwitchIkFk" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[35]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.Stretch" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[36]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.KneeLock" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[37]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.footTilt" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[38]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.heelBall" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[39]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.toeUpDn" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[40]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.ballSwivel" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[41]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[42]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[43]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[44]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[45]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[46]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lFootIKCG|Ultimate_Bony_v1_0_5:Bony_lFootIKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[47]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lKneeIKCG|Ultimate_Bony_v1_0_5:Bony_lKneeIKC.Follow" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[48]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lKneeIKCG|Ultimate_Bony_v1_0_5:Bony_lKneeIKC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[49]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lKneeIKCG|Ultimate_Bony_v1_0_5:Bony_lKneeIKC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[50]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lKneeIKCG|Ultimate_Bony_v1_0_5:Bony_lKneeIKC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[51]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristFKCG|Ultimate_Bony_v1_0_5:Bony_lWristFKC.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[52]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristFKCG|Ultimate_Bony_v1_0_5:Bony_lWristFKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[53]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristFKCG|Ultimate_Bony_v1_0_5:Bony_lWristFKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[54]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristFKCG|Ultimate_Bony_v1_0_5:Bony_lWristFKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[55]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lElbowFKCG|Ultimate_Bony_v1_0_5:Bony_lElbowFKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[56]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_lShoulderFKC.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[57]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_lShoulderFKC.ShoulderOrient" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[58]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_lShoulderFKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[59]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_lShoulderFKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[60]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_lShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_lShoulderFKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[61]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lClavicleCG|Ultimate_Bony_v1_0_5:Bony_lClavicleC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[62]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lClavicleCG|Ultimate_Bony_v1_0_5:Bony_lClavicleC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[63]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lClavicleCG|Ultimate_Bony_v1_0_5:Bony_lClavicleC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[64]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[65]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[66]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[67]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J1C.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[68]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J1C.scaleY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[69]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J1C.scaleZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[70]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J1C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[71]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J1C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[72]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J1C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[73]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J2CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J2C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[74]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J2CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J2C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[75]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J2CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J2C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[76]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J3CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J3C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[77]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J3CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J3C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[78]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger1J3CG|Ultimate_Bony_v1_0_5:Bony_lFinger1J3C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[79]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J1C.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[80]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J1C.scaleY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[81]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J1C.scaleZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[82]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J1C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[83]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J1C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[84]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J1C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[85]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J2CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J2C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[86]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J2CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J2C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[87]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J2CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J2C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[88]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J3CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J3C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[89]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J3CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J3C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[90]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lPalmCG|Ultimate_Bony_v1_0_5:Bony_lPalmC|Ultimate_Bony_v1_0_5:Bony_lFinger2J3CG|Ultimate_Bony_v1_0_5:Bony_lFinger2J3C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[91]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lToeIKCG|Ultimate_Bony_v1_0_5:Bony_lToeIKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[92]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lToeIKCG|Ultimate_Bony_v1_0_5:Bony_lToeIKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[93]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lToeIKCG|Ultimate_Bony_v1_0_5:Bony_lToeIKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[94]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rLegSwitchCG|Ultimate_Bony_v1_0_5:Bony_rLegSwitchC.SwitchIkFk" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[95]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.Stretch" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[96]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.KneeLock" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[97]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.footTilt" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[98]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.heelBall" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[99]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.toeUpDn" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[100]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.ballSwivel" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[101]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[102]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[103]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[104]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[105]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[106]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rFootIKCG|Ultimate_Bony_v1_0_5:Bony_rFootIKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[107]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rKneeIKCG|Ultimate_Bony_v1_0_5:Bony_rKneeIKC.Follow" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[108]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rKneeIKCG|Ultimate_Bony_v1_0_5:Bony_rKneeIKC.translateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[109]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rKneeIKCG|Ultimate_Bony_v1_0_5:Bony_rKneeIKC.translateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[110]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rKneeIKCG|Ultimate_Bony_v1_0_5:Bony_rKneeIKC.translateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[111]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rArmSwitchCG|Ultimate_Bony_v1_0_5:Bony_rArmSwitchC.SwitchIkFk" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[112]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristFKCG|Ultimate_Bony_v1_0_5:Bony_rWristFKC.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[113]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristFKCG|Ultimate_Bony_v1_0_5:Bony_rWristFKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[114]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristFKCG|Ultimate_Bony_v1_0_5:Bony_rWristFKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[115]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristFKCG|Ultimate_Bony_v1_0_5:Bony_rWristFKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[116]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rElbowFKCG|Ultimate_Bony_v1_0_5:Bony_rElbowFKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[117]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_rShoulderFKC.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[118]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_rShoulderFKC.ShoulderOrient" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[119]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_rShoulderFKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[120]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_rShoulderFKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[121]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG2|Ultimate_Bony_v1_0_5:Bony_rShoulderFKCG|Ultimate_Bony_v1_0_5:Bony_rShoulderFKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[122]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rClavicleCG|Ultimate_Bony_v1_0_5:Bony_rClavicleC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[123]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rClavicleCG|Ultimate_Bony_v1_0_5:Bony_rClavicleC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[124]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rClavicleCG|Ultimate_Bony_v1_0_5:Bony_rClavicleC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[125]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[126]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[127]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[128]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J1C.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[129]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J1C.scaleY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[130]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J1C.scaleZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[131]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J1C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[132]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J1C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[133]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J1C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[134]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J2CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J2C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[135]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J2CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J2C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[136]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J2CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J2C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[137]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J3CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J3C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[138]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J3CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J3C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[139]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger1J3CG|Ultimate_Bony_v1_0_5:Bony_rFinger1J3C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[140]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J1C.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[141]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J1C.scaleY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[142]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J1C.scaleZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[143]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J1C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[144]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J1C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[145]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J1CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J1C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[146]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J2CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J2C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[147]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J2CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J2C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[148]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J2CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J2C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[149]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J3CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J3C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[150]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J3CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J3C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[151]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rPalmCG|Ultimate_Bony_v1_0_5:Bony_rPalmC|Ultimate_Bony_v1_0_5:Bony_rFinger2J3CG|Ultimate_Bony_v1_0_5:Bony_rFinger2J3C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[152]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rToeIKCG|Ultimate_Bony_v1_0_5:Bony_rToeIKC.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[153]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rToeIKCG|Ultimate_Bony_v1_0_5:Bony_rToeIKC.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[154]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rToeIKCG|Ultimate_Bony_v1_0_5:Bony_rToeIKC.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[155]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ1C.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[156]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ1C.scaleY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[157]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ1C.scaleZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[158]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ1C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[159]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ1C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[160]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ1C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[161]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ2CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ2C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[162]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ2CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ2C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[163]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ2CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ2C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[164]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ3CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ3C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[165]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ3CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ3C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[166]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_lWristJG2|Ultimate_Bony_v1_0_5:Bony_lWristJG1|Ultimate_Bony_v1_0_5:Bony_lThumbJ3CG|Ultimate_Bony_v1_0_5:Bony_lThumbJ3C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[167]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ1C.scaleX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[168]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ1C.scaleY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[169]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ1C.scaleZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[170]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ1C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[171]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ1C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[172]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ1CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ1C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[173]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ2CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ2C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[174]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ2CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ2C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[175]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ2CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ2C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[176]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ3CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ3C.rotateZ" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[177]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ3CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ3C.rotateX" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[178]" ""
		5 4 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Main_CNT|Ultimate_Bony_v1_0_5:Bony_rWristJG2|Ultimate_Bony_v1_0_5:Bony_rWristJG1|Ultimate_Bony_v1_0_5:Bony_rThumbJ3CG|Ultimate_Bony_v1_0_5:Bony_rThumbJ3C.rotateY" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[179]" ""
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_spine1|Ultimate_Bony_v1_0_5:Bony_spineShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[180]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_spine2|Ultimate_Bony_v1_0_5:Bony_spine2Shape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[181]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_chest|Ultimate_Bony_v1_0_5:Bony_chestShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[182]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_neck|Ultimate_Bony_v1_0_5:Bony_neckShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[183]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_body_Grp|Ultimate_Bony_v1_0_5:Bony_head|Ultimate_Bony_v1_0_5:Bony_headShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[184]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_foot|Ultimate_Bony_v1_0_5:Bony_L_footShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[185]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_toe|Ultimate_Bony_v1_0_5:Bony_L_toeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[186]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_ankle|Ultimate_Bony_v1_0_5:Bony_L_ankleShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[187]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_knee|Ultimate_Bony_v1_0_5:Bony_L_kneeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[188]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_but|Ultimate_Bony_v1_0_5:Bony_L_butShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[189]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg_Grp|Ultimate_Bony_v1_0_5:Bony_L_leg|Ultimate_Bony_v1_0_5:Bony_L_legShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[190]" ""
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_shoulder|Ultimate_Bony_v1_0_5:Bony_L_shoulderShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[191]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_elbow|Ultimate_Bony_v1_0_5:Bony_L_elbowShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[192]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_wrist|Ultimate_Bony_v1_0_5:Bony_L_wristShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[193]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_hand|Ultimate_Bony_v1_0_5:Bony_L_handShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[194]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_thumb3|Ultimate_Bony_v1_0_5:Bony_L_thumbShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[195]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_thumb2|Ultimate_Bony_v1_0_5:Bony_L_thumbShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[196]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_thumb1|Ultimate_Bony_v1_0_5:Bony_L_thumbShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[197]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_index1|Ultimate_Bony_v1_0_5:Bony_L_indexShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[198]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_index2|Ultimate_Bony_v1_0_5:Bony_L_indexShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[199]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_index3|Ultimate_Bony_v1_0_5:Bony_L_indexShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[200]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_pinky3|Ultimate_Bony_v1_0_5:Bony_L_pinkyShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[201]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_pinky2|Ultimate_Bony_v1_0_5:Bony_L_pinkyShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[202]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_pinky1|Ultimate_Bony_v1_0_5:Bony_L_pinkyShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[203]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__L_arm_Grp|Ultimate_Bony_v1_0_5:Bony_L_arm|Ultimate_Bony_v1_0_5:Bony_L_armShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[204]" ""
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_pelvis|Ultimate_Bony_v1_0_5:Bony_pelvisShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[205]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_foot|Ultimate_Bony_v1_0_5:Bony_R_footShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[206]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_toe|Ultimate_Bony_v1_0_5:Bony_R_toeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[207]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_ankle|Ultimate_Bony_v1_0_5:Bony_R_ankleShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[208]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_knee|Ultimate_Bony_v1_0_5:Bony_R_kneeShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[209]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_but|Ultimate_Bony_v1_0_5:Bony_R_butShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[210]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg_Grp|Ultimate_Bony_v1_0_5:Bony_R_leg|Ultimate_Bony_v1_0_5:Bony_R_legShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[211]" ""
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_shoulder|Ultimate_Bony_v1_0_5:Bony_R_shoulderShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[212]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_elbow|Ultimate_Bony_v1_0_5:Bony_R_elbowShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[213]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_wrist|Ultimate_Bony_v1_0_5:Bony_R_wristShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[214]" "Ultimate_Bony_v1_0_5:char_body_blinn5SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_hand|Ultimate_Bony_v1_0_5:Bony_R_handShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[215]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_thumb3|Ultimate_Bony_v1_0_5:Bony_R_thumbShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[216]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_thumb2|Ultimate_Bony_v1_0_5:Bony_R_thumbShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[217]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_thumb1|Ultimate_Bony_v1_0_5:Bony_R_thumbShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[218]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_index1|Ultimate_Bony_v1_0_5:Bony_R_indexShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[219]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_index2|Ultimate_Bony_v1_0_5:Bony_R_indexShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[220]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_index3|Ultimate_Bony_v1_0_5:Bony_R_indexShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[221]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_pinky3|Ultimate_Bony_v1_0_5:Bony_R_pinkyShape3.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[222]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_pinky2|Ultimate_Bony_v1_0_5:Bony_R_pinkyShape2.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[223]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_pinky1|Ultimate_Bony_v1_0_5:Bony_R_pinkyShape1.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[224]" "Ultimate_Bony_v1_0_5:char_body_blinn1SG.dsm"
		
		5 3 "Ultimate_Bony_v1_0_5RN" "|Ultimate_Bony_v1_0_5:Bony|Ultimate_Bony_v1_0_5:Bony_Mesh_Grp|Ultimate_Bony_v1_0_5:Bony__R_arm_Grp|Ultimate_Bony_v1_0_5:Bony_R_arm|Ultimate_Bony_v1_0_5:Bony_R_armShape.instObjGroups" 
		"Ultimate_Bony_v1_0_5RN.placeHolderList[225]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "pCube4_translateX";
	rename -uid "62CD6BAA-4642-03D9-C263-828935835B6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 -0.054457235898360157 39 -0.054457235898360157
		 42 -0.054457235898360157 45 -0.054457235898360157 48 -0.054457235898360157 52 -0.054457235898360157
		 55 -0.054457235898360157 58 -0.054457235898360157 76 -0.054457235898360157 79 -0.054457235898360157
		 81 -0.054457235898360157 84 -0.054457235898360157 140 -0.054457235898360157 143 -0.054457235898360157
		 146 -0.054457235898360157 149 -0.054457235898360157 152 -0.0029705442407235161 155 -0.0029705442407235161
		 158 -0.0029705442407235161 161 -0.0029705442407235161 164 -0.0029705442407235161
		 167 -0.0029705442407235161 169 -0.0029705442407235161 172 -0.0029705442407235161;
createNode animCurveTL -n "pCube4_translateY";
	rename -uid "52C82F23-46C1-9135-5552-2BA3194F25EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 3.666399242000443 39 3.666399242000443
		 42 3.666399242000443 45 3.666399242000443 48 3.666399242000443 52 3.666399242000443
		 55 3.666399242000443 58 3.666399242000443 76 3.666399242000443 79 3.666399242000443
		 81 3.666399242000443 84 3.666399242000443 140 3.666399242000443 143 3.7327389033283573
		 146 3.0046760634635694 149 0.68478345744968028 152 0.16044369085180121 155 -0.22835511329341263
		 158 -2.310880985620718 161 -4.7821305477300236 164 -7.5658077902057297 167 -10.573522386806921
		 169 -12.083933457823287 172 -19.073411107654884;
createNode animCurveTL -n "pCube4_translateZ";
	rename -uid "92AF129D-441C-73CC-F63D-B7ACB7E7DFA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 -5.4320777693593696 39 -5.4320777693593696
		 42 -4.918928984650524 45 -4.4085632154185532 48 -4.0655625195434819 52 -3.6742898799575183
		 55 -2.9724794278513302 58 -2.8122860184968812 76 -2.8122860184968812 79 -2.1984954890319153
		 81 -1.7949608550174225 84 -1.2366191495941128 140 -1.2366191495941128 143 2.7133970083264942
		 146 6.6210162410814339 149 12.181316552430086 152 12.016330601351603 155 12.016330601351603
		 158 12.016330601351603 161 12.016330601351603 164 12.016330601351603 167 12.016330601351603
		 169 12.016330601351603 172 15.232260910963495;
createNode animCurveTU -n "pCube4_visibility";
	rename -uid "8DC17B5A-4D30-B928-A008-969F153659BC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 1 39 1 42 1 45 1 48 1 52 1 55 1 58 1 76 1
		 79 1 81 1 84 1 140 1 143 1 146 1 149 1 152 1 155 1 158 1 161 1 164 1 167 1 169 1
		 172 1;
	setAttr -s 24 ".kot[0:23]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "pCube4_rotateX";
	rename -uid "C6B9D6D5-464B-0FBE-874B-278EFC805D6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 76 0
		 79 0 81 0 84 0 140 0 143 4.770044025989554 146 11.450235334022993 149 19.07432563491157
		 152 19.07432563491157 155 5.1422027391292149 158 -8.9990969831218077 161 -30.691067293556866
		 164 -60.422405235437708 167 -87.837601049009308 169 -111.40535192946695 172 -124.90283856097605;
createNode animCurveTA -n "pCube4_rotateY";
	rename -uid "1824E466-4FE0-E8E5-5396-15930217A45C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 76 0
		 79 0 81 0 84 0 140 0 143 0 146 0 149 0 152 0 155 0 158 0 161 0 164 0 167 0 169 0
		 172 0;
createNode animCurveTA -n "pCube4_rotateZ";
	rename -uid "0358EFD4-4628-08F5-4838-D8894C60A531";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 76 0
		 79 0 81 0 84 0 140 0 143 0 146 0 149 0 152 0 155 0 158 0 161 0 164 0 167 0 169 0
		 172 0;
createNode animCurveTU -n "pCube4_scaleX";
	rename -uid "E6964469-47B5-750E-B418-B8BB451BA427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 6.5511687864282218 39 6.5511687864282218
		 42 6.5511687864282218 45 6.5511687864282218 48 6.5511687864282218 52 6.5511687864282218
		 55 6.5511687864282218 58 6.5511687864282218 76 6.5511687864282218 79 6.5511687864282218
		 81 6.5511687864282218 84 6.5511687864282218 140 6.5511687864282218 143 6.5511687864282218
		 146 6.5511687864282218 149 6.5511687864282218 152 6.5511687864282218 155 6.5511687864282218
		 158 6.5511687864282218 161 6.5511687864282218 164 6.5511687864282218 167 6.5511687864282218
		 169 6.5511687864282218 172 6.5511687864282218;
createNode animCurveTU -n "pCube4_scaleY";
	rename -uid "906613F7-470C-D8AF-A056-EB94BF314DA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 6.5511687864282218 39 6.5511687864282218
		 42 6.5511687864282218 45 6.5511687864282218 48 6.5511687864282218 52 6.5511687864282218
		 55 6.5511687864282218 58 6.5511687864282218 76 6.5511687864282218 79 6.5511687864282218
		 81 6.5511687864282218 84 6.5511687864282218 140 6.5511687864282218 143 6.5511687864282218
		 146 6.5511687864282218 149 6.5511687864282218 152 6.5511687864282218 155 6.5511687864282218
		 158 6.5511687864282218 161 6.5511687864282218 164 6.5511687864282218 167 6.5511687864282218
		 169 6.5511687864282218 172 6.5511687864282218;
createNode animCurveTU -n "pCube4_scaleZ";
	rename -uid "1A7510F0-47F6-7293-B877-87B1D63A9E7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 6.5511687864282218 39 6.5511687864282218
		 42 6.5511687864282218 45 6.5511687864282218 48 6.5511687864282218 52 6.5511687864282218
		 55 6.5511687864282218 58 6.5511687864282218 76 6.5511687864282218 79 6.5511687864282218
		 81 6.5511687864282218 84 6.5511687864282218 140 6.5511687864282218 143 6.5511687864282218
		 146 6.5511687864282218 149 6.5511687864282218 152 6.5511687864282218 155 6.5511687864282218
		 158 6.5511687864282218 161 6.5511687864282218 164 6.5511687864282218 167 6.5511687864282218
		 169 6.5511687864282218 172 6.5511687864282218;
createNode standardSurface -n "standardSurface2";
	rename -uid "B6348288-413F-B3CA-961E-A49F1EEE827F";
	setAttr ".bc" -type "float3" 1 0 0.1548 ;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "BD6AA779-498C-0A07-D68B-A7BA26F46BFE";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr -s 46 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "diffuse";
	setAttr ".aovs[1].aov_name" -type "string" "shadow";
	setAttr ".aovs[2].aov_name" -type "string" "specular";
	setAttr ".aovs[3].aov_name" -type "string" "transmission";
	setAttr ".aovs[4].aov_name" -type "string" "shadow_diff";
	setAttr ".aovs[5].aov_name" -type "string" "shadow_mask";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_diffuse","aiCustomAOVs[0]","ai_aov_shadow"
		,"aiCustomAOVs[1]","ai_aov_specular","aiCustomAOVs[2]","ai_aov_transmission","aiCustomAOVs[3]"
		,"ai_aov_shadow_diff","aiCustomAOVs[4].aovName","ai_aov_shadow_mask","aiCustomAOVs[5].aovName"
		} ;
createNode materialInfo -n "materialInfo3";
	rename -uid "069B1CD9-4D9C-9B0F-A285-B9A959230DA2";
createNode animCurveTL -n "Bony_rFootIKC_translateX";
	rename -uid "34FD205B-48EC-6EC2-9A21-F49386A1636E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 1.2741414558202577
		 70 1.2741414558202577 73 1.2741414558202577 76 1.2741414558202577 79 1.2741414558202577
		 81 1.2741414558202577 84 1.2741414558202577 87 1.2741414558202577 96 1.2741414558202577
		 99 1.2741414558202577 102 1.2741414558202577 105 0.42933632632965357 108 0.42933632632965357
		 110 0.42933632632965357 112 0.077354965424427824 115 0.077354965424427824 118 0.077354965424427824
		 120 -0.26805469990735481 123 -0.26805469990735481 128 -0.26805469990735481 131 -0.26805469990735481
		 133 -0.26805469990735481 138 -0.26805469990735481 143 -0.26805469990735481 146 -0.26805469990735481
		 148 -0.26805469990735481 149 -0.26805469990735481 152 -0.26805469990735481 155 -0.26805469990735481;
createNode animCurveTL -n "Bony_rFootIKC_translateY";
	rename -uid "1A6FF1F0-4732-7466-EFAD-98A982821FEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 -0.91391415792398922 6 -0.029608696242563379
		 9 -0.029608696242563386 12 -0.029608696242563647 15 -0.029608696242563758 18 -0.53127265102211796
		 21 -1.0997616853726417 24 -1.1799309572925574 27 -0.82072597309314377 30 0.059603775264245415
		 33 0.059603775264245526 36 0.059603775264245526 39 0.059603775264245526 42 0.059603775264245526
		 45 0.059603775264245415 48 -0.75095675607220436 52 0.016844536386033782 55 0.016844536386033893
		 58 0.016844536386033893 61 -0.72145293945424394 64 -0.976387883159481 67 -0.27319095018368833
		 70 -0.27319095018368833 73 -0.27319095018368833 76 -0.27319095018368833 79 -0.27319095018368822
		 81 -0.27319095018368833 84 0.079718711706376566 87 0.079718711706376566 96 0.079718711706376566
		 99 0.079718711706376566 102 0.079718711706376566 105 0.014108675843620744 108 0.014108675843620744
		 110 0.014108675843620744 112 0.014108675843620744 115 -0.26234851804463055 118 -0.022236283194608686
		 120 -0.022236283194608686 123 -0.022236283194608807 128 -0.022236283194608807 131 -0.022236283194609019
		 133 -0.022236283194608977 138 -0.022236283194608981 143 -0.022236283194608981 146 -0.022236283194608981
		 148 -0.36721864969983303 149 -0.64689873503059414 152 -0.29226913622463102 155 0.053392481148008875;
createNode animCurveTL -n "Bony_rFootIKC_translateZ";
	rename -uid "4E302692-4D01-09FF-D34E-D3A53125F7C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 -3.4232650224799848 6 -3.7540892322525252
		 9 -3.2454522060189284 12 -1.9701627377438662 15 -1.6714893372782633 18 -2.0476453352478643
		 21 -2.5350395198483113 24 -5.6328481650043081 27 -10.347872663484813 30 -10.523849690554679
		 33 -10.386528435557976 36 -10.386528435557976 39 -9.8117613067523539 42 -9.2323654039761216
		 45 -8.7620549833399846 48 -10.260810337377704 52 -12.192002568367988 55 -11.898363695416474
		 58 -11.898363695416474 61 -11.898363695416474 64 -13.582690948059687 67 -14.962410472726374
		 70 -14.962410472726374 73 -14.962410472726374 76 -14.962410472726374 79 -14.602356648664349
		 81 -14.274994717877304 84 -13.530635838579604 87 -13.530635838579604 96 -13.530635838579604
		 99 -13.530635838579604 102 -13.530635838579604 105 -12.572677345926786 108 -12.572677345926786
		 110 -12.572677345926786 112 -12.572677345926786 115 -11.308600777882349 118 -10.737577731130258
		 120 -10.737577731130258 123 -9.9742940642583342 128 -9.9742940642583342 131 -8.9069447128374239
		 133 -8.9272482791577055 138 -8.5866672546120348 143 -8.5866672546120348 146 -8.5866672546120348
		 148 -10.356896472460503 149 -11.833978642445622 152 -13.361581883436804 155 -13.361581883436804;
createNode animCurveTA -n "Bony_rFootIKC_rotateX";
	rename -uid "4AF88E10-457D-4E27-5DC9-D884229BE4C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 -34.682135096259636 6 -2.3189494234848094
		 9 -2.3189494234848094 12 -2.3189494234848094 15 -2.3189494234848094 18 28.705131014993253
		 21 62.057916490524413 24 62.057916490524413 27 -41.695171130839725 30 -4.6037409709549877
		 33 -4.6037409709549877 36 -4.6037409709549877 39 -4.6037409709549877 42 -4.6037409709549877
		 45 -4.6037409709549877 48 56.455951247200147 52 1.0974142946951322 55 1.0974142946951322
		 58 9.8534343451587532 61 71.268667938992763 64 5.8005613066617752 67 -1.9107354086975772
		 70 -1.9107354086975807 73 -1.9107354086975861 76 -1.9107354086975883 79 -1.9107354086975883
		 81 -1.9107354086975883 84 2.0104300615500263 87 2.0104300615500263 96 2.0104300615500263
		 99 2.0104300615500263 102 2.0104300615500357 105 2.0104300615500699 108 2.0104300615500699
		 110 2.0104300615500699 112 2.0104300615500699 115 2.0104300615500699 118 2.0104300615500699
		 120 2.0104300615500712 123 2.0104300615500712 128 2.0104300615500712 131 2.0104300615500712
		 133 2.0104300615500712 138 2.0104300615500712 143 2.0104300615500712 146 2.0104300615500712
		 148 2.0104300615500712 149 2.0104300615500712 152 2.0104300615500712 155 2.0104300615500712;
createNode animCurveTA -n "Bony_rFootIKC_rotateY";
	rename -uid "9C6D4E51-4BCA-AA2F-B28A-30926381C650";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 -52.732679376488576
		 67 -76.250628912618808 70 -108.60754702483977 73 -135.91752216500811 76 -184.67398689394395
		 79 -184.67398689394395 81 -184.67398689394395 84 -184.63578755076395 87 -184.63578755076395
		 96 -184.63578755076395 99 -184.63578755076395 102 -216.19785613358488 105 -347.42863795779027
		 108 -347.42863795779027 110 -347.42863795779027 112 -347.42863795779027 115 -347.42863795779027
		 118 -347.42863795779027 120 -354.57452357554416 123 -354.57452357554416 128 -354.57452357554416
		 131 -354.57452357554416 133 -354.57452357554416 138 -354.57452357554416 143 -354.57452357554416
		 146 -354.57452357554416 148 -354.57452357554416 149 -354.57452357554416 152 -354.57452357554416
		 155 -354.57452357554416;
createNode animCurveTA -n "Bony_rFootIKC_rotateZ";
	rename -uid "47EEE643-4CD4-EBA1-C50B-669C016756B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 36.856885698110155
		 67 0.39826459301832512 70 0.39826459301832873 73 0.39826459301833272 76 0.39826459301833389
		 79 0.39826459301833389 81 0.39826459301833389 84 0.7176449558635819 87 0.7176449558635819
		 96 0.7176449558635819 99 0.7176449558635819 102 0.7176449558635799 105 0.71764495586356225
		 108 0.71764495586356225 110 0.71764495586356225 112 0.71764495586356225 115 0.71764495586356225
		 118 0.71764495586356225 120 0.71764495586356214 123 0.71764495586356214 128 0.71764495586356214
		 131 0.71764495586356214 133 0.71764495586356214 138 0.71764495586356214 143 0.71764495586356214
		 146 0.71764495586356214 148 0.71764495586356214 149 0.71764495586356214 152 0.71764495586356214
		 155 0.71764495586356214;
createNode animCurveTU -n "Bony_rFootIKC_Stretch";
	rename -uid "86CAF8F8-4304-925E-9A31-7596A374FF04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 115 0 118 0 120 0 123 0
		 128 0 131 0 133 0 138 0 143 0 146 0 148 0 149 0 152 0 155 0;
createNode animCurveTU -n "Bony_rFootIKC_KneeLock";
	rename -uid "43B8EA4D-45E0-AC89-5AAB-109895786C56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 115 0 118 0 120 0 123 0
		 128 0 131 0 133 0 138 0 143 0 146 0 148 0 149 0 152 0 155 0;
createNode animCurveTU -n "Bony_rFootIKC_footTilt";
	rename -uid "ACD67FF1-4CA6-51BF-E9F2-E29465F89304";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 115 0 118 0 120 0 123 0
		 128 0 131 0 133 0 138 0 143 0 146 0 148 0 149 0 152 0 155 0;
createNode animCurveTU -n "Bony_rFootIKC_heelBall";
	rename -uid "DFBD1931-4523-6675-7055-2D8A0F7DBE70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 1.6428571411275446 15 3.928571425245277
		 18 3.1428571476468026 21 0 24 0 27 0 30 0 33 0 36 0 39 3.928571425245277 42 6.3571428625977475
		 45 8.0000000037252903 48 0 52 0 55 2.2857142841177325 58 5.5714285663728198 61 0
		 64 0 67 0 70 0 73 0 76 0 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0
		 115 0 118 0 120 0 123 0 128 0 131 4.2857142803924422 133 7.7857142831864117 138 7.7857142831864117
		 143 7.7857142831864117 146 7.7857142831864117 148 -0.14285713460828653 149 -0.14285713460828653
		 152 -0.14285713460828653 155 -0.14285713460828653;
createNode animCurveTU -n "Bony_rFootIKC_toeUpDn";
	rename -uid "4C5F53BF-421C-8F43-3662-B08EE33E5B3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 1.500000006519258 6 -0.14285713460828653
		 9 -0.14285713460828653 12 -0.14285713460828653 15 -0.14285713460828653 18 -0.71428571029433208
		 21 -3.571428570098111 24 -4.6428571355396082 27 1.2857142859803776 30 -0.71428571029433208
		 33 -0.71428571029433208 36 -0.71428571029433208 39 -0.71428571029433208 42 -0.71428571029433208
		 45 -0.71428571029433208 48 -4.7857142887743453 52 1.7857142943622808 55 1.7857142943622808
		 58 1.7857142943622808 61 -2.5000000046566129 64 -2.5000000046566129 67 0 70 0 73 0
		 76 0 79 -0.6428571429901897 81 -3.1428571476468017 84 0 87 0 96 0 99 0 102 0 105 0
		 108 0 110 0 112 0 115 -1.9285714289705673 118 0 120 0 123 0 128 0 131 0 133 0 138 0
		 143 0 146 0 148 -2.6428571392648985 149 -2.6428571392648985 152 0.85714286352906832
		 155 0;
createNode animCurveTU -n "Bony_rFootIKC_ballSwivel";
	rename -uid "C07D801D-4BE2-70C3-6A03-609707348C60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 115 0 118 0 120 0 123 0
		 128 0 131 0 133 0 138 0 143 0 146 0 148 0 149 0 152 0 155 0;
createNode aiAOVDriver -n "aiAOVDriver5";
	rename -uid "0F8CE0CA-44BE-7F79-5E90-B0A4B04B4A6C";
	setAttr ".ai_translator" -type "string" "jpeg";
createNode animCurveTL -n "Bony_ROOTC_translateX";
	rename -uid "D56F099E-46C8-9206-09DE-09B9E299B010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 0 1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0
		 24 0 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 64 0 67 0 70 0 73 0 76 0 79 0
		 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 108 0 110 0 113 0 115 0 122 0 128 0
		 131 0 133 0 138 0 140 0 143 0 146 0 148 0 151 0 153 0 156 0 158 0 164 0 166 0;
createNode animCurveTL -n "Bony_ROOTC_translateY";
	rename -uid "C5DDDFAD-4DC3-419A-6950-77BE06C64B54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 -0.11758599931570402 1 -0.59314705403532209
		 3 -0.59314705403532209 6 -0.90333300645550629 9 -0.37019998755293226 12 -0.1305765879327514
		 15 -0.68721868400802499 18 -0.96169872869653972 21 -0.78915394568197605 24 -0.027999128940675355
		 27 -0.72168867124160663 30 -1.1355466577044497 33 -0.65523520746007424 36 -0.65523520746007424
		 39 -1.1368979633634275 42 -1.1368979633634275 45 -1.5919237261913728 48 -1.5919237261913728
		 52 -1.5919237261913728 55 -1.5919237261913728 64 -1.5919237261913728 67 -1.5919237261913728
		 70 -1.5919237261913728 73 -1.5919237261913728 76 -1.5919237261913728 79 -1.5919237261913728
		 81 -1.5919237261913728 84 -2.0593244093957166 87 -1.8296280572608596 90 -1.5999317051260027
		 93 -1.5999317051260027 96 -0.23377149226223981 99 -0.23377149226223981 102 -0.23377149226223981
		 105 -0.23377149226223981 108 -0.23377149226223981 110 -0.23377149226223981 113 -0.23377149226223981
		 115 -0.23377149226223981 122 -0.23377149226223981 128 -0.91220709148150991 131 -2.0745080178216093
		 133 -2.4035420104120986 138 -2.4923869123027154 140 -2.7059138064405248 143 -2.1084344400291894
		 146 -0.71963236148309928 148 -0.34871037698209495 151 -0.34871037698209495 153 -0.34871037698209495
		 156 -0.34871037698209495 158 -0.34871037698209495 164 -0.34871037698209495 166 -0.34871037698209495;
createNode animCurveTL -n "Bony_ROOTC_translateZ";
	rename -uid "FE24C785-4B37-7455-F88F-C58BB14E848F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 0.51036524420834439 1 1.4570541742204419
		 3 1.4570541742204419 6 2.0310664842708057 9 2.3984704562850148 12 3.2329513775153549
		 15 4.1551102894515139 18 4.7478289860482015 21 5.3217548341111289 24 6.3539590688917791
		 27 7.2599674222700727 30 8.5257729373825377 33 10.026358717636938 36 10.655054733461663
		 39 11.600803324929528 42 11.877969473681381 45 12.519566753319083 48 12.784819967459095
		 52 13.136990317906815 55 13.862293540461962 64 13.862293540461962 67 13.862293540461962
		 70 13.862293540461962 73 15.712849922110651 76 15.712849922110651 79 16.085990773637754
		 81 16.571129329888414 84 16.653041761413206 87 16.601206798369212 90 15.966338936265075
		 93 13.625796374775783 96 12.891209133255863 99 12.891209133255863 102 12.891209133255863
		 105 13.703507422055138 108 12.664001770455648 110 12.165415638491421 113 12.017255681888948
		 115 11.388371229468603 122 10.953605262676612 128 10.953605262676612 131 10.953605262676612
		 133 11.716559910214929 138 11.787196289876913 140 11.87094522032303 143 11.87094522032303
		 146 11.991314628811798 148 11.991314628811798 151 11.991314628811798 153 12.243560305287033
		 156 12.736662786453085 158 12.708455395214644 164 12.708455395214644 166 13.611895267937211;
createNode animCurveTA -n "Bony_ROOTC_rotateX";
	rename -uid "7D527FE3-4CEF-317E-E1AF-A48BD1DBF87D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 0 1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0
		 24 0 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 64 0 67 0 70 0 73 0 76 0 79 0
		 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 108 0 110 0 113 0 115 0 122 0 128 0
		 131 0 133 0 138 0 140 0 143 0 146 0 148 0 151 0 153 0 156 0 158 -8.3072566648900281
		 164 -8.3072566648900281 166 -8.3072566648900281;
createNode animCurveTA -n "Bony_ROOTC_rotateY";
	rename -uid "C6C75194-455F-4330-751C-3EB950DBEC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 0 1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0
		 24 0 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 64 34.444048546600889 67 95.064255352935305
		 70 142.98877897307435 73 156.81462614762106 76 173.86050831787304 79 173.86050831787304
		 81 173.86050831787304 84 173.86050831787304 87 173.86050831787304 90 173.86050831787304
		 93 173.86050831787304 96 173.86050831787304 99 220.83395672437291 102 269.51035112407317
		 105 332.60364417141028 108 332.60364417141028 110 332.60364417141028 113 332.60364417141028
		 115 332.60364417141028 122 332.60364417141028 128 332.60364417141028 131 332.60364417141028
		 133 332.60364417141028 138 332.60364417141028 140 332.60364417141028 143 332.60364417141028
		 146 332.60364417141028 148 332.60364417141028 151 332.60364417141028 153 332.60364417141028
		 156 332.60364417141028 158 332.60364417141028 164 332.60364417141028 166 332.60364417141028;
createNode animCurveTA -n "Bony_ROOTC_rotateZ";
	rename -uid "E8D4AC2E-4075-D574-0A3A-E791C0A45199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 0 1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0
		 24 0 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 64 0 67 0 70 0 73 0 76 0 79 0
		 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 108 0 110 0 113 0 115 0 122 0 128 0
		 131 0 133 0 138 0 140 0 143 0 146 0 148 0 151 0 153 0 156 0 158 0 164 0 166 0;
createNode animCurveTL -n "Bony_lFootIKC_translateX";
	rename -uid "29081113-4C60-2FCF-7F07-298E523AEA43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0.49715781603369974 61 1.1775433511975257
		 64 1.1775433511975257 67 1.1775433511975257 70 -0.12159896850791352 73 -0.82096656535406298
		 76 -0.82096656535406298 79 -0.82096656535406298 81 -0.82096656535406298 84 -0.82096656535406298
		 87 -0.82096656535406298 96 -0.82096656535406298 99 -0.82096656535406298 102 -0.82096656535406298
		 105 -0.62213756045486956 108 -0.1577951404421431 110 -0.1577951404421431 112 -0.1577951404421431
		 113 -0.1577951404421431 118 -0.1577951404421431 120 -0.1577951404421431 122 -0.1577951404421431
		 124 -0.1577951404421431 127 -0.1577951404421431 138 -0.1577951404421431 150 -0.1577951404421431
		 153 -0.1577951404421431 156 -0.1577951404421431 159 -0.1577951404421431 162 -0.1577951404421431
		 164 -0.1577951404421431 167 -0.1577951404421431;
createNode animCurveTL -n "Bony_lFootIKC_translateY";
	rename -uid "BDA87C94-41A8-D29D-A476-4897E39F96C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 -0.022131651660017626 9 1.1299422665619143
		 12 1.1795789108665551 15 0.68740241421734116 18 -0.078672298993719525 21 -0.078672298993719525
		 24 -0.078672298993719525 27 -0.078672298993719525 30 -0.078672298993719525 33 1.0938354478982966
		 36 1.0938354478982966 39 0.11266717754171196 42 0.11266717754171196 45 0.11266717754171196
		 48 0.11266717754171196 52 0.8586426905068284 55 0.63207366377631147 58 0.25647466778503347
		 61 0.25647466778503347 64 0.25647466778503347 67 -0.060335969882319485 70 0.24301296765242109
		 73 -0.030663905717466355 76 -0.030663905717466355 79 0.35261355634910674 81 0.25816011353607682
		 84 0.25816011353607682 87 -0.014625638681184272 96 -0.027340944943631151 99 0.4372129047319594
		 102 0.64508224869570985 105 0.36043579707053264 108 0.66037086511023502 110 0.9456634733402437
		 112 -0.025105031648930853 113 -0.02792219739705859 118 -0.02792219739705859 120 0.24351605146854927
		 122 -0.034454325229357541 124 -0.034454325229357541 127 -0.025619624262746443 138 -0.025619624262746443
		 150 -0.025619624262746443 153 -0.025619624262746443 156 -0.025619624262746443 159 0.60228096056659775
		 162 0.96831675734443889 164 0.96831675734443889 167 -0.08195916291978067;
createNode animCurveTL -n "Bony_lFootIKC_translateZ";
	rename -uid "36436C15-49F5-34DB-E7F9-298FD64E6888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 -0.45166853652042249 6 -0.69041088921833094
		 9 -0.4504613018596153 12 2.5855024963703563 15 5.9682013341887696 18 6.6914343689038294
		 21 6.3970496528703134 24 6.2133163300029342 27 5.7182138457054226 30 5.3528352032291817
		 33 7.1689757520387243 36 10.670632072908923 39 12.434357521963616 42 10.980151733837255
		 45 9.5516629581111197 48 8.7117338067727328 52 10.598490308756853 55 14.259373686198829
		 58 14.637546940589299 61 14.637546940589299 64 14.637546940589299 67 13.419145412344882
		 70 13.419145412344882 73 13.419145412344882 76 13.007101998789064 79 13.446843024833225
		 81 15.344360105940567 84 14.045550049686405 87 13.459017537529503 96 13.459017537529503
		 99 13.459017537529503 102 13.788928660778366 105 14.456367539225571 108 14.456367539225571
		 110 12.760636645877842 112 12.218010668637801 113 12.165541159393701 118 12.165541159393701
		 120 10.813118229573078 122 10.813118229573078 124 10.813118229573078 127 10.813118229573078
		 138 10.813118229573078 150 10.813118229573078 153 10.813118229573078 156 10.813118229573078
		 159 11.16331177058469 162 12.215822185582446 164 13.570861456460099 167 13.570861456460099;
createNode animCurveTA -n "Bony_lFootIKC_rotateX";
	rename -uid "1BA3C358-4287-81C1-248E-41805FC60A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 42.27233812682605 12 42.27233812682605
		 15 -26.640872402353626 18 -7.6268603329682385 21 -7.6268603329682385 24 -7.6268603329682385
		 27 -7.6268603329682385 30 -7.6268603329682385 33 74.842191868644676 36 49.821293415343391
		 39 -5.209058329344785 42 -5.209058329344785 45 -5.209058329344785 48 -5.209058329344785
		 52 53.57480171285615 55 -27.416245580340178 58 3.8427382568162507 61 3.8427382568161912
		 64 3.8427382568161477 67 3.8427382568161361 70 3.8427382568161357 73 -0.83956168411381782
		 76 -0.83956168411381782 79 -0.83956168411381782 81 -0.83956168411381782 84 -0.83956168411381782
		 87 -0.83956168411381782 96 -0.83956168411381749 99 -0.83956168411381782 102 -0.83956168411381993
		 105 -0.83956168411382071 108 -0.83956168411382126 110 -0.83956168411382126 112 -0.83956168411382126
		 113 -0.83956168411382126 118 -0.83956168411382126 120 -0.83956168411382126 122 -0.83956168411382126
		 124 -0.83956168411382126 127 -0.83956168411382126 138 -0.83956168411382126 150 -0.83956168411382126
		 153 -0.83956168411382126 156 -0.83956168411382126 159 34.579521158496895 162 34.579521158496895
		 164 -4.989039787794094 167 -4.989039787794094;
createNode animCurveTA -n "Bony_lFootIKC_rotateY";
	rename -uid "CBE8C100-4483-9F83-F7B8-9B9F1B0C3604";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 14.594184639014854 58 33.287536804375421
		 61 93.619348924079887 64 118.52861679576161 67 153.12244431010024 70 175.2956020279828
		 73 175.10140902684651 76 175.10140902684651 79 175.10140902684651 81 175.10140902684651
		 84 175.10140902684651 87 175.10140902684651 96 193.07016145470246 99 222.98131632435155
		 102 313.58488549305196 105 338.78930702893814 108 356.63749821965285 110 356.63749821965285
		 112 356.63749821965285 113 356.63749821965285 118 356.63749821965285 120 356.63749821965285
		 122 356.63749821965285 124 356.63749821965285 127 356.63749821965285 138 356.63749821965285
		 150 356.63749821965285 153 356.63749821965285 156 356.63749821965285 159 358.52157263132034
		 162 358.52157263132034 164 356.48867724804012 167 356.48867724804012;
createNode animCurveTA -n "Bony_lFootIKC_rotateZ";
	rename -uid "2C4A58A5-4EDE-1D3A-4574-27AC3A3E0D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 -7.9513867036587919e-16 58 2.5722169381603601
		 61 2.572216938160389 64 2.572216938160417 67 2.5722169381604374 70 2.5722169381604449
		 73 2.1790286413618203 76 2.1790286413618203 79 2.1790286413618203 81 2.1790286413618203
		 84 2.1790286413618203 87 2.1790286413618203 96 2.1790286413618203 99 2.1790286413618238
		 102 2.1790286413618269 105 2.1790286413618278 108 2.1790286413618278 110 2.1790286413618278
		 112 2.1790286413618278 113 2.1790286413618278 118 2.1790286413618278 120 2.1790286413618278
		 122 2.1790286413618278 124 2.1790286413618278 127 2.1790286413618278 138 2.1790286413618278
		 150 2.1790286413618278 153 2.1790286413618278 156 2.1790286413618278 159 3.7237698893443452
		 162 3.7237698893443452 164 1.9298724977495225 167 1.9298724977495225;
createNode animCurveTU -n "Bony_lFootIKC_Stretch";
	rename -uid "9DEBF093-46D9-9FB0-1394-ECBC144E4450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 113 0 118 0 120 0 122 0
		 124 0 127 0 138 0 150 0 153 0 156 0 159 0 162 0 164 0 167 0;
createNode animCurveTU -n "Bony_lFootIKC_KneeLock";
	rename -uid "C8E936C1-4254-A34B-9574-88B6238F4F7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 113 0 118 0 120 0 122 0
		 124 0 127 0 138 0 150 0 153 0 156 0 159 0 162 0 164 0 167 0;
createNode animCurveTU -n "Bony_lFootIKC_footTilt";
	rename -uid "8DC1B04D-48C1-C14A-E694-1AA9D4986545";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 113 0 118 0 120 0 122 0
		 124 0 127 0 138 0 150 0 153 0 156 0 159 0 162 0 164 0 167 0;
createNode animCurveTU -n "Bony_lFootIKC_heelBall";
	rename -uid "83B898BF-4749-1D7A-5E67-7790CB54AC75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 1.500000006519258 6 4.6428571355396091
		 9 1.1428571513720929 12 1.1428571513720929 15 1.1428571513720929 18 1.1428571513720929
		 21 1.1428571513720929 24 1.1428571513720929 27 3.0714285803426584 30 6.8571428523531992
		 33 0.4285714224513093 36 0.4285714224513093 39 0.4285714224513093 42 6.2142857093630077
		 45 7.7142857158822657 48 8.7857142813237665 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0
		 76 0 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 113 0 118 0 120 0
		 122 0 124 0 127 0 138 0 150 1.500000006519258 153 3.3571428495592297 156 5.0714285766173681
		 159 0.50000000838190317 162 0.50000000838190317 164 0.50000000838190317 167 0.50000000838190317;
createNode animCurveTU -n "Bony_lFootIKC_toeUpDn";
	rename -uid "AF9C5BF3-4205-43C0-D279-4E8E9D93C0B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 -3.9285714252452761 12 -5.4999999990686774
		 15 0.78571427759847445 18 -0.99999999813735485 21 -0.99999999813735485 24 -0.99999999813735485
		 27 -0.99999999813735485 30 -0.99999999813735485 33 -4.5000000009313226 36 -4.5000000009313226
		 39 -0.6428571429901897 42 -0.6428571429901897 45 -0.6428571429901897 48 -0.6428571429901897
		 52 -3.6428571374022534 55 1.2142857186762352 58 -0.57142857568604555 61 -0.57142857568604555
		 64 -0.57142857568604555 67 -0.57142857568604555 70 -2.9285714271079213 73 0 76 0
		 79 -2.3571428514218757 81 0 84 0 87 0 96 0.4285714224513093 99 -2.9999999944120646
		 102 -2.9999999944120646 105 0 108 -1.500000006519258 110 -3.7857142906369905 112 -1.1402116461198495
		 113 -0.2142857205388804 118 -0.2142857205388804 120 -2.6428571392648985 122 0 124 0
		 127 0 138 0 150 0 153 0 156 0 159 -0.92857143083321247 162 -5.071428576617369 164 -1.500000006519258
		 167 0;
createNode animCurveTU -n "Bony_lFootIKC_ballSwivel";
	rename -uid "88FFFDA4-4437-5239-5D16-A1A82E90FFD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 52 0 55 0 58 0 61 0 64 0 67 0 70 0 73 0 76 0
		 79 0 81 0 84 0 87 0 96 0 99 0 102 0 105 0 108 0 110 0 112 0 113 0 118 0 120 0 122 0
		 124 0 127 0 138 0 150 0 153 0 156 0 159 0 162 0 164 0 167 0;
createNode aiAOV -n "aiAOV_shadow_diff";
	rename -uid "3DF1D05B-44D7-6696-47EF-B681AA416D46";
	setAttr ".aovn" -type "string" "shadow_diff";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_shadow_mask";
	rename -uid "F5A87FB6-4744-C51C-1B8D-1A8296C4E3EB";
	setAttr ".aovn" -type "string" "shadow_mask";
	setAttr ".aovt" 5;
createNode animCurveTA -n "Bony_rFinger1J1C_rotateX";
	rename -uid "7388AA77-42BF-57AD-27F7-FAB5A7812AC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 33 0 36 0 52 0 58 0 70 0 73 0 79 0 81 0
		 92 0 93 0 140 0 143 0;
createNode animCurveTA -n "Bony_rFinger1J1C_rotateY";
	rename -uid "1B0BF969-46DB-5F91-A2AF-9DAD9F38C000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 33 0 36 0 52 0 58 0 70 0 73 0 79 0 81 0
		 92 0 93 0 140 0 143 0;
createNode animCurveTA -n "Bony_rFinger1J1C_rotateZ";
	rename -uid "66527D82-45BE-701F-FE81-5DA67D643A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -77.250286378456352 33 -77.250286378456352
		 36 -2.7417311409583096 52 -2.7417311409583096 58 3.3254767327094759 70 3.3254767327094759
		 73 -19.6524118775156 79 5.9603947885744137 81 5.9603947885744137 92 5.9603947885744137
		 93 -21.28938750281738 140 -21.28938750281738 143 -51.300664309446034;
createNode animCurveTU -n "Bony_rFinger1J1C_scaleX";
	rename -uid "98381D8B-4DAB-FD71-439D-9298505563C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 33 1 36 1 52 1 58 1 70 1 73 1 79 1 81 1
		 92 1 93 1 140 1 143 1;
createNode animCurveTU -n "Bony_rFinger1J1C_scaleY";
	rename -uid "1FCEB25F-4B80-50EA-B7A7-37AB3B686336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 33 1 36 1 52 1 58 1 70 1 73 1 79 1 81 1
		 92 1 93 1 140 1 143 1;
createNode animCurveTU -n "Bony_rFinger1J1C_scaleZ";
	rename -uid "C534AAF9-4F29-6DAA-277B-7688992855BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 33 1 36 1 52 1 58 1 70 1 73 1 79 1 81 1
		 92 1 93 1 140 1 143 1;
createNode animCurveTA -n "Bony_rFinger2J2C_rotateX";
	rename -uid "C8449A41-4D66-B08E-DEA6-94852D672822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 33 0 36 0 52 0 70 0 73 0 79 0 81 0 92 0
		 93 0 140 0;
createNode animCurveTA -n "Bony_rFinger2J2C_rotateY";
	rename -uid "7CFB7F84-49F5-5172-B07C-2FAF9F9FE81F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 33 0 36 0 52 0 70 0 73 0 79 0 81 0 92 0
		 93 0 140 0;
createNode animCurveTA -n "Bony_rFinger2J2C_rotateZ";
	rename -uid "D02FD3E8-4012-E7EF-C93B-77AAD608024B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -52.488880318382506 33 -52.488880318382506
		 36 -11.648421791940411 52 -11.648421791940411 70 -11.648421791940411 73 -22.773769077359074
		 79 -6.9443126232121184 81 -6.9443126232121184 92 -6.9443126232121184 93 -30.41390094557012
		 140 -30.41390094557012;
createNode animCurveTA -n "Bony_rFinger2J3C_rotateX";
	rename -uid "38C59AAA-4AF6-EF62-60C5-978953B273B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_rFinger2J3C_rotateY";
	rename -uid "AE02BE4D-4D4B-AB3D-F852-2081C43AD5FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_rFinger2J3C_rotateZ";
	rename -uid "80C27868-40FA-F3EA-F934-8090AFC9E5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -51.703941644587786 33 -51.703941644587786
		 36 5.4829351198899259 52 5.4829351198899259 70 5.4829351198899259 73 -8.3737096882144062
		 81 -8.3737096882144062 92 -8.3737096882144062 140 -8.3737096882144062;
createNode animCurveTA -n "Bony_rFinger1J2C_rotateX";
	rename -uid "2A0F12FE-41F4-6281-442D-3BB4B640159A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 52 0 73 0 79 0 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_rFinger1J2C_rotateY";
	rename -uid "9F02DAEB-462D-6E90-05D5-769E2964ACD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 52 0 73 0 79 0 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_rFinger1J2C_rotateZ";
	rename -uid "2CAC00BA-4B7B-2A95-972A-5EBA66626F8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -75.155901542285491 33 -75.155901542285491
		 36 -13.874548715117626 52 -13.874548715117626 73 -24.541156518923227 79 -14.590741401145799
		 81 -14.590741401145799 92 -14.590741401145799 140 -14.590741401145799;
createNode animCurveTA -n "Bony_rFinger1J3C_rotateX";
	rename -uid "70999974-4C9E-F3DB-8FF1-C2A29F9464CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_rFinger1J3C_rotateY";
	rename -uid "D3D96724-4DF2-6B79-5A8E-8E8113B0E000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_rFinger1J3C_rotateZ";
	rename -uid "B768FB60-47C9-04D3-B8A1-A68B1CDD76C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -40.108774053748178 33 -40.108774053748178
		 36 2.8510252362208721 52 2.8510252362208721 70 2.8510252362208721 73 -25.556434938353622
		 81 -25.556434938353622 92 -25.556434938353622 140 -25.556434938353622;
createNode animCurveTA -n "Bony_rThumbJ3C_rotateX";
	rename -uid "5BBA90FE-459D-39E2-ADF6-B0BD6C781115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 39 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_rThumbJ3C_rotateY";
	rename -uid "F6BCB90E-4649-75AD-FA21-C48F2FFCBEB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 39 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_rThumbJ3C_rotateZ";
	rename -uid "547EDC83-4598-6B19-4352-5C948D426ED6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -77.025490400731101 33 -77.025490400731101
		 36 -28.997504093723414 39 5.3577552454815924 52 5.3577552454815924 70 5.3577552454815924
		 73 -17.182065624990955 81 -17.182065624990955 92 -17.182065624990955;
createNode animCurveTA -n "Bony_rWristFKC_rotateX";
	rename -uid "21E3E6AD-4160-141F-966E-3E8E6C9984FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 3 0 6 0 9 0 12 -11.19060821503121 15 -16.722246976886318
		 18 -18.986536525506828 21 -24.588767590222954 24 -53.52214131089049 27 -42.999501568686092
		 30 -50.016060479450424 33 -25.08289332997111 36 22.345527079057703 39 -9.2526730013254763
		 42 -0.037442924090679564 45 -0.037442924090679564 48 -13.726272180341345 52 -13.726272180341345
		 58 4.6828312991797789 64 83.69265723878344 67 110.45204403326454 70 177.58328474782462
		 73 173.860390213958 76 193.44409369188708 79 194.32438865139028 81 179.28306066735468
		 84 181.41445273049578 90 180.128125135917 93 182.03900284067541 96 181.58044847116287
		 111 181.58044847116287 114 89.351192449773237 135 52.959467632569108 138 -118.83387419030525
		 140 -118.95020317052918 143 -118.64444890019614 148 -103.02056090775724 149 -102.33219760276333
		 151 -108.71822129946688 152 -104.0019699719691 155 -139.84172228281156 156 -117.91039904275917
		 157 -75.875777711474925 159 -56.079140001180363 162 -9.6540246128858858;
createNode animCurveTA -n "Bony_rWristFKC_rotateY";
	rename -uid "A11A9E21-495D-B0A4-B460-7AB9798A24F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 3 0 6 0 9 35.952887271452752 12 16.469224636504325
		 15 0.90590362304871019 18 -27.837137192548614 21 -46.258366709930748 24 -36.058829136792077
		 27 -17.609514871804301 30 -31.966280414090257 33 0.83953435392029618 36 -11.229767352409432
		 39 -58.612537170124092 42 -59.06625942189546 45 -59.06625942189546 48 -58.6953264635087
		 52 -58.6953264635087 58 -63.251992078337516 64 -73.757836876449559 67 -26.459101746992509
		 70 7.7610766312026884 73 5.3341631602453585 76 5.3341631602453727 79 -1.8865019331919624
		 81 -3.4610716919976352 84 2.0419830347450638 90 2.4805479800387609 93 1.4187463909161997
		 96 1.91641287255618 111 1.91641287255618 114 1.9164128725561991 135 1.9164128725562224
		 138 6.9673833187458882 140 8.5177181751600148 143 -3.0127483742933734 148 -19.893651287710355
		 149 7.2834288411071197 151 48.687604083152088 152 28.883912927246413 155 73.906714240804661
		 156 27.746529668086346 157 18.05101777137277 159 20.895913957905286 162 10.802009563285173;
createNode animCurveTA -n "Bony_rWristFKC_rotateZ";
	rename -uid "2EE1335D-4808-EC76-FC07-6D8364FE09CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 -14.573235631432135 3 -2.1066657697605118
		 6 10.359904091911115 9 0.45630055153055038 12 -15.286903896629864 15 -33.197622536877645
		 18 -23.798074793657637 21 -14.631635999552431 24 35.2984827764068 27 12.528920204463216
		 30 29.038898772510759 33 -3.9434401386047857 36 23.217193515623396 39 106.54769008551375
		 42 95.787264280548598 45 95.787264280548598 48 105.52139844602385 52 105.52139844602385
		 58 77.637631460680794 64 -2.0564610812669404 67 5.1438179457425814 70 3.6247355865317927
		 73 -28.185049933787806 76 -28.185049933787834 79 0.41182693568120615 81 6.644579489431929
		 84 3.6595666482124032 90 -28.103620145411153 93 24.122376615163024 96 8.4631162187138962
		 111 8.4631162187138962 114 8.4631162187138909 135 8.4631162187138926 138 2.6570836072101165
		 140 1.7937050630998976 143 8.1221087607297093 148 16.576040681982988 149 10.489215368836055
		 151 -2.2021601400198163 152 5.2085438711968486 155 -36.632420419806103 156 -0.058418481743889264
		 157 8.0256212321968903 159 -16.940233289234627 162 7.7606320654938417;
createNode animCurveTU -n "Bony_rWristFKC_scaleX";
	rename -uid "4B08B35A-4423-55CE-666E-2C818BDF2BAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 52 1 58 1 64 1 67 1 70 1 73 1 76 1 79 1 81 1
		 84 1 90 1 93 1 96 1 111 1 114 1 135 1 138 1 140 1 143 1 148 1 149 1 151 1 152 1 155 1
		 156 1 157 1 159 1 162 1;
createNode animCurveTA -n "Bony_lFinger2J1C_rotateX";
	rename -uid "2677E1D6-4289-4E21-0174-4F92CE8C9BB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 33 0 36 0 42 0 52 0 58 0 70 0 73 0 76 0
		 79 0 81 0 92 0 93 0 140 0;
createNode animCurveTA -n "Bony_lFinger2J1C_rotateY";
	rename -uid "17F0A104-4430-AE89-3710-6CB799028BDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 33 0 36 0 42 0 52 0 58 0 70 0 73 0 76 0
		 79 0 81 0 92 0 93 0 140 0;
createNode animCurveTA -n "Bony_lFinger2J1C_rotateZ";
	rename -uid "3F9F6E84-4B21-2D1A-B837-B5ADC272B829";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -70.655534027314033 33 -70.655534027314033
		 36 -10.391299393305363 42 8.194143187625512 52 8.194143187625512 58 -71.23407055752628
		 70 -71.23407055752628 73 -25.946797487798481 76 8.7091701416532921 79 14.475819730161792
		 81 14.475819730161792 92 14.475819730161792 93 -2.2011647008144997 140 15.095658027361033;
createNode animCurveTU -n "Bony_lFinger2J1C_scaleX";
	rename -uid "6B8011AB-441D-8D42-9157-CA99BD2B456D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 33 1 36 1 42 1 52 1 58 1 70 1 73 1 76 1
		 79 1 81 1 92 1 93 1 140 1;
createNode animCurveTU -n "Bony_lFinger2J1C_scaleY";
	rename -uid "D72C3D0F-46E3-C3E4-2ADF-93893A1D13FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 33 1 36 1 42 1 52 1 58 1 70 1 73 1 76 1
		 79 1 81 1 92 1 93 1 140 1;
createNode animCurveTU -n "Bony_lFinger2J1C_scaleZ";
	rename -uid "9DCA5007-42C4-885F-0CD5-92AF97B03171";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 33 1 36 1 42 1 52 1 58 1 70 1 73 1 76 1
		 79 1 81 1 92 1 93 1 140 1;
createNode animCurveTA -n "Bony_lFinger1J1C_rotateX";
	rename -uid "470C6E66-4BB6-98DF-37BD-B9B76915CD4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 33 0 36 -0.53710029446434737 39 -0.61128069818634778
		 42 -0.24885935044256804 52 -0.24885935044256804 58 -0.84037249763920896 70 -0.84037249763920896
		 73 -0.45743957347317837 76 -0.20397293318075418 81 -0.20397293318075418 92 -0.20397293318075418
		 93 -0.44044381022320178 140 -0.070429049056942999;
createNode animCurveTA -n "Bony_lFinger1J1C_rotateY";
	rename -uid "5D95C0DF-4956-F100-43E7-AEB69FF6D9F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 33 0 36 0.75813839217612455 39 0.69970579224111529
		 42 0.89515796056549257 52 0.89515796056549257 58 0.39625627666589669 70 0.39625627666589669
		 73 0.80870058987076743 76 0.90643931138363665 81 0.90643931138363665 92 0.90643931138363665
		 93 0.81808076903380278 140 0.92643072755293787;
createNode animCurveTA -n "Bony_lFinger1J1C_rotateZ";
	rename -uid "3678C089-43BE-B99C-9A65-91AC058D3DEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -70.579182882197117 33 -70.579182882197117
		 36 -15.896284228317626 39 -21.722251145896077 42 3.8838688893213127 52 3.8838688893213127
		 58 -45.335915003192447 70 -45.335915003192447 73 -10.075087868361999 76 6.7384206406854146
		 81 6.7384206406854146 92 6.7384206406854146 93 -8.8778983613194189 140 15.073252766631731;
createNode animCurveTU -n "Bony_lFinger1J1C_scaleX";
	rename -uid "F51DB85D-419A-7424-5DEE-75864C2D0905";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 33 1 36 1 39 1 42 1 52 1 58 1 70 1 73 1
		 76 1 81 1 92 1 93 1 140 1;
createNode animCurveTU -n "Bony_lFinger1J1C_scaleY";
	rename -uid "60770FB9-45E3-DBD3-96EB-3B94896C4F46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 33 1 36 1 39 1 42 1 52 1 58 1 70 1 73 1
		 76 1 81 1 92 1 93 1 140 1;
createNode animCurveTU -n "Bony_lFinger1J1C_scaleZ";
	rename -uid "66174EA8-4F48-CDDB-408B-69B60E64A58B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 33 1 36 1 39 1 42 1 52 1 58 1 70 1 73 1
		 76 1 81 1 92 1 93 1 140 1;
createNode animCurveTA -n "Bony_lThumbJ1C_rotateX";
	rename -uid "B77074E3-4650-2D51-F040-34B0AB228CDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 33 0 36 0 39 -25.853466662131765 42 -24.772156892214074
		 52 -24.772156892214074 58 -17.787902168630168 70 -17.787902168630168 73 -23.106410910351276
		 76 -25.853237262653799 81 -24.844795304624054 92 -24.844795304624054 93 -25.839409196577527
		 140 -25.81631199132751 148 -21.999852949748998;
createNode animCurveTA -n "Bony_lThumbJ1C_rotateY";
	rename -uid "6182D3CD-416D-86C4-D5B0-049669534382";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 33 0 36 0 39 3.975693351829396e-16 42 7.6441713262216737
		 52 7.6441713262216737 58 -19.074675297346818 70 -19.074675297346818 73 -11.929690551148752
		 76 -0.11286254339395319 81 7.3897128061718984 92 7.3897128061718984 93 0.88334812761851045
		 140 1.4356857834611194 148 13.931180647315152;
createNode animCurveTA -n "Bony_lThumbJ1C_rotateZ";
	rename -uid "207D12A1-450B-2A50-53FF-C59EBCF1728A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -57.337896074215877 33 -57.337896074215877
		 36 -19.425848507407753 39 -9.6199583571518161 42 6.4596979449625511 52 6.4596979449625511
		 58 -55.14794975339769 70 -55.14794975339769 73 -35.469100205839688 76 -9.8528717609636551
		 81 5.9044461901007246 92 5.9044461901007246 93 -7.796556022217386 140 -6.6552155792587042
		 148 21.170632981331945;
createNode animCurveTU -n "Bony_lThumbJ1C_scaleX";
	rename -uid "29472B10-40FE-FCBA-5DD4-F2946249B735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 33 1 36 1 39 1 42 1 52 1 58 1 70 1 73 1
		 76 1 81 1 92 1 93 1 140 1 148 1;
createNode animCurveTU -n "Bony_lThumbJ1C_scaleY";
	rename -uid "C780C19A-4C47-6F19-0346-4C89028082AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 33 1 36 1 39 1 42 1 52 1 58 1 70 1 73 1
		 76 1 81 1 92 1 93 1 140 1 148 1;
createNode animCurveTU -n "Bony_lThumbJ1C_scaleZ";
	rename -uid "52518596-4EF5-A2BA-AF11-03B7160A79F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 33 1 36 1 39 1 42 1 52 1 58 1 70 1 73 1
		 76 1 81 1 92 1 93 1 140 1 148 1;
createNode animCurveTA -n "Bony_lFinger1J2C_rotateX";
	rename -uid "CF0B8BD8-4680-BC10-62DC-3C8A6AF727A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 33 0 36 0 52 0 58 0 70 0 73 0 79 0 81 0
		 92 0;
createNode animCurveTA -n "Bony_lFinger1J2C_rotateY";
	rename -uid "C6C42707-4435-9817-48F8-34A8F0AE99EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 33 0 36 0 52 0 58 0 70 0 73 0 79 0 81 0
		 92 0;
createNode animCurveTA -n "Bony_lFinger1J2C_rotateZ";
	rename -uid "3ED5FB49-4B26-CE4E-BF22-BF8CCB1E345A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -74.727047010611841 33 -74.727047010611841
		 36 3.7229676877926798 52 3.7229676877926798 58 -76.412496033203865 70 -76.412496033203865
		 73 -45.66863850329532 79 -21.685994170872096 81 -21.685994170872096 92 -21.685994170872096;
createNode animCurveTA -n "Bony_lFinger2J2C_rotateX";
	rename -uid "D32AF7C3-4BF5-33C9-232D-19AF48393590";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 33 0 36 0 42 0 52 0 58 0 70 0 73 0 79 0
		 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_lFinger2J2C_rotateY";
	rename -uid "5D9A0C45-4970-006B-4EA1-CC8B109EFC91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 33 0 36 0 42 0 52 0 58 0 70 0 73 0 79 0
		 81 0 92 0 140 0;
createNode animCurveTA -n "Bony_lFinger2J2C_rotateZ";
	rename -uid "D477C527-4392-CF4B-C4BD-698752D3DC28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -83.324288893599345 33 -83.324288893599345
		 36 -16.997645689073604 42 -5.7050645470227375 52 -5.7050645470227375 58 -27.830714080643961
		 70 -27.830714080643961 73 -33.937906296087441 79 -25.889161543987186 81 -25.889161543987186
		 92 -25.889161543987186 140 -8.6202788406197293;
createNode animCurveTA -n "Bony_lFinger1J3C_rotateX";
	rename -uid "E8621925-4F7E-2E9E-90F6-708B35742B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_lFinger1J3C_rotateY";
	rename -uid "4BCD508E-48DB-7FD8-A41E-B9A79FF52998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_lFinger1J3C_rotateZ";
	rename -uid "12A13195-4D32-8EDD-EAE6-6AB6A7E43998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -81.328608073425173 33 -81.328608073425173
		 36 -13.741361258622982 52 -13.741361258622982 70 -13.741361258622982 73 -30.847867817528005
		 81 -30.847867817528005 92 -30.847867817528005;
createNode animCurveTA -n "Bony_lFinger2J3C_rotateX";
	rename -uid "8604FEFF-4EC5-4C2D-6980-CBAB2490D852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 42 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_lFinger2J3C_rotateY";
	rename -uid "89AE7B0F-46FE-C35A-C0AD-CAA477F1DE32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 33 0 36 0 42 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_lFinger2J3C_rotateZ";
	rename -uid "31B5E5BF-4AAB-205F-E9E7-CEB1D2D88D71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -68.747786542424805 33 -68.747786542424805
		 36 2.8798110978871589 42 -5.5507554299635711 52 -5.5507554299635711 70 -5.5507554299635711
		 73 -20.796329620333495 81 -20.796329620333495 92 -20.796329620333495;
createNode animCurveTA -n "Bony_lThumbJ3C_rotateX";
	rename -uid "24D63433-47A4-5BAA-A492-92BE43B3ED3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_lThumbJ3C_rotateY";
	rename -uid "0260C4CF-4EA2-48A0-1175-7C98E189CF8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 33 0 36 0 52 0 70 0 73 0 81 0 92 0;
createNode animCurveTA -n "Bony_lThumbJ3C_rotateZ";
	rename -uid "E047C37C-4780-8915-8246-B5893A4BCAED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.269154032754557 33 -64.269154032754557
		 36 -7.5721696329177801 52 -7.5721696329177801 70 -7.5721696329177801 73 -22.468303616980801
		 81 -22.468303616980801 92 -22.468303616980801;
createNode animCurveTA -n "Bony_lWristFKC_rotateX";
	rename -uid "8B37D563-4ED0-E378-1B12-7E9DFCFC2DF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 3 0 6 0 9 -9.4581241069715869 12 -9.8807895882094829
		 15 -8.5391031191079438 18 -8.9880853499545772 21 -2.3231943216477804 24 -2.0428785646390111
		 27 -7.9267672296302063 30 -8.1994593075737239 33 25.001106667374536 36 80.968452336133893
		 39 68.128919625040183 42 61.488186525213052 45 61.488186525213052 48 42.522357415146395
		 52 42.522357415146395 58 77.664341753164038 67 161.77042728487919 73 144.21997330465084
		 76 168.61834252421093 79 171.47293952336653 81 197.65919929437982 84 165.56722058326858
		 90 164.73293659955758 93 175.44201168027976 96 168.63223328874582 99 107.76476863876606
		 111 107.76476863876606 135 55.889470494392789 138 104.79553818290525 140 120.90366758740566
		 143 176.91055905084048 146 123.33229255902123 148 112.62122096794349 151 113.99444603688684
		 153 112.53667906752551 155 173.33707267485076 157 111.70392980393747 159 76.680651901680491
		 160 78.689930554581366;
createNode animCurveTA -n "Bony_lWristFKC_rotateY";
	rename -uid "F03C3A09-48EB-880A-A3D1-D9B79FB3F19D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 3 0 6 0 9 -25.367937619649428 12 -30.084953106686132
		 15 0.35304893733961235 18 18.119645747973937 21 31.841691602359543 24 14.980184700994293
		 27 -5.8544940049045415 30 -15.863570691658678 33 -15.863570691658675 36 -59.416833215853067
		 39 -55.570703406559183 42 -63.817398170957709 45 -63.817398170957709 48 -73.394963300038768
		 52 -73.394963300038768 58 9.6454240125062203 67 9.6454240125062292 73 5.0182808892455117
		 76 3.95906428700326 79 7.4718600182972814 81 11.167304461545756 84 5.4476808564817611
		 90 -2.0910175607002421 93 14.732155271871816 96 10.46757729465865 99 18.138450014001737
		 111 18.138450014001737 135 18.138450014001794 138 -45.296095454676376 140 -56.482184497834304
		 143 -73.499801394365861 146 -58.927514412627588 148 -42.495244308470234 151 -27.207774320795558
		 153 42.27246634152069 155 72.183295517510686 157 34.735680889527096 159 34.735680889527117
		 160 15.127499376023984;
createNode animCurveTA -n "Bony_lWristFKC_rotateZ";
	rename -uid "BF5D3CD2-45E9-8C05-3090-90AACFCADB8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -25.96323991570279 3 -33.901081694519831
		 6 -41.838923473336884 9 -15.807885315972136 12 -14.900201436899312 15 -19.943324640416563
		 18 -22.706518172271895 21 -2.3609147726534303 24 -1.6630350469942632 27 -23.838614296985032
		 30 -22.39674384670149 33 -22.396743846701476 36 7.9203116583763116 39 9.8706870570309722
		 42 17.539787797339976 45 17.539787797339976 48 37.811313811567139 52 37.811313811567139
		 58 -10.547145156256015 67 -10.547145156255993 73 -17.112503677689393 76 -22.488602139155748
		 79 -1.7808023468334939 81 0.53749123307130608 84 -24.97243379250418 90 -52.834280014986668
		 93 27.374090628906966 96 -3.1177591978509098 99 -0.63058279416464436 111 -0.63058279416464436
		 135 -0.6305827941646267 138 -14.692506820054714 140 -22.944251981034405 143 -83.201356829399359
		 146 -25.816494713046289 148 -12.144552130916404 151 -8.1092256817301323 153 19.172706024794177
		 155 70.536312498814141 157 0.30975957868339382 159 0.30975957868339388 160 5.0045667586195135;
createNode animCurveTU -n "Bony_lWristFKC_scaleX";
	rename -uid "8AF71633-40DE-D16B-DF7B-D49AAF2052CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 52 1 58 1 67 1 73 1 76 1 79 1 81 1 84 1 90 1
		 93 1 96 1 99 1 111 1 135 1 138 1 140 1 143 1 146 1 148 1 151 0.99127199894959928
		 153 0.9865308625765421 155 0.9865308625765421 157 0.9865308625765421 159 0.9865308625765421
		 160 0.9865308625765421;
createNode animCurveTA -n "Bony_rShoulderFKC_rotateX";
	rename -uid "BBE15915-4D7F-96DE-B186-D49B39367603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 5.9701039014713345e-16 3 -3.7515392180927201e-15
		 6 -6.7729758380635712 9 -4.5171231357708388 12 -4.0421779536359619 15 17.938707169026369
		 18 53.559599619741114 21 12.215083743258814 24 11.846356793220531 27 13.576831520577956
		 30 12.56123230721964 33 8.2414310272749738 36 8.4294213772581656 39 13.152903758894213
		 42 15.124165490046936 45 15.124165490046936 48 22.111674773259988 52 22.111674773259988
		 58 -48.57062215368331 64 -95.563450857359754 67 -137.9672784629696 70 -145.81100120118103
		 73 -89.242347854511507 76 -89.131986071200785 79 -74.731267086070034 81 -89.698914752253557
		 84 -80.709445280576332 87 -77.948091087059652 90 -48.981320233782341 93 -74.356351692729632
		 96 -71.954528437786095 99 -44.191218073130258 102 -39.628025271985386 108 -55.667166386902558
		 111 -94.130042124783103 114 -91.680429019833326 135 -93.314857550168369 138 -9.5424675384844129
		 140 -3.9709018014820856 145 -16.115610538168838 146 -27.972123459329183 148 -3.8641813614263141
		 149 -152.42391933078366 153 -153.42982112255132 154 -152.88498366785674 155 -160.43381697989051
		 157 -141.42864311859063 159 -23.974571462839286 162 -16.129067049921353 163 -10.168351425036468;
createNode animCurveTA -n "Bony_rShoulderFKC_rotateY";
	rename -uid "808AC7D7-42D4-4297-E284-36A4426E2ECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 -2.6869933589516961 3 32.026822248970873
		 6 53.403802186006565 9 26.779891770829732 12 -4.1061560085524214 15 -30.802755347731839
		 18 -42.873781989452283 21 -17.315285195134916 24 10.278516483889323 27 30.631093979564341
		 30 55.118194470395672 33 29.811440507448484 36 -31.956415512904563 39 -39.185551374254679
		 42 -47.468448114988611 45 -47.468448114988611 48 -62.058586704158564 52 -62.058586704158564
		 58 -59.798962294664335 64 -60.513986685366497 67 -42.973514230397576 70 -29.330124168480243
		 73 2.2926146919792147 76 29.288626171485269 79 26.254573618982334 81 -0.00099619727935793836
		 84 5.076189539939695 87 5.0761895399396852 90 5.0761895399396986 93 -4.3204965390773697
		 96 -26.937143140500744 99 -51.599376267871811 102 -47.245034536397043 108 -58.376726105274976
		 111 -25.433001107915508 114 -25.69293965674192 135 -62.805846516347074 138 -85.014297836428071
		 140 -77.991970546975537 145 -71.962327339840257 146 -65.036339819274929 148 -77.655711992512721
		 149 -88.216532905179122 153 -66.706006095531194 154 -60.034402952328612 155 -49.592630855952478
		 157 -69.624072234062567 159 -57.706468626042458 162 -38.607518638866893 163 -2.2230628015024685;
createNode animCurveTA -n "Bony_rShoulderFKC_rotateZ";
	rename -uid "F80A4C9E-4E51-B6B5-F3E3-FBBBCB58416F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 -74.495562508206206 3 -74.495562508206277
		 6 -82.910146874477192 9 -79.502032385732377 12 -77.173494377645298 15 -78.327939157933741
		 18 -83.669930460312372 21 -75.886787734999245 24 -70.056784074314621 27 -65.185512533681688
		 30 -69.159085248282466 33 -75.398876075391954 36 -84.002227163149271 39 -86.415439138463341
		 42 -89.280507159226573 45 -89.280507159226573 48 -97.761243969018679 52 -97.761243969018679
		 58 -104.98305171780947 64 -90.014866481691584 67 -37.969423042024658 70 -24.805021400179214
		 73 -12.879835791176587 76 -12.485480689080065 79 -13.435671185305955 81 -8.2931200718654754
		 84 -14.735801378769755 87 -14.735801378769763 90 -14.735801378769768 93 -22.879117199459461
		 96 -55.195749380200965 99 -96.588364022974304 102 -102.58967792690076 108 -82.623862130422864
		 111 -61.646674157068041 114 -67.319819188957794 135 -65.099405500127716 138 -50.409388768077683
		 140 -56.032130581932471 145 -44.641184546101222 146 -34.230725852872162 148 -56.141306613053864
		 149 92.518897571112916 153 82.343640824791748 154 80.948642324467073 155 89.116910987057636
		 157 67.479653835393819 159 -55.137721776129261 162 -65.510843022447631 163 -83.479578087072227;
createNode animCurveTU -n "Bony_rShoulderFKC_scaleX";
	rename -uid "5CC57B52-4417-C4E6-DF32-938D76BB0772";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 52 1 58 1 64 1 67 1 70 1 73 1 76 1 79 1 81 1
		 84 1 87 1 90 1 93 1 96 1 99 1 102 1 108 1 111 1 114 1 135 1 138 1 140 1 145 1 146 1
		 148 1 149 1 153 1 154 1 155 1 157 1 159 1 162 1 163 1;
createNode animCurveTU -n "Bony_rShoulderFKC_ShoulderOrient";
	rename -uid "C7CF623A-4612-A593-D3E3-2DA6D46D5B35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 52 1 58 1 64 1 67 1 70 1 73 1 76 1 79 1 81 1
		 84 1 87 1 90 1 93 1 96 1 99 1 102 1 108 1 111 1 114 1 135 1 138 1 140 1 145 1 146 1
		 148 1 149 1 153 1 154 1 155 1 157 1 159 1 162 1 163 1;
createNode animCurveTA -n "Bony_lShoulderFKC_rotateX";
	rename -uid "34AA3D3E-4B13-2B2E-00D9-C0838284C63E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 3 0 6 17.655651279844594 9 6.7259054248853642
		 12 5.9010921341809421 15 6.9565041631448779 18 11.345607394432967 21 9.5644038357299035
		 24 8.7478195653519197 27 13.939806825653584 30 54.453726973399725 33 15.574723125835856
		 36 3.5889311728688664 39 -23.836462532457546 42 -25.122662632612332 45 -25.122662632612332
		 48 -33.889635448936971 52 -33.889635448936971 55 -62.540595507077143 58 -80.571880187589286
		 67 -128.64620403946074 73 -78.878638368106195 76 -78.881654083243873 79 -71.729609791258483
		 81 -104.44294175293602 84 -69.408640103881112 87 -57.871576727144998 90 -32.799030286223378
		 93 -76.166144018126033 96 -89.405517092484118 99 -89.211851763128536 102 -105.1107461256173
		 111 -105.52084981363292 114 -106.84892880809151 135 -120.21991034502474 138 -234.58618266016254
		 143 -234.58618266016254 146 -212.99747324929609 148 -205.30457981781245 149 -201.74828784721527
		 153 -197.95907239277332 155 -193.78634797349741 157 -195.37564757432412 160 -213.47240763945948
		 163 -108.11635209408821 166 -96.379626766391013;
createNode animCurveTA -n "Bony_lShoulderFKC_rotateY";
	rename -uid "B887BEEA-4583-17C5-7B1F-EF98581F98EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 3 -33.72375534970061 6 -41.846682026042792
		 9 -20.751038909277586 12 2.5062758095860116 15 31.999009225840471 18 41.271386974960386
		 21 27.142229549757591 24 -13.540498348248525 27 -29.028419661153571 30 -35.039386630048412
		 33 -40.362402646538712 36 -50.656898926595005 39 -41.704264384875948 42 -44.711184246563015
		 45 -44.711184246563015 48 -57.241158038667102 52 -57.241158038667102 55 -57.223154375162878
		 58 -57.223154375162856 67 -46.859084610292285 73 -1.942125018210235 76 -1.4192174241404527
		 79 9.7856565463752219 81 11.177014062538667 84 25.195916504845641 87 28.078809867520771
		 90 28.490651776474373 93 15.110472064372802 96 -0.94300466461074617 99 -0.7883510455194862
		 102 -0.78835104551943214 111 -13.066296099171167 114 -25.934013737499797 135 -58.809658462855168
		 138 -73.272672116666541 143 -73.272672116666541 146 -64.487123082401666 148 -56.716229093632386
		 149 -50.72371925146178 153 -40.469668470688127 155 -10.156657157259191 157 -27.788739525115545
		 160 -64.830379111627934 163 -69.339850955288739 166 -9.1234139689102207;
createNode animCurveTA -n "Bony_lShoulderFKC_rotateZ";
	rename -uid "361D32C9-47E2-DF13-4077-47BA4C49DECA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -72.886146345561883 3 -72.88614634556194
		 6 -75.968152171903469 9 -59.230734654934366 12 -68.538489434948787 15 -65.098096340846311
		 18 -69.170845849644394 21 -72.314633572963288 24 -78.773586602431251 27 -89.924062531660113
		 30 -98.99034975502245 33 -100.79502611904523 36 -82.745431018384906 39 -80.98215891211558
		 42 -79.104257955202783 45 -79.104257955202783 48 -67.900761958478512 52 -67.900761958478512
		 55 -67.964845740550146 58 -67.964845740550231 67 -9.1744371333787473 73 -14.445322914384008
		 76 -14.342500492467986 79 -12.12182340596897 81 -13.872910468167831 84 -20.117024319277327
		 87 -17.385656877741599 90 -14.654289436205866 93 -18.379583597526644 96 -60.158253293909397
		 99 -72.923612455352298 102 -72.923612455352298 111 -69.543838394205423 114 -65.591731809420949
		 135 -46.650192514094769 138 113.76971540383022 143 113.76971540383022 146 90.732892503533293
		 148 81.927361009280716 149 77.52261143406362 153 72.241833897105707 155 62.839039305704965
		 157 67.667120520335999 160 91.258390370277723 163 -58.136084712084013 166 -74.141144301414215;
createNode animCurveTU -n "Bony_lShoulderFKC_scaleX";
	rename -uid "D0A611F1-4789-D9F6-0333-56937DB9D63A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 52 1 55 1 58 1 67 1 73 1 76 1 79 1 81 1 84 1
		 87 1 90 1 93 1 96 1 99 1 102 1 111 1 114 1 135 1 138 1 143 1 146 1 148 1 149 1 153 1
		 155 1 157 1 160 1 163 1 166 1;
createNode animCurveTU -n "Bony_lShoulderFKC_ShoulderOrient";
	rename -uid "2575CC39-4833-3333-6DB1-A5883F9B12AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 52 1 55 1 58 1 67 1 73 1 76 1 79 1 81 1 84 1
		 87 1 90 1 93 1 96 1 99 1 102 1 111 1 114 1 135 1 138 1 143 1 146 1 148 1 149 1 153 1
		 155 1 157 1 160 1 163 1 166 1;
createNode animCurveTA -n "Bony_lElbowFKC_rotateY";
	rename -uid "56AED5E5-4841-8BC9-D609-7188E1858BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -9.9505287844378341 3 -35.790066829324005
		 6 -66.432691238086534 9 -46.236648708326264 12 -36.277231747910797 15 -8.4777788891696595
		 18 -4.1497159854570658 21 -19.600201154858873 24 -42.737366776152626 27 -68.171373961820578
		 30 -78.92255945705098 33 -43.534997067659958 36 -81.040276852295165 39 -118.54555663693039
		 42 -96.607709184825765 45 -111.20454640354502 52 -111.20454640354502 55 -75.052833258145867
		 58 -31.463925058997866 61 -16.128966852149293 64 -5.2244322011377893 67 41.446748969449757
		 70 67.6259734875253 73 70.840816672507941 81 57.84885647959365 93 57.84885647959365
		 94 45.856201324678899 96 11.345994308269397 111 23.053652119493012 114 33.382086438124972
		 135 33.382086438124972 138 12.162928754458877 146 24.228913152670394 150 37.568132258200777
		 153 6.3419195010653446 160 -0.36956338284819917;
createNode animCurveTA -n "Bony_rElbowFKC_rotateY";
	rename -uid "696DC2B9-447C-554C-DC93-3181896007A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 -6.4681728830567371 3 -25.20954321229685
		 6 -5.2334184632004872 9 -51.186966819984903 12 -64.926375634732622 15 -78.762567634290249
		 18 -95.272332873074973 21 -62.156752499043833 24 -30.897831210585057 27 -13.2386742644949
		 30 -2.0163969871378997 33 -28.845050862016997 36 -8.3060205754852614 39 -84.270396914914627
		 42 -81.054484406240078 45 -93.069018690652413 52 -93.069018690652413 58 -107.06978306582424
		 64 -89.589720609982706 67 -0.104369760585362 70 34.950603672324341 73 81.017175988652014
		 81 81.017175988652014 92 81.017175988652014 93 62.713597431545452 96 33.915581413834808
		 99 54.271078779953058 102 31.013071388567752 111 3.4499331989575679 138 -14.450829285423197
		 140 -29.541276975215087 143 -33.095023900333238 146 -40.386255954155352 151 -30.732433112721726
		 159 -9.5638385120985134;
createNode animCurveTA -n "Bony_rThumbJ1C_rotateX";
	rename -uid "E62BF7CE-46DD-9FBD-18E0-FBA679A7FE81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 0 36 0 39 0 52 0 58 0 70 0 73 0 79 0
		 81 0 92 0 93 0 143 -66.789861710041379;
createNode animCurveTA -n "Bony_rThumbJ1C_rotateY";
	rename -uid "08EE3236-4311-DBE2-D3BB-CEAB72B6BBD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 0 36 0 39 0 52 0 58 0 70 0 73 0 79 0
		 81 0 92 0 93 0 143 1.5902773407317588e-15;
createNode animCurveTA -n "Bony_rThumbJ1C_rotateZ";
	rename -uid "A5DB36D1-4C77-B589-D18E-55933E525C1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 -54.212686905568994 36 -12.872707020051196
		 39 -3.4059405137112502 52 -3.4059405137112502 58 7.3002031919614145 70 7.3002031919614145
		 73 -18.823083126494407 79 7.2875935510983219 81 7.2875935510983219 92 7.2875935510983219
		 93 -18.733173084755137 143 -18.733173084755119;
createNode animCurveTU -n "Bony_rThumbJ1C_scaleX";
	rename -uid "7C7E4BE4-4FFF-B6AF-EAC5-88A892748D68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 1 36 1 39 1 52 1 58 1 70 1 73 1 79 1
		 81 1 92 1 93 1 143 1;
createNode animCurveTU -n "Bony_rThumbJ1C_scaleY";
	rename -uid "A6090084-41A8-42FD-9982-3EA7D7820648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 1 36 1 39 1 52 1 58 1 70 1 73 1 79 1
		 81 1 92 1 93 1 143 1;
createNode animCurveTU -n "Bony_rThumbJ1C_scaleZ";
	rename -uid "4FF2D10E-4599-200D-84C4-4D9EF183F82E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 1 36 1 39 1 52 1 58 1 70 1 73 1 79 1
		 81 1 92 1 93 1 143 1;
createNode animCurveTA -n "Bony_rFinger2J1C_rotateX";
	rename -uid "3761143A-445D-78E1-E3B3-3C96CF79DA75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 0 36 0 52 0 58 7.3540716302027258 70 7.3540716302027258
		 73 6.9327080553849756 79 7.3824855156101803 81 7.3824855156101803 92 7.3824855156101803
		 93 7.1044753875255164 140 7.1044753875255164 143 5.5941745337544395;
createNode animCurveTA -n "Bony_rFinger2J1C_rotateY";
	rename -uid "7AB1F1B3-4D07-4AB4-37D9-B09C9CC73432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 0 36 0 52 0 58 -0.88915801281613394 70 -0.88915801281613394
		 73 2.6152629139819981 79 -0.60793111869615024 81 -0.60793111869615024 92 -0.60793111869615024
		 93 2.1018374912548152 140 2.1018374912548152 143 4.863030803983488;
createNode animCurveTA -n "Bony_rFinger2J1C_rotateZ";
	rename -uid "C5A65C90-400B-3FD7-D8CB-B789D65A4A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 -82.807487950807683 36 -4.5313905135061692
		 52 -4.5313905135061692 58 2.3247907261902729 70 2.3247907261902729 73 -25.100609057742531
		 79 0.15011498808438981 81 0.15011498808438981 92 0.15011498808438981 93 -20.928604667609708
		 140 -20.928604667609708 143 -45.407530567141315;
createNode animCurveTU -n "Bony_rFinger2J1C_scaleX";
	rename -uid "C677EF12-41B8-B4EE-680B-2381EDA3E31B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 1 36 1 52 1 58 1 70 1 73 1 79 1 81 1
		 92 1 93 1 140 1 143 1;
createNode animCurveTU -n "Bony_rFinger2J1C_scaleY";
	rename -uid "F3025DFA-4D1B-2005-08B7-EEA6BC6242D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 1 36 1 52 1 58 1 70 1 73 1 79 1 81 1
		 92 1 93 1 140 1 143 1;
createNode animCurveTU -n "Bony_rFinger2J1C_scaleZ";
	rename -uid "06109CB6-4703-E327-7065-5D9A90F45544";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  33 1 36 1 52 1 58 1 70 1 73 1 79 1 81 1
		 92 1 93 1 140 1 143 1;
createNode animCurveTA -n "Bony_Spine01FKC_rotateX";
	rename -uid "CF117E49-4A56-C8D4-8344-889DF82C3665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -3.020544873058788 3 -8.8235107479437271
		 6 -8.9527103569316946 9 -9.2824874732912068 12 -9.4366044631289352 15 -8.8241338233249955
		 18 -9.9677433364621972 21 -12.235760711017168 24 -12.235760711017168 27 -9.3949029470970817
		 30 0.73952920864442018 33 6.4075028833744589 36 6.3267538050670753 40 6.5967047560317411
		 45 7.5066197044188092 48 9.0248369742285082 52 9.0248369742285082 58 9.4108363589398536
		 60 10.149939745435008 73 -1.6967727321193375 79 -12.475155385927312 96 0.040343758761645594
		 128 0.040343758761645594 129 10.539905575801859 135 33.015019873148624 145 33.015019873148624
		 163 21.986726809765148;
createNode animCurveTA -n "Bony_Spine01FKC_rotateY";
	rename -uid "2B255882-4BAC-90BC-A22E-B199F5C4ADFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 6 9.706696469341404 9 18.018562000783298
		 12 20.680745732453801 15 0.67818501217608729 18 -27.603528993900895 21 -43.633659190118991
		 24 -43.633659190118991 27 -20.002457723185618 30 -9.3976019644975093 33 -9.3976019644975235
		 36 -2.405763343002715 40 -2.2248132835832766 45 -2.1873650096968036 48 -2.1873650096968031
		 52 -2.1873650096968031 58 16.537903237237423 60 27.192095004818555 73 27.192095004818608
		 79 27.192095004818615 96 22.440537911867665 128 22.440537911867665 129 22.440537911867715
		 135 22.440537911867743 145 22.440537911867743 163 22.440537911867747;
createNode animCurveTA -n "Bony_Spine01FKC_rotateZ";
	rename -uid "17E95AE8-4066-72A1-5FBE-009C7CDE5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 6 -1.5215161670813855 9 -2.8942299295319667
		 12 -3.3592455662681102 15 -0.10527853660197005 18 4.655453212369844 21 8.5108080997809843
		 24 8.5108080997809843 27 3.2392835788345677 30 1.4721602682900707 33 1.4721602682900714
		 36 2.2560175054238023 40 2.3150308203785745 45 2.3272438408576255 48 2.3272438408576317
		 52 2.3272438408576317 58 5.3757118836638842 60 7.3515633163319727 73 7.3515633163319709
		 79 7.3515633163319727 96 8.4865563365941643 128 8.4865563365941643 129 8.4865563365941696
		 135 8.4865563365941714 145 8.4865563365941714 163 8.486556336594175;
createNode animCurveTA -n "Bony_Spine02FKC_rotateX";
	rename -uid "4664E81A-4E66-E709-3232-E086C8FFFE93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  3 -0.5276745667643209 6 -0.53883041624062389
		 9 -0.58317942174967841 12 -0.62257926533910868 15 -0.67963568633077298 18 -0.72873438102509058
		 21 -0.60826645707124527 24 -0.53952877459975035 27 5.8816768081760866 30 5.8370011206422587
		 33 12.615385440802507 36 17.573491980008253 39 17.573491980008253 45 27.557322937764095
		 48 33.700276639205988 52 33.700276639205988 58 34.922423554672022 60 30.264151713189868
		 64 26.927087489326027 67 26.733005852437611 70 21.294966675949215 73 11.52525261740195
		 84 -6.6262952525288572 96 -5.4955815085926076 99 -5.4229932719589273 102 -5.7593794164429992
		 105 -5.4198302922161217 108 4.921143428222333 123 4.921143428222333 126 18.367002415584128
		 135 29.370771352231507 145 29.370771352231507 148 27.433847765356219 153 27.433847765356219
		 156 24.256903316702115 158 1.3388309606323572;
createNode animCurveTA -n "Bony_Spine02FKC_rotateY";
	rename -uid "6587AB82-4CF4-0D46-3DDF-0EA27ADF14F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  3 0 6 11.679085355798245 9 25.200068915432212
		 12 32.052005036962804 15 39.066483153603357 18 43.605426488521879 21 29.829478520863148
		 24 12.032579951572471 27 7.430907112123589 30 2.3422064786893322 33 -2.5874989617874031
		 36 -2.5874989617874036 39 -2.5874989617874036 45 -2.587498961787408 48 -2.5874989617874085
		 52 -2.5874989617874085 58 14.479857468183527 60 22.421146083309697 64 21.617971345601433
		 67 36.194261308633287 70 1.6188147840851186 73 1.6188147840851184 84 -9.7221268916987658
		 96 -10.398850003656719 99 4.6557416893166215 102 20.171312010510309 105 -4.2266423390676966
		 108 -4.2266423390676993 123 -4.2266423390676993 126 -4.2266423390676948 135 -4.2266423390676859
		 145 -4.2266423390676859 148 -4.2266423390676806 153 -4.2266423390676806 156 -4.2266423390676806
		 158 -4.2266423390676815;
createNode animCurveTA -n "Bony_Spine02FKC_rotateZ";
	rename -uid "21662393-4BEA-7428-112E-F79B524A206B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  3 0 6 -0.10907843713829736 9 -0.24831337626062175
		 12 -0.33040517504463729 15 -0.42833328720846775 18 -0.50261366077154879 21 -0.30257267353596368
		 24 -0.11247758841606319 27 -0.068824388597361522 30 -0.59276997601726089 33 -1.6956011551439023
		 36 -1.6956011551439019 39 -1.6956011551439019 45 -1.6956011551439043 48 -1.6956011551439052
		 52 -1.6956011551439052 58 9.9316058036878605 60 5.145280505388083 64 15.330965893889067
		 67 18.044724380054667 70 2.1115749633893675 73 2.1115749633893657 84 -0.21974693842597284
		 96 -6.6857430649138241 99 -8.1221327670795009 102 -9.6725554524888668 105 -7.2800042440593131
		 108 -7.2800042440593211 123 -7.2800042440593211 126 -7.2800042440593389 135 -7.2800042440593371
		 145 -7.2800042440593371 148 -7.2800042440593362 153 -7.2800042440593362 156 -7.2800042440593389
		 158 -7.2800042440593709;
createNode animCurveTA -n "Bony_Spine03FKC_rotateX";
	rename -uid "8EF4788A-45AC-CFE7-BA40-7A9BD0DF5884";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  3 -5.1847966219234598 6 -12.348103871404938
		 9 -22.143655562891666 12 -21.319398109303457 15 -21.254881559819591 18 -21.992432798284586
		 21 -22.979697699030137 24 -21.30513579095356 27 -12.26036809601532 30 -4.399720929996219
		 33 8.533675463585169 36 14.092397550608707 39 14.083711684179105 45 18.957928809736075
		 48 28.551976795948686 52 28.551976795948686 58 25.140121146836599 60 23.269527852818932
		 67 23.269527852818932 70 4.5378896286630654 73 3.5532987515838497 79 -11.692720027411994
		 81 17.616920492299435 96 12.777394012203461 99 11.935848901435193 102 12.416577238004706
		 105 12.057227926192894 108 19.826922042524664 123 19.826922042524664 126 28.644075529520023
		 145 28.644075529520023 148 15.923537732830427 151 2.641641443073115 153 -10.138013976253299;
createNode animCurveTA -n "Bony_Spine03FKC_rotateY";
	rename -uid "F34CD124-4CB5-7FCC-3ADA-F7901F4D520A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  3 0 6 -5.1340172821103671 9 -16.408628215095842
		 12 -5.9950214306079239 15 4.125110421587471 18 15.085835655868008 21 22.1557378519202
		 24 5.6360867150953036 27 -2.037275837011375 30 -2.0372758370113742 33 -2.0372758370113724
		 36 -2.0372758370113715 39 0.43046909647948772 45 0.43046909647948794 48 0.43046909647948783
		 52 0.43046909647948783 58 14.005754877494686 60 17.033373248738286 67 17.033373248738286
		 70 15.374153030276423 73 -16.971733436456049 79 -16.971733436456059 81 -16.971733436456088
		 96 -20.813826547207256 99 1.6504449730942652 102 15.959236734995386 105 8.2429017235101067
		 108 8.2429017235101227 123 8.2429017235101227 126 8.2429017235101334 145 8.2429017235101334
		 148 8.2429017235101494 151 8.2429017235101494 153 8.2429017235101583;
createNode animCurveTA -n "Bony_Spine03FKC_rotateZ";
	rename -uid "0424C0F9-4EDE-40EF-C7C4-FABCE4E472AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  3 0 6 1.1222659556304717 9 5.6831879282559612
		 12 1.459595612355554 15 -2.4773133855820526 18 -6.8751117902139676 21 -9.9604956606038844
		 24 -3.0679303842573251 27 -1.3972815687260027 30 -1.3972815687260052 33 -1.397281568726007
		 36 -1.3972815687260087 39 -0.77796682191314614 45 -0.7779668219131467 48 -0.77796682191314637
		 52 -0.77796682191314637 58 -27.26777512179719 60 -34.248418825230843 67 -34.248418825230843
		 70 -16.204530213510438 73 -17.943814010865214 79 -17.943814010865239 81 -17.943814010865243
		 96 -3.0811146630396538 99 1.874777298441437 102 4.9901677517859948 105 3.2800221638158122
		 108 3.2800221638158131 123 3.2800221638158131 126 3.2800221638158162 145 3.2800221638158162
		 148 3.2800221638158091 151 3.2800221638158091 153 3.28002216381581;
createNode animCurveTA -n "Bony_Neck01C_rotateX";
	rename -uid "0A411AC6-4273-ED18-50A6-BEBD61CAFB4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  3 -4.1057237892480467 6 -4.1720224979908354
		 9 -4.170211549000026 12 -4.7239380501064145 15 -4.1083356641779023 18 -12.827890024479506
		 21 -13.885175285457709 24 -12.602007355620211 27 18.105375143252108 30 18.105375143252108
		 33 18.105375143252108 36 18.105375143252108 39 -11.972027415573228 42 -28.296327192602476
		 45 -53.698341589938394 48 -80.643225274779766 52 -80.643225274779766 58 -68.077612197906674
		 61 -71.098725116042075 64 -56.746433466413727 67 -50.212964178094168 70 -38.326127409166631
		 73 -19.311914964081069 79 31.519336882490634 84 -9.7925351603659845 87 12.922572021790725
		 90 34.998439284091383 96 -17.535772166598118 99 0.50190341449031106 103 10.433159217932195
		 108 10.214595963499823 110 -1.2849958379301809 113 6.5466194404291205 116 15.078235464344507
		 123 10.214595963499823 146 10.214595963499823 151 -43.421359592418611 153 -50.276443602448168
		 157 -27.45366299371069 160 -6.8478328178930514 163 18.673951064490581;
createNode animCurveTA -n "Bony_Neck01C_rotateY";
	rename -uid "2A85CB49-4BCC-BDFD-6109-00B9EBEED275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  3 0 6 -10.219214476971095 9 10.080508848112535
		 12 29.61418867455356 15 2.0414163445045022 18 -17.026036477247359 21 27.793192061318763
		 24 -13.33806922985937 27 8.4589359564479096 30 8.4589359564479096 33 8.4589359564479096
		 36 8.4589359564479096 39 6.843814734782649 42 6.8438147347826295 45 6.8438147347826073
		 48 6.8438147347826126 52 6.8438147347826126 58 17.302440224545478 61 20.578431609182438
		 64 20.578431609182413 67 14.361391004416163 70 -7.5335027471739968 73 -25.830288499927196
		 79 -15.90007805563458 84 -15.900078055634632 87 14.570751195956479 90 14.57075119595646
		 96 14.570751195956444 99 47.237180132683356 103 12.753057496196618 108 -5.1448833334799007
		 110 -27.8593888535299 113 -24.788743364474424 116 -17.977183204358592 123 -5.1448833334799007
		 146 -5.1448833334799007 151 -5.1448833334799007 153 -5.1448833334798998 157 -5.144883333479898
		 160 3.0674810468087474 163 3.0674810468087466;
createNode animCurveTA -n "Bony_Neck01C_rotateZ";
	rename -uid "DCC9795B-4BFF-7F1A-30DB-6285D97BDBCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  3 0 6 0.74144803586057706 9 -0.73117160596296427
		 12 -2.3383725850986412 15 -0.14659772607094701 18 1.2595440389129098 21 -9.1301208960283748
		 24 0.39748587274269254 27 -4.4063854197605377 30 -4.4063854197605377 33 -4.4063854197605377
		 36 -4.4063854197605377 39 -4.9380643507321587 42 -4.9380643507321569 45 -4.9380643507321542
		 48 -4.9380643507321622 52 -4.9380643507321622 58 -28.16574040855895 61 -37.451332496385021
		 64 -37.451332496385042 67 -3.7609979719127242 70 13.66834193452225 73 23.04998363540918
		 79 3.2439753819857704 84 3.2439753819858028 87 10.16834959732018 90 10.168349597320169
		 96 10.168349597320161 99 3.4849160683326499 103 3.1935579847285966 108 -0.059810687724911459
		 110 -4.5765792508264855 113 -3.9659828633703347 116 -2.611507382064826 123 -0.059810687724911459
		 146 -0.059810687724911459 151 -0.059810687724909932 153 -0.059810687724908926 157 -0.059810687724908329
		 160 -1.0466266075763762 163 -1.0466266075763822;
createNode animCurveTA -n "Bony_lThumbJ2C_rotateX";
	rename -uid "5621143E-4118-45BD-8525-9AB686AA969F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  42 23.76139054221699 52 23.76139054221699
		 70 23.76139054221699 73 23.504693270351808 81 23.504693270351808 92 23.504693270351808
		 93 21.713914978972614;
createNode animCurveTA -n "Bony_lThumbJ2C_rotateY";
	rename -uid "85A4E9F4-49CD-0750-22CA-F18F060FDD10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  42 0 52 0 70 0 73 3.5865121506686619 81 3.5865121506686619
		 92 3.5865121506686619 93 9.8918469315852491;
createNode animCurveTA -n "Bony_lThumbJ2C_rotateZ";
	rename -uid "C32BFB9B-436C-C402-13D7-7BBDC51A7A1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  42 11.168834701211232 52 11.168834701211232
		 70 11.168834701211232 73 2.9837911269829052 81 2.9837911269829052 92 2.9837911269829052
		 93 -12.165639209435648;
createNode animCurveTL -n "Bony_MainHipC_translateX";
	rename -uid "C3213515-47E7-6BA2-EC56-748BB370F68E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTL -n "Bony_MainHipC_translateY";
	rename -uid "4E3D5DB3-46D3-0D92-1539-E698E43DD9AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTL -n "Bony_MainHipC_translateZ";
	rename -uid "0A916152-4F92-5FEC-E5BC-85B11E2C2448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTL -n "Bony_SpineTopIKC_translateX";
	rename -uid "6C172ED6-452D-9B0E-AA06-7C81BE79427E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  52 0 153 0;
createNode animCurveTL -n "Bony_SpineTopIKC_translateY";
	rename -uid "3F73D02B-46A9-DE50-1ADF-14A7845823E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  52 0 153 0;
createNode animCurveTL -n "Bony_SpineTopIKC_translateZ";
	rename -uid "12F58CAB-4D4B-981F-E239-E1A6C5BCDFED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  52 0 153 0;
createNode animCurveTA -n "Bony_HeadC_rotateX";
	rename -uid "A68F0DD5-4E4D-53FD-3A81-3086EABA4AAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_HeadC_rotateY";
	rename -uid "C3455BBA-4730-0AAD-1E36-539136E3575E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_HeadC_rotateZ";
	rename -uid "3984BBCB-4C32-D829-791D-DBA9FD357852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTU -n "Bony_HeadC_HeadOrient";
	rename -uid "FD81225C-4D94-8070-5455-B1B0A4ECF5BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 1;
createNode animCurveTA -n "Bony_lToeIKC_rotateX";
	rename -uid "1E5031BD-42AB-BD06-7671-ED86EC1EA330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lToeIKC_rotateY";
	rename -uid "8C56DD21-4F8E-E964-F800-16A1FC00CAE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lToeIKC_rotateZ";
	rename -uid "CB289468-4B32-38F6-55AC-088ACAA3B634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_SpineTopIKC_rotateX";
	rename -uid "4A2B872E-4158-D5EF-239E-01B8AF840F8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  52 0 153 3.3252599477334654;
createNode animCurveTA -n "Bony_SpineTopIKC_rotateY";
	rename -uid "470A0EB8-494D-3377-C794-9794A29A18F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  52 0 153 0;
createNode animCurveTA -n "Bony_SpineTopIKC_rotateZ";
	rename -uid "0DA4F205-4899-F5EA-260F-649827AD46E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  52 0 153 0;
createNode animCurveTA -n "Bony_rClavicleC_rotateX";
	rename -uid "F6702984-4BD0-4EB0-84CF-D8A3F685C7A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_rClavicleC_rotateY";
	rename -uid "EB8993C8-49B1-CE1F-F584-2BB784120291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_rClavicleC_rotateZ";
	rename -uid "6DAB848A-4912-7DCF-A93C-4688DE97BB54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_MainHipC_rotateX";
	rename -uid "41565E93-4CA4-BDEB-2C68-8C8D812A01C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_MainHipC_rotateY";
	rename -uid "2D4EF67B-4FCF-5866-A74E-2581BE5F4140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_MainHipC_rotateZ";
	rename -uid "A560F982-4F06-8DB9-13B4-D5A5EC7749D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTU -n "Bony_rLegSwitchC_SwitchIkFk";
	rename -uid "C7F33D22-4612-D93E-0644-5A94364238A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_rToeIKC_rotateX";
	rename -uid "9479120A-4AEA-45DE-DFA7-A1BB244E7FEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_rToeIKC_rotateY";
	rename -uid "173BA074-459E-58F1-4F3E-148DEDF3D000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_rToeIKC_rotateZ";
	rename -uid "7A3536FB-4A29-552F-9ACD-349AB1AD59A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTU -n "Bony_lLegSwitchC_SwitchIkFk";
	rename -uid "0133F2D9-42C7-1C34-3451-E78A0B58DEB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lClavicleC_rotateX";
	rename -uid "2506AC26-41D8-E586-317B-3E83C05D90B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lClavicleC_rotateY";
	rename -uid "955CBF0A-45F0-93E3-3266-2C96462644DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lClavicleC_rotateZ";
	rename -uid "3DB0BFB2-4169-6EF6-4269-CEBABF4656C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lPalmC_rotateX";
	rename -uid "69EBD528-445A-5D8F-6F45-FDBC917346A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lPalmC_rotateY";
	rename -uid "70B78A88-4896-E979-D21E-839CEC34EE36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_lPalmC_rotateZ";
	rename -uid "E93FE80D-49AC-E09F-7BF3-EE8DEC0C04CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTU -n "Bony_rArmSwitchC_SwitchIkFk";
	rename -uid "A84779E2-4680-E8D1-6E0A-EC9040D290DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 1;
createNode animCurveTA -n "Bony_rPalmC_rotateX";
	rename -uid "3A35419F-48DE-7B44-D3B4-A8A788E81FB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 -1.169519240796322;
createNode animCurveTA -n "Bony_rPalmC_rotateY";
	rename -uid "57A0506D-4B37-2B43-4BF5-5FADEFAC08BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTA -n "Bony_rPalmC_rotateZ";
	rename -uid "B51EBB7D-4E39-B9F9-AFA4-03BA0399E0BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  52 0;
createNode animCurveTL -n "Bony_lKneeIKC_translateX";
	rename -uid "B8CC030E-4451-9475-4963-15B4EA358DD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  61 2.5646462633974729 63 2.5646462633974729
		 64 2.5681122362459892 67 2.5732191552151362 70 0.6362552141336455 73 0.14842747505327442
		 76 -0.3392352244949165 92 -0.3392352244949165 93 -0.84413049417828423 96 -0.93239184782084772
		 99 -2.1290035623488883 102 -1.6078914144683176 105 -0.33062313438401303 122 -0.32240348146839753
		 131 -0.074567742345383672 149 -0.62828683812691466 162 -0.63423540493910091;
createNode animCurveTL -n "Bony_lKneeIKC_translateY";
	rename -uid "BEA110F3-471D-0756-6E60-B6AF5AA08368";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  61 0.35329075834592077 63 0.35329075834592077
		 64 0.31961268795948911 67 0.26998991709031311 70 0.26998982881624833 73 0.26998980658427135
		 76 0.26998978435981574 92 0.26998978435981574 93 0.26998976135001307 96 0.26998975732764069
		 99 0.26998970279395718 102 0.36239450715032967 105 0.37607579417571585 122 0.17942362496452405
		 131 -1.214892886911636 149 0.20595569081614609 162 0.2637565624776344;
createNode animCurveTL -n "Bony_lKneeIKC_translateZ";
	rename -uid "4965368F-4D42-3FF1-13BB-48A559C9D74E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  61 12.200433603740237 63 12.200433603740237
		 64 11.038144542791047 67 9.3255760050618761 70 9.3197999363703623 73 9.3183452234194402
		 76 9.3168910026200038 92 9.3168910026200038 93 9.3153853939208098 96 9.3151221966404414
		 99 9.3115538744256607 102 12.502186640456312 105 12.978162792958978 122 10.221763103694359
		 131 10.787684170197739 149 10.744862968972448 162 12.739672056150512;
createNode animCurveTU -n "Bony_lKneeIKC_Follow";
	rename -uid "D2A24CA9-4763-C18B-B6A4-DD9590BCBAC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  61 0 63 0 64 0 67 0 70 0 73 0 76 0 92 0
		 93 0 96 0 99 0 102 0 105 0 122 0 131 0 149 0 162 0;
	setAttr -s 17 ".kot[0:16]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Bony_rKneeIKC_translateX";
	rename -uid "785A8142-410F-9DF2-6CED-FD9D01B17B87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  61 -0.14853866582612613 64 2.1131829698284958
		 70 3.0561487008272397 73 3.0502590297855021 76 2.1204492100134362 92 2.1204492100134362
		 93 1.6544588881857012 99 1.1364991794128452 102 1.1364991794128452 105 -0.63290389321885288
		 122 -0.64195587888363459 128 -0.123782785411972 133 -0.12353496052052564 149 -0.11585537915993062;
createNode animCurveTL -n "Bony_rKneeIKC_translateY";
	rename -uid "B47D461F-4C4A-CC98-D469-22BCC3A76AAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  61 0.36122332096433751 64 0.36122321788995487
		 70 0.34958068163631184 73 0.29235208678981889 76 0.29235212916442777 92 0.29235212916442777
		 93 0.27431352792985481 99 0.27431355153504777 102 0.27431355153504777 105 0.375266266126079
		 122 0.28731017885144106 128 0.28731015523652298 133 -2.5823736380989768 149 -0.3262241070541429;
createNode animCurveTL -n "Bony_rKneeIKC_translateZ";
	rename -uid "88FE047F-4FD6-1387-6FB1-3FB08C8AC765";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  61 12.467001549520695 64 12.460257046305344
		 70 12.055638742658507 73 10.080579928410966 76 10.083352641560211 92 10.083352641560211
		 93 9.4621923181238667 99 9.4637368852651811 102 9.4637368852651811 105 12.953096060151301
		 122 9.9175777863849195 128 9.9160325829257783 133 9.9991827708364323 149 12.574441794406445;
createNode animCurveTU -n "Bony_rKneeIKC_Follow";
	rename -uid "5E8B1C62-4D03-3DDB-D327-BDB72D3CDBBB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  61 0 64 0 70 0 73 0 76 0 92 0 93 0 99 0
		 102 0 105 0 122 0 128 0 133 0 149 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTA -n "Bony_rThumbJ2C_rotateX";
	rename -uid "898012CC-4124-AA6E-BA2B-5E95B25ED1E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  70 0 81 0 92 0 93 0;
createNode animCurveTA -n "Bony_rThumbJ2C_rotateY";
	rename -uid "DADE0245-428F-D979-B58F-E3AE26D69BE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  70 0 81 0 92 0 93 0;
createNode animCurveTA -n "Bony_rThumbJ2C_rotateZ";
	rename -uid "2AA5B8F8-470B-F2A9-EE20-219B5506AE96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  70 0 81 0 92 0 93 -20.435218241537754;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "07B694C3-480B-4010-FC37-8D876D9166F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 0;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "8D700993-4251-E131-C297-919F29CCA9C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 0;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "4098783B-490E-68DD-2E85-99BDA3E91FF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 0;
createNode animCurveTU -n "pCube1_visibility";
	rename -uid "2B397CD1-4829-ED25-8BD7-9FA80BCEB2A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "1EBD02E9-43CC-5825-52D8-2E88658C2612";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 0;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "FADB3165-4DFE-D8E3-A977-C7AD0FCAE7FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 0;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "E2878187-4C94-1BE2-9F9A-F595FC0DE006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 -19.413597119849086;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "6E626590-41BC-BADC-0140-B58B05253D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 24.097491106167457;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "61E3293A-4DD3-8388-D0D7-BC82398983D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 0.23709095513714254;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "1E56669C-4480-4B9C-AD77-31BF9473972C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  92 24.219358257552351;
createNode animCurveTA -n "pCube3_rotateX";
	rename -uid "0F8EF19D-4E75-2637-73D6-4D8F0517CDDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 0 140 0 143 4.5352401682320815 146 12.143073822145004
		 149 19.012160461260304 152 26.261834382510703 155 35.598434170748256 158 46.943945819771912
		 161 60.716044470416129 164 71.694086749545036 167 81.659942537836159 169 89.184921128777958;
createNode animCurveTA -n "pCube3_rotateY";
	rename -uid "70CD4829-4579-4E50-221C-208E75BE5785";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 0 140 0 143 0 146 0 149 0 152 0 155 0
		 158 0 161 0 164 0 167 0 169 0;
createNode animCurveTA -n "pCube3_rotateZ";
	rename -uid "4A7088C0-4610-B7B4-91C2-848FDF824B70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 0 140 0 143 0 146 0 149 0 152 0 155 0
		 158 0 161 0 164 0 167 0 169 0;
createNode animCurveTU -n "pCube3_visibility";
	rename -uid "A5A173B2-46D3-F765-A20B-058ED8FEE264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 1 140 1 143 1 146 1 149 1 152 1 155 1
		 158 1 161 1 164 1 167 1 169 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTL -n "pCube3_translateX";
	rename -uid "A820B304-40FF-8989-4592-58AD530040BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 0 140 0 143 0 146 0 149 0 152 0 155 0
		 158 0 161 0 164 0 167 0 169 0;
createNode animCurveTL -n "pCube3_translateY";
	rename -uid "BBC9EBA6-41B1-8D5A-87AC-42ABC8A57086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 0.26215010935461591 140 0.26215010935461591
		 143 0.26215010935461591 146 0.26215010935461591 149 0.26215010935461591 152 0.26215010935461591
		 155 0.26215010935461591 158 -2.5623035842686379 161 -4.7624286168903538 164 -10.970074362392491
		 167 -24.315342180202869 169 -25.48169964446188;
createNode animCurveTL -n "pCube3_translateZ";
	rename -uid "D7A4EF42-4240-3AE1-7D72-00A0BFB0D9F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 3.3292318938590668 140 3.3292318938590668
		 143 3.3292318938590668 146 3.3292318938590668 149 3.3292318938590668 152 3.3292318938590668
		 155 3.3292318938590668 158 4.2797790298810465 161 5.3127000818801946 164 5.3127000818801946
		 167 8.6086378851144172 169 8.6086378851144172;
createNode animCurveTU -n "pCube3_scaleX";
	rename -uid "306B21D5-4E0E-2774-CCAD-1ABA532B1AA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 10.295061213519991 140 10.295061213519991
		 143 10.295061213519991 146 10.295061213519991 149 10.295061213519991 152 10.295061213519991
		 155 10.295061213519991 158 10.295061213519991 161 10.295061213519991 164 10.295061213519991
		 167 10.295061213519991 169 10.295061213519991;
createNode animCurveTU -n "pCube3_scaleY";
	rename -uid "8E636E67-4BE5-DDA2-230E-8D9134EFB005";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 0.23709095513714254 140 0.23709095513714254
		 143 0.23709095513714254 146 0.23709095513714254 149 0.23709095513714254 152 0.23709095513714254
		 155 0.23709095513714254 158 0.23709095513714254 161 0.23709095513714254 164 0.23709095513714254
		 167 0.23709095513714254 169 0.23709095513714254;
createNode animCurveTU -n "pCube3_scaleZ";
	rename -uid "125B3E2D-4228-A911-A83A-7697D37DF3CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  135 24.219358257552351 140 24.219358257552351
		 143 24.219358257552351 146 24.219358257552351 149 24.219358257552351 152 24.219358257552351
		 155 24.219358257552351 158 24.219358257552351 161 24.219358257552351 164 24.219358257552351
		 167 24.219358257552351 169 24.219358257552351;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "1299A048-4B84-1CE2-0822-5C8B54588542";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 30;
	setAttr ".unw" 30;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 131 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
	setAttr -s 4 ".l";
select -ne :defaultTextureList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "transmission";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aovs[2].aov_name" -type "string" "specular";
	setAttr ".aovs[3].aov_name" -type "string" "shadow";
	setAttr ".aovs[4].aov_name" -type "string" "ID";
	setAttr ".aovs[5].aov_name" -type "string" "shadow_diff";
	setAttr ".aovs[6].aov_name" -type "string" "shadow_mask";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_transmission","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1]","ai_aov_specular","aiCustomAOVs[2].aovName","ai_aov_shadow"
		,"aiCustomAOVs[3].aovName","ai_aov_ID","aiCustomAOVs[4].aovName","ai_aov_shadow_diff"
		,"aiCustomAOVs[5].aovName","ai_aov_shadow_mask","aiCustomAOVs[6].aovName"} ;
select -ne :initialParticleSE;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ro" yes;
	setAttr -s 7 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "transmission";
	setAttr ".aovs[1].aov_name" -type "string" "diffuse";
	setAttr ".aovs[2].aov_name" -type "string" "specular";
	setAttr ".aovs[3].aov_name" -type "string" "shadow";
	setAttr ".aovs[4].aov_name" -type "string" "ID";
	setAttr ".aovs[5].aov_name" -type "string" "shadow_diff";
	setAttr ".aovs[6].aov_name" -type "string" "shadow_mask";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_transmission","aiCustomAOVs[0].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[1]","ai_aov_specular","aiCustomAOVs[2].aovName","ai_aov_shadow"
		,"aiCustomAOVs[3].aovName","ai_aov_ID","aiCustomAOVs[4].aovName","ai_aov_shadow_diff"
		,"aiCustomAOVs[5].aovName","ai_aov_shadow_mask","aiCustomAOVs[6].aovName"} ;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".fs" 0;
	setAttr ".ef" 173;
	setAttr ".pff" yes;
	setAttr ".peie" 2;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 4 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 6 ".sol";
connectAttr "Bony_ROOTC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[1]";
connectAttr "Bony_ROOTC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[2]";
connectAttr "Bony_ROOTC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[3]";
connectAttr "Bony_ROOTC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[4]";
connectAttr "Bony_ROOTC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[5]";
connectAttr "Bony_ROOTC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[6]";
connectAttr "Bony_MainHipC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[7]";
connectAttr "Bony_MainHipC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[8]";
connectAttr "Bony_MainHipC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[9]";
connectAttr "Bony_MainHipC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[10]";
connectAttr "Bony_MainHipC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[11]";
connectAttr "Bony_MainHipC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[12]";
connectAttr "Bony_Spine01FKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[13]";
connectAttr "Bony_Spine01FKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[14]";
connectAttr "Bony_Spine01FKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[15]";
connectAttr "Bony_SpineTopIKC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[16]";
connectAttr "Bony_SpineTopIKC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[17]";
connectAttr "Bony_SpineTopIKC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[18]";
connectAttr "Bony_SpineTopIKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[19]";
connectAttr "Bony_SpineTopIKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[20]";
connectAttr "Bony_SpineTopIKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[21]";
connectAttr "Bony_Spine02FKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[22]";
connectAttr "Bony_Spine02FKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[23]";
connectAttr "Bony_Spine02FKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[24]";
connectAttr "Bony_Spine03FKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[25]";
connectAttr "Bony_Spine03FKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[26]";
connectAttr "Bony_Spine03FKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[27]";
connectAttr "Bony_HeadC_HeadOrient.o" "Ultimate_Bony_v1_0_5RN.phl[28]";
connectAttr "Bony_HeadC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[29]";
connectAttr "Bony_HeadC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[30]";
connectAttr "Bony_HeadC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[31]";
connectAttr "Bony_Neck01C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[32]";
connectAttr "Bony_Neck01C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[33]";
connectAttr "Bony_Neck01C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[34]";
connectAttr "Bony_lLegSwitchC_SwitchIkFk.o" "Ultimate_Bony_v1_0_5RN.phl[35]";
connectAttr "Bony_lFootIKC_Stretch.o" "Ultimate_Bony_v1_0_5RN.phl[36]";
connectAttr "Bony_lFootIKC_KneeLock.o" "Ultimate_Bony_v1_0_5RN.phl[37]";
connectAttr "Bony_lFootIKC_footTilt.o" "Ultimate_Bony_v1_0_5RN.phl[38]";
connectAttr "Bony_lFootIKC_heelBall.o" "Ultimate_Bony_v1_0_5RN.phl[39]";
connectAttr "Bony_lFootIKC_toeUpDn.o" "Ultimate_Bony_v1_0_5RN.phl[40]";
connectAttr "Bony_lFootIKC_ballSwivel.o" "Ultimate_Bony_v1_0_5RN.phl[41]";
connectAttr "Bony_lFootIKC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[42]";
connectAttr "Bony_lFootIKC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[43]";
connectAttr "Bony_lFootIKC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[44]";
connectAttr "Bony_lFootIKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[45]";
connectAttr "Bony_lFootIKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[46]";
connectAttr "Bony_lFootIKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[47]";
connectAttr "Bony_lKneeIKC_Follow.o" "Ultimate_Bony_v1_0_5RN.phl[48]";
connectAttr "Bony_lKneeIKC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[49]";
connectAttr "Bony_lKneeIKC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[50]";
connectAttr "Bony_lKneeIKC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[51]";
connectAttr "Bony_lWristFKC_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[52]";
connectAttr "Bony_lWristFKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[53]";
connectAttr "Bony_lWristFKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[54]";
connectAttr "Bony_lWristFKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[55]";
connectAttr "Bony_lElbowFKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[56]";
connectAttr "Bony_lShoulderFKC_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[57]";
connectAttr "Bony_lShoulderFKC_ShoulderOrient.o" "Ultimate_Bony_v1_0_5RN.phl[58]"
		;
connectAttr "Bony_lShoulderFKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[59]";
connectAttr "Bony_lShoulderFKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[60]";
connectAttr "Bony_lShoulderFKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[61]";
connectAttr "Bony_lClavicleC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[62]";
connectAttr "Bony_lClavicleC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[63]";
connectAttr "Bony_lClavicleC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[64]";
connectAttr "Bony_lPalmC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[65]";
connectAttr "Bony_lPalmC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[66]";
connectAttr "Bony_lPalmC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[67]";
connectAttr "Bony_lFinger1J1C_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[68]";
connectAttr "Bony_lFinger1J1C_scaleY.o" "Ultimate_Bony_v1_0_5RN.phl[69]";
connectAttr "Bony_lFinger1J1C_scaleZ.o" "Ultimate_Bony_v1_0_5RN.phl[70]";
connectAttr "Bony_lFinger1J1C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[71]";
connectAttr "Bony_lFinger1J1C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[72]";
connectAttr "Bony_lFinger1J1C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[73]";
connectAttr "Bony_lFinger1J2C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[74]";
connectAttr "Bony_lFinger1J2C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[75]";
connectAttr "Bony_lFinger1J2C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[76]";
connectAttr "Bony_lFinger1J3C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[77]";
connectAttr "Bony_lFinger1J3C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[78]";
connectAttr "Bony_lFinger1J3C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[79]";
connectAttr "Bony_lFinger2J1C_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[80]";
connectAttr "Bony_lFinger2J1C_scaleY.o" "Ultimate_Bony_v1_0_5RN.phl[81]";
connectAttr "Bony_lFinger2J1C_scaleZ.o" "Ultimate_Bony_v1_0_5RN.phl[82]";
connectAttr "Bony_lFinger2J1C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[83]";
connectAttr "Bony_lFinger2J1C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[84]";
connectAttr "Bony_lFinger2J1C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[85]";
connectAttr "Bony_lFinger2J2C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[86]";
connectAttr "Bony_lFinger2J2C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[87]";
connectAttr "Bony_lFinger2J2C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[88]";
connectAttr "Bony_lFinger2J3C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[89]";
connectAttr "Bony_lFinger2J3C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[90]";
connectAttr "Bony_lFinger2J3C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[91]";
connectAttr "Bony_lToeIKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[92]";
connectAttr "Bony_lToeIKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[93]";
connectAttr "Bony_lToeIKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[94]";
connectAttr "Bony_rLegSwitchC_SwitchIkFk.o" "Ultimate_Bony_v1_0_5RN.phl[95]";
connectAttr "Bony_rFootIKC_Stretch.o" "Ultimate_Bony_v1_0_5RN.phl[96]";
connectAttr "Bony_rFootIKC_KneeLock.o" "Ultimate_Bony_v1_0_5RN.phl[97]";
connectAttr "Bony_rFootIKC_footTilt.o" "Ultimate_Bony_v1_0_5RN.phl[98]";
connectAttr "Bony_rFootIKC_heelBall.o" "Ultimate_Bony_v1_0_5RN.phl[99]";
connectAttr "Bony_rFootIKC_toeUpDn.o" "Ultimate_Bony_v1_0_5RN.phl[100]";
connectAttr "Bony_rFootIKC_ballSwivel.o" "Ultimate_Bony_v1_0_5RN.phl[101]";
connectAttr "Bony_rFootIKC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[102]";
connectAttr "Bony_rFootIKC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[103]";
connectAttr "Bony_rFootIKC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[104]";
connectAttr "Bony_rFootIKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[105]";
connectAttr "Bony_rFootIKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[106]";
connectAttr "Bony_rFootIKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[107]";
connectAttr "Bony_rKneeIKC_Follow.o" "Ultimate_Bony_v1_0_5RN.phl[108]";
connectAttr "Bony_rKneeIKC_translateX.o" "Ultimate_Bony_v1_0_5RN.phl[109]";
connectAttr "Bony_rKneeIKC_translateY.o" "Ultimate_Bony_v1_0_5RN.phl[110]";
connectAttr "Bony_rKneeIKC_translateZ.o" "Ultimate_Bony_v1_0_5RN.phl[111]";
connectAttr "Bony_rArmSwitchC_SwitchIkFk.o" "Ultimate_Bony_v1_0_5RN.phl[112]";
connectAttr "Bony_rWristFKC_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[113]";
connectAttr "Bony_rWristFKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[114]";
connectAttr "Bony_rWristFKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[115]";
connectAttr "Bony_rWristFKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[116]";
connectAttr "Bony_rElbowFKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[117]";
connectAttr "Bony_rShoulderFKC_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[118]";
connectAttr "Bony_rShoulderFKC_ShoulderOrient.o" "Ultimate_Bony_v1_0_5RN.phl[119]"
		;
connectAttr "Bony_rShoulderFKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[120]";
connectAttr "Bony_rShoulderFKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[121]";
connectAttr "Bony_rShoulderFKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[122]";
connectAttr "Bony_rClavicleC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[123]";
connectAttr "Bony_rClavicleC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[124]";
connectAttr "Bony_rClavicleC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[125]";
connectAttr "Bony_rPalmC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[126]";
connectAttr "Bony_rPalmC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[127]";
connectAttr "Bony_rPalmC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[128]";
connectAttr "Bony_rFinger1J1C_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[129]";
connectAttr "Bony_rFinger1J1C_scaleY.o" "Ultimate_Bony_v1_0_5RN.phl[130]";
connectAttr "Bony_rFinger1J1C_scaleZ.o" "Ultimate_Bony_v1_0_5RN.phl[131]";
connectAttr "Bony_rFinger1J1C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[132]";
connectAttr "Bony_rFinger1J1C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[133]";
connectAttr "Bony_rFinger1J1C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[134]";
connectAttr "Bony_rFinger1J2C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[135]";
connectAttr "Bony_rFinger1J2C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[136]";
connectAttr "Bony_rFinger1J2C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[137]";
connectAttr "Bony_rFinger1J3C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[138]";
connectAttr "Bony_rFinger1J3C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[139]";
connectAttr "Bony_rFinger1J3C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[140]";
connectAttr "Bony_rFinger2J1C_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[141]";
connectAttr "Bony_rFinger2J1C_scaleY.o" "Ultimate_Bony_v1_0_5RN.phl[142]";
connectAttr "Bony_rFinger2J1C_scaleZ.o" "Ultimate_Bony_v1_0_5RN.phl[143]";
connectAttr "Bony_rFinger2J1C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[144]";
connectAttr "Bony_rFinger2J1C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[145]";
connectAttr "Bony_rFinger2J1C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[146]";
connectAttr "Bony_rFinger2J2C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[147]";
connectAttr "Bony_rFinger2J2C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[148]";
connectAttr "Bony_rFinger2J2C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[149]";
connectAttr "Bony_rFinger2J3C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[150]";
connectAttr "Bony_rFinger2J3C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[151]";
connectAttr "Bony_rFinger2J3C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[152]";
connectAttr "Bony_rToeIKC_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[153]";
connectAttr "Bony_rToeIKC_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[154]";
connectAttr "Bony_rToeIKC_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[155]";
connectAttr "Bony_lThumbJ1C_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[156]";
connectAttr "Bony_lThumbJ1C_scaleY.o" "Ultimate_Bony_v1_0_5RN.phl[157]";
connectAttr "Bony_lThumbJ1C_scaleZ.o" "Ultimate_Bony_v1_0_5RN.phl[158]";
connectAttr "Bony_lThumbJ1C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[159]";
connectAttr "Bony_lThumbJ1C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[160]";
connectAttr "Bony_lThumbJ1C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[161]";
connectAttr "Bony_lThumbJ2C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[162]";
connectAttr "Bony_lThumbJ2C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[163]";
connectAttr "Bony_lThumbJ2C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[164]";
connectAttr "Bony_lThumbJ3C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[165]";
connectAttr "Bony_lThumbJ3C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[166]";
connectAttr "Bony_lThumbJ3C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[167]";
connectAttr "Bony_rThumbJ1C_scaleX.o" "Ultimate_Bony_v1_0_5RN.phl[168]";
connectAttr "Bony_rThumbJ1C_scaleY.o" "Ultimate_Bony_v1_0_5RN.phl[169]";
connectAttr "Bony_rThumbJ1C_scaleZ.o" "Ultimate_Bony_v1_0_5RN.phl[170]";
connectAttr "Bony_rThumbJ1C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[171]";
connectAttr "Bony_rThumbJ1C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[172]";
connectAttr "Bony_rThumbJ1C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[173]";
connectAttr "Bony_rThumbJ2C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[174]";
connectAttr "Bony_rThumbJ2C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[175]";
connectAttr "Bony_rThumbJ2C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[176]";
connectAttr "Bony_rThumbJ3C_rotateZ.o" "Ultimate_Bony_v1_0_5RN.phl[177]";
connectAttr "Bony_rThumbJ3C_rotateX.o" "Ultimate_Bony_v1_0_5RN.phl[178]";
connectAttr "Bony_rThumbJ3C_rotateY.o" "Ultimate_Bony_v1_0_5RN.phl[179]";
connectAttr "Ultimate_Bony_v1_0_5RN.phl[180]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[181]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[182]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[183]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[184]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[185]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[186]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[187]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[188]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[189]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[190]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[191]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[192]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[193]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[194]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[195]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[196]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[197]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[198]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[199]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[200]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[201]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[202]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[203]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[204]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[205]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[206]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[207]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[208]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[209]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[210]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[211]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[212]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[213]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[214]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[215]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[216]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[217]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[218]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[219]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[220]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[221]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[222]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[223]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[224]" "standardSurface2SG.dsm" -na;
connectAttr "Ultimate_Bony_v1_0_5RN.phl[225]" "standardSurface2SG.dsm" -na;
connectAttr "pCube1_rotateX.o" "pCube1.rx";
connectAttr "pCube1_rotateY.o" "pCube1.ry";
connectAttr "pCube1_rotateZ.o" "pCube1.rz";
connectAttr "pCube1_visibility.o" "pCube1.v";
connectAttr "pCube1_translateX.o" "pCube1.tx";
connectAttr "pCube1_translateY.o" "pCube1.ty";
connectAttr "pCube1_translateZ.o" "pCube1.tz";
connectAttr "pCube1_scaleX.o" "pCube1.sx";
connectAttr "pCube1_scaleY.o" "pCube1.sy";
connectAttr "pCube1_scaleZ.o" "pCube1.sz";
connectAttr "file1.oc" "aiSkyDomeLightShape1.sc";
connectAttr "pCube3_rotateX.o" "pCube3.rx";
connectAttr "pCube3_rotateY.o" "pCube3.ry";
connectAttr "pCube3_rotateZ.o" "pCube3.rz";
connectAttr "pCube3_visibility.o" "pCube3.v";
connectAttr "pCube3_translateX.o" "pCube3.tx";
connectAttr "pCube3_translateY.o" "pCube3.ty";
connectAttr "pCube3_translateZ.o" "pCube3.tz";
connectAttr "pCube3_scaleX.o" "pCube3.sx";
connectAttr "pCube3_scaleY.o" "pCube3.sy";
connectAttr "pCube3_scaleZ.o" "pCube3.sz";
connectAttr "pCube4_translateX.o" "pCube4.tx";
connectAttr "pCube4_translateY.o" "pCube4.ty";
connectAttr "pCube4_translateZ.o" "pCube4.tz";
connectAttr "pCube4_visibility.o" "pCube4.v";
connectAttr "pCube4_rotateX.o" "pCube4.rx";
connectAttr "pCube4_rotateY.o" "pCube4.ry";
connectAttr "pCube4_rotateZ.o" "pCube4.rz";
connectAttr "pCube4_scaleX.o" "pCube4.sx";
connectAttr "pCube4_scaleY.o" "pCube4.sy";
connectAttr "pCube4_scaleZ.o" "pCube4.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiLambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiLambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "aiAOV_transmission.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_specular.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_shadow.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_diffuse.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_shadow_diff.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_shadow_mask.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "aiAOVDriver4.msg" "aiAOV_transmission.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_transmission.out[0].ftr";
connectAttr "aiAOVDriver3.msg" "aiAOV_specular.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_specular.out[0].ftr";
connectAttr "aiAOVDriver2.msg" "aiAOV_shadow.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_shadow.out[0].ftr";
connectAttr "aiStandardSurface1.out" "aiLambert1SG.ss";
connectAttr "pCubeShape4.iog" "aiLambert1SG.dsm" -na;
connectAttr "aiLambert1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "aiStandardSurface1.msg" "materialInfo1.t" -na;
connectAttr "aiStandardSurface2.out" "aiStandardSurface2SG.ss";
connectAttr "pCubeShape3.iog" "aiStandardSurface2SG.dsm" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "aiStandardSurface2.msg" "materialInfo2.m";
connectAttr "aiStandardSurface2.msg" "materialInfo2.t" -na;
connectAttr "aiAOVDriver5.msg" "aiAOV_diffuse.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_diffuse.out[0].ftr";
connectAttr "standardSurface2.oc" "standardSurface2SG.ss";
connectAttr "standardSurface2SG.msg" "materialInfo3.sg";
connectAttr "standardSurface2.msg" "materialInfo3.m";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_shadow_diff.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_shadow_diff.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_shadow_mask.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_shadow_mask.out[0].ftr";
connectAttr "aiLambert1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape3.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight3.iog" ":defaultLightSet.dsm" -na;
// End of AOV_SO.ma
