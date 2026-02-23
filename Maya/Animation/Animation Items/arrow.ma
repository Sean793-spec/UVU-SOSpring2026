//Maya ASCII 2024 scene
//Name: arrow.ma
//Last modified: Fri, Sep 06, 2024 01:04:34 AM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.5.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "DB69C4A4-4B95-F79E-E0B2-8E9DD054FAE9";
createNode transform -s -n "persp";
	rename -uid "A2CCCAF2-4ADF-9850-4B92-8C80A896FCFD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.521597116624406 57.590073024253023 102.0112491976609 ;
	setAttr ".r" -type "double3" -29.138352729644357 1.8000000000001151 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D69C37F2-4E4A-472C-9113-97917099BD17";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 119.52167760595536;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 11.590730495834872 0 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E11331A1-4388-4EC2-78A9-8FA38D5FE95D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "462A1343-4D03-F12E-7501-1DBFF19C4A96";
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
	rename -uid "13D5CEA9-4127-B648-AA9C-6FA851E1CF8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0663937307296489 0.69060979997265559 1001.7016446642542 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C5BF1AC4-47E1-8BC3-9355-4D98467271D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.7016446642542;
	setAttr ".ow" 70.070332781840705;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.31482586921566025 -6.6613381477509392e-16 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "AE9D6765-4F55-90ED-686E-E594C1D87576";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.3349512447993907 -0.66394909172036642 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D7114438-4515-B204-A0E1-9998634F1161";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.6827895044863244;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Arrow";
	rename -uid "522ECE1D-437F-17AA-93CE-DDB658E28017";
createNode transform -n "Geometry" -p "Arrow";
	rename -uid "24C00BC9-41F5-2367-DBBF-64B8E3DFDB4E";
createNode transform -n "Arrow_Geo" -p "Geometry";
	rename -uid "7E5A5A59-4642-BC83-839F-01986F90BD31";
	setAttr ".rp" -type "double3" 0.18058941890027391 0 0 ;
	setAttr ".sp" -type "double3" 0.18058941890027391 0 0 ;
createNode mesh -n "Arrow_GeoShape" -p "Arrow_Geo";
	rename -uid "BD71FD56-4EB4-D0CD-D90A-AA99458A252B";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5625 0.48179692029953003 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Arrow_GeoShapeOrig" -p "Arrow_Geo";
	rename -uid "E9DEC2CD-4CCE-8CE8-71EC-EFBC16EBE3B0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 11 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[2]" "f[6]" "f[11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "e[27:28]" "e[32]" "e[34]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[15:18]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[15:18]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[15:18]";
	setAttr ".gtag[6].gtagnm" -type "string" "front";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 3 "f[0]" "f[5]" "f[10]";
	setAttr ".gtag[7].gtagnm" -type "string" "left";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 3 "f[4]" "f[8]" "f[13]";
	setAttr ".gtag[8].gtagnm" -type "string" "right";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[7]" "f[9]" "f[12]" "f[14]";
	setAttr ".gtag[9].gtagnm" -type "string" "sides";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "f[15:110]";
	setAttr ".gtag[10].gtagnm" -type "string" "top";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 176 ".uvst[0].uvsp[0:175]" -type "float2" 0.375 0 0.6964286
		 0.39285713 0.375 0.25 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.70833331 0.33333334 0.29166666 0.33333334 0.625 0.75 0.375 0.75 0.75 0 0.875
		 0 0.125 0 0.375 0 0.29166666 0.33333334 0.70833331 0.33333334 0.625 0 0.375 0.75
		 0.625 0.75 0.875 0 0.75 0 0.125 0 0.5 0.3125 0.5625 0.3125 0.5625 0.32660806 0.5
		 0.32660806 0.625 0.3125 0.625 0.32660806 0.5 0.3125 0.5 0.32660806 0.5625 0.32660806
		 0.5625 0.3125 0.625 0.32660806 0.625 0.3125 0.5 0.63698572 0.5 0.65109384 0.5625
		 0.65109384 0.5625 0.63698572 0.625 0.63698572 0.625 0.65109384 0.5625 0.63698572
		 0.625 0.63698572 0.625 0.65109384 0.5625 0.65109384 0.5 0.63698572 0.5 0.65109384
		 0.5 0.62287766 0.5625 0.62287766 0.625 0.62287766 0.5625 0.62287766 0.625 0.62287766
		 0.5 0.62287766 0.5 0.6087696 0.5625 0.6087696 0.625 0.6087696 0.5625 0.6087696 0.625
		 0.6087696 0.5 0.6087696 0.5 0.59466153 0.5625 0.59466153 0.625 0.59466153 0.5625
		 0.59466153 0.625 0.59466153 0.5 0.59466153 0.5 0.58055347 0.5625 0.58055347 0.625
		 0.58055347 0.5625 0.58055347 0.625 0.58055347 0.5 0.58055347 0.5 0.56644541 0.5625
		 0.56644541 0.625 0.56644541 0.5625 0.56644541 0.625 0.56644541 0.5 0.56644541 0.5
		 0.55233729 0.5625 0.55233729 0.625 0.55233729 0.5625 0.55233729 0.625 0.55233729
		 0.5 0.55233729 0.5 0.53822923 0.5625 0.53822923 0.625 0.53822923 0.5625 0.53822923
		 0.625 0.53822923 0.5 0.53822923 0.5 0.52412117 0.5625 0.52412117 0.625 0.52412117
		 0.5625 0.52412117 0.625 0.52412117 0.5 0.52412117 0.5 0.5100131 0.5625 0.5100131
		 0.625 0.5100131 0.5625 0.5100131 0.625 0.5100131 0.5 0.5100131 0.5 0.49590501 0.5625
		 0.49590501 0.625 0.49590501 0.5625 0.49590501 0.625 0.49590501 0.5 0.49590501 0.5
		 0.48179695 0.5625 0.48179695 0.625 0.48179695 0.5625 0.48179695 0.625 0.48179695
		 0.5 0.48179695 0.5 0.46768886 0.5625 0.46768886 0.625 0.46768886 0.5625 0.46768886
		 0.625 0.46768886 0.5 0.46768886 0.5 0.45358077 0.5625 0.45358077 0.625 0.45358077
		 0.5625 0.45358077 0.625 0.45358077 0.5 0.45358077 0.5 0.43947268 0.5625 0.43947268
		 0.625 0.43947268 0.5625 0.43947268 0.625 0.43947268 0.5 0.43947268 0.5 0.42536458
		 0.5625 0.42536458 0.625 0.42536458 0.5625 0.42536458 0.625 0.42536458 0.5 0.42536458
		 0.5 0.41125652 0.5625 0.41125652 0.625 0.41125652 0.5625 0.41125652 0.625 0.41125652
		 0.5 0.41125652 0.5 0.39714846 0.5625 0.39714846 0.625 0.39714846 0.5625 0.39714846
		 0.625 0.39714846 0.5 0.39714846 0.5 0.3830404 0.5625 0.3830404 0.625 0.3830404 0.5625
		 0.3830404 0.625 0.3830404 0.5 0.3830404 0.5 0.36893234 0.5625 0.36893234 0.625 0.36893234
		 0.5625 0.36893234 0.625 0.36893234 0.5 0.36893234 0.5 0.35482424 0.5625 0.35482424
		 0.625 0.35482424 0.5625 0.35482424 0.625 0.35482424 0.5 0.35482424 0.5 0.34071615
		 0.5625 0.34071615 0.625 0.34071615 0.5625 0.34071615 0.625 0.34071615 0.5 0.34071615;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 111 ".vt[0:110]"  10.745224 -0.72650909 0.32673377 12.43623638 0 0
		 10.745224 0.72650909 0.32673377 10.745224 0.72650909 -0.32673377 10.745224 -0.72650909 -0.32673377
		 -10.98888874 0 0.21775389 -8.8691349 0 0.21775387 -12.075057983 1.037703276 0 -9.95530415 1.037703276 0
		 -10.98888874 0 -0.21775389 -8.8691349 0 -0.21775387 -9.059303284 0.21819329 5.5879354e-09
		 -12.075057983 -1.037703276 0 -9.95530415 -1.037703276 -1.6220999e-18 -9.059303284 -0.21819329 -4.3543242e-18
		 10.76069736 0 -0.21775386 10.76069736 0 0.21775386 10.76069736 0.21775386 0 10.76069736 -0.21775386 -6.0438837e-18
		 -8.051224709 0 0.21775387 -8.23346996 -0.21817498 -4.4247227e-18 -8.051224709 0 -0.21775387
		 -8.23346996 0.21817498 5.3551048e-09 -7.23331499 0 0.21775387 -7.40763664 -0.21815667 -4.4951211e-18
		 -7.23331499 0 -0.21775387 -7.40763664 0.21815667 5.1222742e-09 -6.4154048 0 0.21775387
		 -6.58180285 -0.21813835 -4.5655192e-18 -6.4154048 0 -0.21775387 -6.58180285 0.21813835 4.8894435e-09
		 -5.59749556 0 0.21775387 -5.75596952 -0.21812004 -4.6359172e-18 -5.59749556 0 -0.21775387
		 -5.75596952 0.21812004 4.6566129e-09 -4.77958584 0 0.21775387 -4.9301362 -0.21810172 -4.7063156e-18
		 -4.77958584 0 -0.21775387 -4.9301362 0.21810172 4.4237822e-09 -3.9616766 0 0.21775387
		 -4.10430288 -0.21808341 -4.7767137e-18 -3.9616766 0 -0.21775387 -4.10430288 0.21808341 4.1909516e-09
		 -3.1437664 0 0.21775387 -3.27846909 -0.21806511 -4.8471121e-18 -3.1437664 0 -0.21775387
		 -3.27846909 0.21806511 3.9581209e-09 -2.32585669 0 0.21775387 -2.45263577 -0.21804681 -4.9175106e-18
		 -2.32585669 0 -0.21775387 -2.45263577 0.21804681 3.7252903e-09 -1.50794721 0 0.21775387
		 -1.62680244 -0.2180285 -4.987909e-18 -1.50794721 0 -0.21775387 -1.62680244 0.2180285 3.4924597e-09
		 -0.69003761 0 0.21775387 -0.80096912 -0.21801019 -5.0583071e-18 -0.69003761 0 -0.21775387
		 -0.80096912 0.21801019 3.259629e-09 0.12787229 0 0.21775387 0.024864495 -0.21799187 -5.1287051e-18
		 0.12787229 0 -0.21775387 0.024864495 0.21799187 3.0267984e-09 0.94578189 0 0.21775387
		 0.85069776 -0.21797356 -5.1991031e-18 0.94578189 0 -0.21775387 0.85069776 0.21797356 2.7939677e-09
		 1.76369131 0 0.21775386 1.67653084 -0.21795526 -5.2695012e-18 1.76369131 0 -0.21775386
		 1.67653084 0.21795526 2.5611371e-09 2.58160114 0 0.21775386 2.5023644 -0.21793696 -5.3398992e-18
		 2.58160114 0 -0.21775386 2.5023644 0.21793696 2.3283064e-09 3.39951086 0 0.21775386
		 3.32819796 -0.21791865 -5.4102976e-18 3.39951086 0 -0.21775386 3.32819796 0.21791865 2.0954758e-09
		 4.21742058 0 0.21775386 4.1540308 -0.21790034 -5.4806961e-18 4.21742058 0 -0.21775386
		 4.1540308 0.21790034 1.8626451e-09 5.035330296 0 0.21775386 4.97986412 -0.21788204 -5.5510945e-18
		 5.035330296 0 -0.21775386 4.97986412 0.21788204 1.6298145e-09 5.85324001 0 0.21775386
		 5.80569744 -0.21786372 -5.621493e-18 5.85324001 0 -0.21775386 5.80569744 0.21786372 1.3969839e-09
		 6.67114973 0 0.21775386 6.63153076 -0.21784541 -5.6918914e-18 6.67114973 0 -0.21775386
		 6.63153076 0.21784541 1.1641532e-09 7.48905945 0 0.21775386 7.45736408 -0.21782711 -5.7622899e-18
		 7.48905945 0 -0.21775386 7.45736408 0.21782711 9.3132257e-10 8.30696869 0 0.21775386
		 8.2831974 -0.21780881 -5.8326887e-18 8.30696869 0 -0.21775386 8.2831974 0.21780881 6.9849193e-10
		 9.12487793 0 0.21775386 9.10903072 -0.2177905 -5.9030872e-18 9.12487793 0 -0.21775386
		 9.10903072 0.2177905 4.6566126e-10 9.94278717 0 0.21775386 9.93486404 -0.21777219 -5.9734856e-18
		 9.94278717 0 -0.21775386 9.93486404 0.21777219 2.3283063e-10;
	setAttr -s 219 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 1 0 3 1 0 4 1 0 0 2 0 2 3 0 3 4 0 4 0 0 5 6 1
		 7 8 0 9 10 1 5 7 0 6 8 0 7 9 0 8 10 0 9 5 0 10 11 0 11 6 0 8 11 0 6 13 0 12 13 0
		 5 12 0 13 10 0 12 9 0 13 14 0 10 14 0 14 6 0 16 17 0 17 15 0 15 109 0 16 107 0 17 110 0
		 16 18 0 18 108 0 18 15 0 19 6 0 20 14 0 19 20 1 21 10 0 20 21 1 22 11 0 21 22 1 22 19 1
		 23 19 0 24 20 0 23 24 1 25 21 0 24 25 1 26 22 0 25 26 1 26 23 1 27 23 0 28 24 0 27 28 1
		 29 25 0 28 29 1 30 26 0 29 30 1 30 27 1 31 27 0 32 28 0 31 32 1 33 29 0 32 33 1 34 30 0
		 33 34 1 34 31 1 35 31 0 36 32 0 35 36 1 37 33 0 36 37 1 38 34 0 37 38 1 38 35 1 39 35 0
		 40 36 0 39 40 1 41 37 0 40 41 1 42 38 0 41 42 1 42 39 1 43 39 0 44 40 0 43 44 1 45 41 0
		 44 45 1 46 42 0 45 46 1 46 43 1 47 43 0 48 44 0 47 48 1 49 45 0 48 49 1 50 46 0 49 50 1
		 50 47 1 51 47 0 52 48 0 51 52 1 53 49 0 52 53 1 54 50 0 53 54 1 54 51 1 55 51 0 56 52 0
		 55 56 1 57 53 0 56 57 1 58 54 0 57 58 1 58 55 1 59 55 0 60 56 0 59 60 1 61 57 0 60 61 1
		 62 58 0 61 62 1 62 59 1 63 59 0 64 60 0 63 64 1 65 61 0 64 65 1 66 62 0 65 66 1 66 63 1
		 67 63 0 68 64 0 67 68 1 69 65 0 68 69 1 70 66 0 69 70 1 70 67 1 71 67 0 72 68 0 71 72 1
		 73 69 0 72 73 1 74 70 0 73 74 1 74 71 1 75 71 0 76 72 0 75 76 1 77 73 0 76 77 1 78 74 0
		 77 78 1 78 75 1 79 75 0 80 76 0 79 80 1 81 77 0 80 81 1 82 78 0 81 82 1 82 79 1 83 79 0
		 84 80 0 83 84 1;
	setAttr ".ed[166:218]" 85 81 0 84 85 1 86 82 0 85 86 1 86 83 1 87 83 0 88 84 0
		 87 88 1 89 85 0 88 89 1 90 86 0 89 90 1 90 87 1 91 87 0 92 88 0 91 92 1 93 89 0 92 93 1
		 94 90 0 93 94 1 94 91 1 95 91 0 96 92 0 95 96 1 97 93 0 96 97 1 98 94 0 97 98 1 98 95 1
		 99 95 0 100 96 0 99 100 1 101 97 0 100 101 1 102 98 0 101 102 1 102 99 1 103 99 0
		 104 100 0 103 104 1 105 101 0 104 105 1 106 102 0 105 106 1 106 103 1 107 103 0 108 104 0
		 107 108 1 109 105 0 108 109 1 110 106 0 109 110 1 110 107 1;
	setAttr -s 111 -ch 434 ".fc[0:110]" -type "polyFaces" 
		f 3 0 -2 -5
		mu 0 3 0 1 2
		f 3 1 -3 -6
		mu 0 3 2 1 3
		f 3 2 -4 -7
		mu 0 3 3 1 4
		f 3 3 -1 -8
		mu 0 3 4 1 5
		f 4 7 4 5 6
		mu 0 4 6 0 2 7
		f 4 8 12 -10 -12
		mu 0 4 8 9 10 11
		f 4 9 14 -11 -14
		mu 0 4 11 10 12 13
		f 3 18 -17 -15
		mu 0 3 10 14 15
		f 3 15 11 13
		mu 0 3 16 8 11
		f 3 -18 -19 -13
		mu 0 3 9 14 10
		f 4 21 20 -20 -9
		mu 0 4 17 18 19 20
		f 4 23 10 -23 -21
		mu 0 4 18 21 22 19
		f 3 22 25 -25
		mu 0 3 19 23 24
		f 3 -24 -22 -16
		mu 0 3 25 18 17
		f 3 19 24 26
		mu 0 3 20 19 24
		f 4 27 31 218 -31
		mu 0 4 26 27 28 29
		f 4 28 29 217 -32
		mu 0 4 27 30 31 28
		f 4 30 213 -34 -33
		mu 0 4 32 33 34 35
		f 4 33 215 -30 -35
		mu 0 4 35 34 36 37
		f 4 35 -27 -37 -38
		mu 0 4 38 39 40 41
		f 4 -40 36 -26 -39
		mu 0 4 42 41 40 43
		f 4 -42 38 16 -41
		mu 0 4 44 45 46 47
		f 4 -43 40 17 -36
		mu 0 4 48 44 47 49
		f 4 43 37 -45 -46
		mu 0 4 50 38 41 51
		f 4 -48 44 39 -47
		mu 0 4 52 51 41 42
		f 4 -50 46 41 -49
		mu 0 4 53 54 45 44
		f 4 -51 48 42 -44
		mu 0 4 55 53 44 48
		f 4 51 45 -53 -54
		mu 0 4 56 50 51 57
		f 4 -56 52 47 -55
		mu 0 4 58 57 51 52
		f 4 -58 54 49 -57
		mu 0 4 59 60 54 53
		f 4 -59 56 50 -52
		mu 0 4 61 59 53 55
		f 4 59 53 -61 -62
		mu 0 4 62 56 57 63
		f 4 -64 60 55 -63
		mu 0 4 64 63 57 58
		f 4 -66 62 57 -65
		mu 0 4 65 66 60 59
		f 4 -67 64 58 -60
		mu 0 4 67 65 59 61
		f 4 67 61 -69 -70
		mu 0 4 68 62 63 69
		f 4 -72 68 63 -71
		mu 0 4 70 69 63 64
		f 4 -74 70 65 -73
		mu 0 4 71 72 66 65
		f 4 -75 72 66 -68
		mu 0 4 73 71 65 67
		f 4 75 69 -77 -78
		mu 0 4 74 68 69 75
		f 4 -80 76 71 -79
		mu 0 4 76 75 69 70
		f 4 -82 78 73 -81
		mu 0 4 77 78 72 71
		f 4 -83 80 74 -76
		mu 0 4 79 77 71 73
		f 4 83 77 -85 -86
		mu 0 4 80 74 75 81
		f 4 -88 84 79 -87
		mu 0 4 82 81 75 76
		f 4 -90 86 81 -89
		mu 0 4 83 84 78 77
		f 4 -91 88 82 -84
		mu 0 4 85 83 77 79
		f 4 91 85 -93 -94
		mu 0 4 86 80 81 87
		f 4 -96 92 87 -95
		mu 0 4 88 87 81 82
		f 4 -98 94 89 -97
		mu 0 4 89 90 84 83
		f 4 -99 96 90 -92
		mu 0 4 91 89 83 85
		f 4 99 93 -101 -102
		mu 0 4 92 86 87 93
		f 4 -104 100 95 -103
		mu 0 4 94 93 87 88
		f 4 -106 102 97 -105
		mu 0 4 95 96 90 89
		f 4 -107 104 98 -100
		mu 0 4 97 95 89 91
		f 4 107 101 -109 -110
		mu 0 4 98 92 93 99
		f 4 -112 108 103 -111
		mu 0 4 100 99 93 94
		f 4 -114 110 105 -113
		mu 0 4 101 102 96 95
		f 4 -115 112 106 -108
		mu 0 4 103 101 95 97
		f 4 115 109 -117 -118
		mu 0 4 104 98 99 105
		f 4 -120 116 111 -119
		mu 0 4 106 105 99 100
		f 4 -122 118 113 -121
		mu 0 4 107 108 102 101
		f 4 -123 120 114 -116
		mu 0 4 109 107 101 103
		f 4 123 117 -125 -126
		mu 0 4 110 104 105 111
		f 4 -128 124 119 -127
		mu 0 4 112 111 105 106
		f 4 -130 126 121 -129
		mu 0 4 113 114 108 107
		f 4 -131 128 122 -124
		mu 0 4 115 113 107 109
		f 4 131 125 -133 -134
		mu 0 4 116 110 111 117
		f 4 -136 132 127 -135
		mu 0 4 118 117 111 112
		f 4 -138 134 129 -137
		mu 0 4 119 120 114 113
		f 4 -139 136 130 -132
		mu 0 4 121 119 113 115
		f 4 139 133 -141 -142
		mu 0 4 122 116 117 123
		f 4 -144 140 135 -143
		mu 0 4 124 123 117 118
		f 4 -146 142 137 -145
		mu 0 4 125 126 120 119
		f 4 -147 144 138 -140
		mu 0 4 127 125 119 121
		f 4 147 141 -149 -150
		mu 0 4 128 122 123 129
		f 4 -152 148 143 -151
		mu 0 4 130 129 123 124
		f 4 -154 150 145 -153
		mu 0 4 131 132 126 125
		f 4 -155 152 146 -148
		mu 0 4 133 131 125 127
		f 4 155 149 -157 -158
		mu 0 4 134 128 129 135
		f 4 -160 156 151 -159
		mu 0 4 136 135 129 130
		f 4 -162 158 153 -161
		mu 0 4 137 138 132 131
		f 4 -163 160 154 -156
		mu 0 4 139 137 131 133
		f 4 163 157 -165 -166
		mu 0 4 140 134 135 141
		f 4 -168 164 159 -167
		mu 0 4 142 141 135 136
		f 4 -170 166 161 -169
		mu 0 4 143 144 138 137
		f 4 -171 168 162 -164
		mu 0 4 145 143 137 139
		f 4 171 165 -173 -174
		mu 0 4 146 140 141 147
		f 4 -176 172 167 -175
		mu 0 4 148 147 141 142
		f 4 -178 174 169 -177
		mu 0 4 149 150 144 143
		f 4 -179 176 170 -172
		mu 0 4 151 149 143 145
		f 4 179 173 -181 -182
		mu 0 4 152 146 147 153
		f 4 -184 180 175 -183
		mu 0 4 154 153 147 148
		f 4 -186 182 177 -185
		mu 0 4 155 156 150 149
		f 4 -187 184 178 -180
		mu 0 4 157 155 149 151
		f 4 187 181 -189 -190
		mu 0 4 158 152 153 159
		f 4 -192 188 183 -191
		mu 0 4 160 159 153 154
		f 4 -194 190 185 -193
		mu 0 4 161 162 156 155
		f 4 -195 192 186 -188
		mu 0 4 163 161 155 157
		f 4 195 189 -197 -198
		mu 0 4 164 158 159 165
		f 4 -200 196 191 -199
		mu 0 4 166 165 159 160
		f 4 -202 198 193 -201
		mu 0 4 167 168 162 161
		f 4 -203 200 194 -196
		mu 0 4 169 167 161 163
		f 4 203 197 -205 -206
		mu 0 4 170 164 165 171
		f 4 -208 204 199 -207
		mu 0 4 172 171 165 166
		f 4 -210 206 201 -209
		mu 0 4 173 174 168 167
		f 4 -211 208 202 -204
		mu 0 4 175 173 167 169
		f 4 211 205 -213 -214
		mu 0 4 33 170 171 34
		f 4 -216 212 207 -215
		mu 0 4 36 34 171 172
		f 4 -218 214 209 -217
		mu 0 4 28 31 174 173
		f 4 -219 216 210 -212
		mu 0 4 29 28 173 175;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Arrow_Geo_parentConstraint1" -p "Arrow_Geo";
	rename -uid "C70494CF-4D2B-6E71-4313-77AD09C3DBB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -12.255646962630488 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arrow_Geo_scaleConstraint1" -p "Arrow_Geo";
	rename -uid "2911B344-4C9D-05CD-CDE2-6496CBA0ED05";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "Arrow";
	rename -uid "2C106008-439D-6F8B-F62F-369D91ACC099";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "A9D37CA1-4BEF-DB29-DD01-B99A08A354CD";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "ABF6917C-44C1-E409-B9B0-3F897A5244DD";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.3442615638267418e-15 0 0 ;
	setAttr ".sp" -type "double3" 2.9965057831425965e-15 0 0 ;
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "4C7F5716-4A81-07B1-D6F2-AD9E7DFC2120";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.983012688196048 2.8307133084588214 2.5641520162648373e-16
		-3.4701570084189469e-17 2.8307230219476724 3.6262585573880501e-16
		-13.443404067587547 2.8307133084588214 2.5641520162648383e-16
		-13.443455513103583 -3.2545753987213227e-16 1.8798588396427166e-32
		-13.443404067587547 -2.830713308458825 -2.5641520162648383e-16
		-2.869680849676143e-15 -2.8307230219476738 -3.6262585573880526e-16
		13.983012688196048 -2.830713308458825 -2.5641520162648393e-16
		14.415899822827056 -9.4963520953863634e-16 -1.3509126825081874e-31
		13.983012688196048 2.8307133084588214 2.5641520162648373e-16
		-3.4701570084189469e-17 2.8307230219476724 3.6262585573880501e-16
		-13.443404067587547 2.8307133084588214 2.5641520162648383e-16
		;
createNode transform -n "COG_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "14E59EB6-4CB9-A939-C908-30B311FB3C41";
	setAttr ".rp" -type "double3" 12.436236381530762 0 0 ;
	setAttr ".sp" -type "double3" 12.436236381530762 0 0 ;
createNode transform -n "COG_Ctrl" -p "COG_Ctrl_Grp";
	rename -uid "4E36FCD3-4A7A-A3AC-28CD-DFAA1BD4E66D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 12.436236381530762 0 0 ;
	setAttr ".sp" -type "double3" 12.436236381530762 0 0 ;
createNode nurbsCurve -n "COG_CtrlShape" -p "COG_Ctrl";
	rename -uid "FEABB1E4-4125-B55C-CFDF-8D96245AED0C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		13.854167664065992 2.3092917981944825 1.4140334044780644e-16
		11.544875865871507 0.41763290060848524 2.5572639747440217e-17
		9.2355840676770207 2.3092917981944847 1.4140334044780639e-16
		11.127242965263022 2.9143365188236093e-18 -6.103959274295142e-35
		9.2355840676770207 -2.3092917981944825 -1.4140334044780644e-16
		11.544875865871507 -0.41763290060848568 -2.5572639747440241e-17
		13.854167664065992 -2.3092917981944847 -1.4140334044780639e-16
		11.962508766479992 -7.5688277996225809e-17 -4.8740616062663731e-33
		13.854167664065992 2.3092917981944825 1.4140334044780644e-16
		11.544875865871507 0.41763290060848524 2.5572639747440217e-17
		9.2355840676770207 2.3092917981944847 1.4140334044780639e-16
		;
createNode transform -n "Bend_Ctrl_Grp" -p "COG_Ctrl";
	rename -uid "2D53B872-4A05-F212-DAFA-DEB826CA6CC4";
	setAttr ".rp" -type "double3" 12.436236381530762 -2.9582283945787943e-31 0 ;
	setAttr ".sp" -type "double3" 12.436236381530762 -2.9582283945787943e-31 0 ;
createNode transform -n "Bend_Ctrl" -p "Bend_Ctrl_Grp";
	rename -uid "01F4AC43-4657-FC1B-1C56-4B9482634ACB";
	addAttr -ci true -sn "Scale" -ln "Scale" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "Bend" -ln "Bend" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "LowBound" -ln "LowBound" -min -10 -max 0 -at "double";
	addAttr -ci true -sn "HighBound" -ln "HighBound" -dv 1 -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 12.436236381530762 -2.9582283945787943e-31 0 ;
	setAttr ".sp" -type "double3" 12.436236381530762 -3.9443045261050599e-31 0 ;
	setAttr -k on ".Scale";
	setAttr -k on ".Bend";
	setAttr -k on ".LowBound";
	setAttr -k on ".HighBound";
createNode nurbsCurve -n "Bend_CtrlShape" -p "Bend_Ctrl";
	rename -uid "A5328C51-4AAD-46C6-A8CC-7BBEBB5AA5C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 3.695792124 3.695792124 3.695792124
		7
		14.758076470994046 -1.4084794180828879 8.766379560544797e-17
		15.254231896218538 -1.4241291897495743 8.766379560544797e-17
		15.930837778262438 -1.1386255716804117 6.9955402258596566e-17
		16.437334538555398 -3.4013598516785513e-16 2.373216880006298e-18
		15.977195799380993 1.0267074083712124 -5.8355957475430916e-17
		15.238451468929334 1.4241291897495738 -8.1986575387683303e-17
		14.758076470994046 1.4084794180828879 -8.766379560544797e-17
		;
createNode nurbsCurve -n "Bend_CtrlShape1" -p "Bend_Ctrl";
	rename -uid "BC5E78B0-4143-95F5-2894-A69BC718F816";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 2 0 no 3
		3 0 1 2
		3
		15.110196325514767 1.0563595635621659 0
		14.758076470994046 1.4084794180828879 0
		15.110196325514767 1.7605992726036095 0
		;
createNode nurbsCurve -n "Bend_CtrlShape2" -p "Bend_Ctrl";
	rename -uid "8775A20B-4C36-9E40-2947-C7B396844AB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 2 0 no 3
		3 0 1 2
		3
		15.110196325514767 -1.7605992726036099 0
		14.758076470994046 -1.4084794180828879 0
		15.110196325514767 -1.0563595635621663 0
		;
createNode transform -n "Squash_Ctrl_Grp" -p "COG_Ctrl";
	rename -uid "50B97C9B-4C0B-E383-58A2-D99EEE42C3DE";
	setAttr ".rp" -type "double3" 12.436236381530762 0 0 ;
	setAttr ".sp" -type "double3" 12.436236381530762 0 0 ;
createNode transform -n "Squash_Ctrl" -p "Squash_Ctrl_Grp";
	rename -uid "6D551F76-4CFC-9417-2390-E8806D856761";
	addAttr -ci true -sn "Scale" -ln "Scale" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "Squash" -ln "Squash" -at "double";
	addAttr -ci true -sn "SquashPosition" -ln "SquashPosition" -dv 0.5 -min 0.01 -max 
		0.99 -at "double";
	addAttr -ci true -sn "LowBound" -ln "LowBound" -min -10 -max 0 -at "double";
	addAttr -ci true -sn "HighBound" -ln "HighBound" -dv 1 -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 12.436236381530762 0 0 ;
	setAttr ".sp" -type "double3" 12.436236381530762 0 0 ;
	setAttr -k on ".Scale";
	setAttr -k on ".Squash";
	setAttr -k on ".SquashPosition";
	setAttr -k on ".LowBound";
	setAttr -k on ".HighBound";
createNode nurbsCurve -n "Squash_CtrlShape" -p "Squash_Ctrl";
	rename -uid "B40601BE-423C-F639-A6EE-3184739425AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-17.066986276986718 0.50179783004375345 0
		-15.684482055410029 0.50179783004375345 0
		-15.684482055410029 1.0035956600875069 0
		-14.30197783383332 0 0
		-15.684482055410029 -1.0035956600875069 0
		-15.684482055410029 -0.50179783004375345 0
		-17.066986276986718 -0.50179783004375345 0
		-17.066986276986718 0.50179783004375345 0
		;
createNode transform -n "Deformers" -p "Arrow";
	rename -uid "8C240A31-47B7-A95F-182E-59A520968A6B";
	setAttr ".v" no;
createNode transform -n "Arrow_Bend_Handle" -p "Deformers";
	rename -uid "EBB8F9E2-474B-F6DD-B5CF-02A888FF9FF8";
	setAttr ".v" no;
	setAttr ".smd" 7;
createNode deformBend -n "Arrow_Bend_HandleShape" -p "Arrow_Bend_Handle";
	rename -uid "A1FD96FE-467D-265C-925F-808D5917613C";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 3 0 1 0 ;
	setAttr ".hw" 1.1414736032485964;
createNode parentConstraint -n "Arrow_Bend_Handle_parentConstraint1" -p "Arrow_Bend_Handle";
	rename -uid "8DF3EA2B-46B5-3F1A-B251-71B752F6C601";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Bend_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.9582283945787943e-31 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 90 ;
	setAttr ".lr" -type "double3" 0 0 90 ;
	setAttr ".rst" -type "double3" 12.436236381530762 0 0 ;
	setAttr ".rsrr" -type "double3" 0 0 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arrow_Bend_Handle_scaleConstraint1" -p "Arrow_Bend_Handle";
	rename -uid "C9E9D2AB-4005-149E-8284-89A13208F826";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Bend_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 24.511 24.511 24.511 ;
	setAttr -k on ".w0";
createNode transform -n "Arrow_Squash_Handle" -p "Deformers";
	rename -uid "BA6E243C-412E-593B-FABC-19AED2836483";
	setAttr ".v" no;
	setAttr ".smd" 7;
createNode deformSquash -n "Arrow_Squash_HandleShape" -p "Arrow_Squash_Handle";
	rename -uid "12930526-47EC-6656-B800-6DB32D29F0B1";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 7 0 1 0 0 0.5 1 0 ;
	setAttr ".hw" 1.1414736032485964;
createNode parentConstraint -n "Arrow_Squash_Handle_parentConstraint1" -p "Arrow_Squash_Handle";
	rename -uid "A1F7A0EA-4242-E4BB-E348-92AF920943EC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Squash_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 90 ;
	setAttr ".lr" -type "double3" 0 0 90 ;
	setAttr ".rst" -type "double3" 12.436236381530762 0 0 ;
	setAttr ".rsrr" -type "double3" 0 0 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arrow_Squash_Handle_scaleConstraint1" -p "Arrow_Squash_Handle";
	rename -uid "92E7F847-45CD-9F47-2DDF-0BBE06FB5997";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Squash_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 24.511 24.511 24.511 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "34809CB6-4801-E6C8-FB88-73A369DACDC9";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "19E3DA93-4251-4F7F-EC9F-859DBD717464";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AA09CCA7-4A37-1659-6CBF-65A851D696A5";
createNode displayLayerManager -n "layerManager";
	rename -uid "0C029AD6-4058-4834-113A-0F82F5D193AB";
createNode displayLayer -n "defaultLayer";
	rename -uid "5CDAB155-4E86-92FA-6C0C-4DB3558FA24D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CBF796C4-447B-9135-8D42-FF9A75BD5C51";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E41E097B-4325-BDC7-B0B6-1EA5014E19E4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "12D8F814-45A1-1F79-A5B8-57AF7ED9BE20";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "83277AB8-4043-6747-4B17-74A5B26D755D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 40 -ast 1 -aet 40 ";
	setAttr ".st" 6;
createNode nonLinear -n "squash1";
	rename -uid "C1643A7A-4B7C-0D16-D12A-4FB72463F5C7";
	addAttr -is true -ci true -k true -sn "fac" -ln "factor" -smn -10 -smx 10 -at "double";
	addAttr -is true -ci true -k true -sn "exp" -ln "expand" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	addAttr -is true -ci true -k true -sn "mp" -ln "maxExpandPos" -dv 0.5 -min 0.01 
		-max 0.99 -at "double";
	addAttr -is true -ci true -k true -sn "ss" -ln "startSmoothness" -min 0 -max 1 -at "double";
	addAttr -is true -ci true -k true -sn "es" -ln "endSmoothness" -min 0 -max 1 -at "double";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".fac";
	setAttr -k on ".exp";
	setAttr -k on ".mp";
	setAttr -k on ".ss";
	setAttr -k on ".es";
	setAttr -k on ".lb";
	setAttr -k on ".hb";
createNode groupId -n "groupId1";
	rename -uid "AF4E6D71-4E69-3537-496B-ABBAFC8510FF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "2656B26A-4927-272E-4234-C788FDED21D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[15:110]";
	setAttr ".irc" -type "componentList" 1 "f[0:14]";
createNode nonLinear -n "bend1";
	rename -uid "0A5BD704-4696-97AE-0616-CFB9B1B8B73C";
	addAttr -is true -ci true -k true -sn "cur" -ln "curvature" -smn -3.14159 -smx 
		3.14159 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".cur";
	setAttr -k on ".lb";
	setAttr -k on ".hb";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D6DA39DA-495D-FE34-C61F-F6BDCD84A990";
	setAttr ".version" -type "string" "5.3.5.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6C5154C4-40D3-3D2D-C55C-808E53D6EC15";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "44355FBD-48DB-61F4-0A83-BE86F8FA7459";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "AA2F2813-4C1B-08F4-0D1A-FDB5CE32297E";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode unitConversion -n "unitConversion1";
	rename -uid "6D5A2629-46EC-8571-272C-0A891900CD30";
	setAttr ".cf" 0.017453292519943295;
createNode lambert -n "blackMAT";
	rename -uid "BCBE468E-477E-53BE-10B3-5E98F2EA5C2C";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "0F78D9A2-4BD1-9A48-15BB-FEBE51C597C6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "948083FA-40FE-1982-C8F1-3892C33C821C";
createNode lambert -n "redMAT";
	rename -uid "AE3B303A-4A76-F32F-0EE0-A38508461557";
	setAttr ".c" -type "float3" 0 0.25 1 ;
createNode lambert -n "grayMAT";
	rename -uid "3A9D94ED-40FF-A3B4-96D6-20B5A9ED6512";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.18660288 0.18660288 0.18660288 ;
createNode shadingEngine -n "redMATSG";
	rename -uid "26902A8D-4745-4980-E212-5FA581BC209C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "26877B44-46AD-67A0-ABDE-60B93FAE9815";
createNode groupId -n "groupId2";
	rename -uid "525FB74D-45FE-E1A9-F260-61B8DE0025C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C2BDF0C2-4F9C-6926-5860-54BEC3DFF996";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[5:14]";
	setAttr ".irc" -type "componentList" 1 "f[0:4]";
createNode shadingEngine -n "grayMATSG";
	rename -uid "56E5D33D-4BC0-D164-BCAB-54B970437BDB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "ECBBB4A0-477C-2E19-8EBF-C9B31DAC30C0";
createNode groupId -n "groupId3";
	rename -uid "C047BE8F-4950-6EDB-E610-B1A85275EBD2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "6436A22B-4D0F-A5AB-0960-ABBAA4FA4430";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "639F8E11-46A4-A6A7-E16A-C5B23EC3C758";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -252.3809423522348 ;
	setAttr ".tgi[0].vh" -type "double2" 539.28569285642618 44.047617297323995 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 163.09523010253906;
	setAttr ".tgi[0].ni[0].y" 2.3809523582458496;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 384.5238037109375;
	setAttr ".tgi[0].ni[1].y" 2.3809523582458496;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].y" 34.285713195800781;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].y" 34.285713195800781;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 307.14285278320312;
	setAttr ".tgi[0].ni[4].y" 34.285713195800781;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 307.14285278320312;
	setAttr ".tgi[0].ni[5].y" 34.285713195800781;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "650B0400-45D0-85EF-8912-6189E54A3FF7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -633.33330816692887 -1048.8094821335794 ;
	setAttr ".tgi[0].vh" -type "double2" 633.33330816692887 1048.8094821335794 ;
	setAttr -s 13 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -247.14285278320312;
	setAttr ".tgi[0].ni[0].y" 302.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 60;
	setAttr ".tgi[0].ni[1].y" 302.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -131.42857360839844;
	setAttr ".tgi[0].ni[2].y" 32.857143402099609;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -125.71428680419922;
	setAttr ".tgi[0].ni[3].y" 575.71429443359375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 288.57144165039062;
	setAttr ".tgi[0].ni[4].y" 32.857143402099609;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -522.85711669921875;
	setAttr ".tgi[0].ni[5].y" 32.857143402099609;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -140;
	setAttr ".tgi[0].ni[6].y" -510;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -94.285713195800781;
	setAttr ".tgi[0].ni[7].y" 847.14288330078125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -628.5714111328125;
	setAttr ".tgi[0].ni[8].y" 711.4285888671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -247.14285278320312;
	setAttr ".tgi[0].ni[9].y" -238.57142639160156;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 60;
	setAttr ".tgi[0].ni[10].y" -238.57142639160156;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -321.42855834960938;
	setAttr ".tgi[0].ni[11].y" 711.4285888671875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -92.857139587402344;
	setAttr ".tgi[0].ni[12].y" -781.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "B61007AA-4173-BFB5-98E2-CBA453E2E1AC";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
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
connectAttr "Arrow_Geo_parentConstraint1.ctx" "Arrow_Geo.tx";
connectAttr "Arrow_Geo_parentConstraint1.cty" "Arrow_Geo.ty";
connectAttr "Arrow_Geo_parentConstraint1.ctz" "Arrow_Geo.tz";
connectAttr "Arrow_Geo_parentConstraint1.crx" "Arrow_Geo.rx";
connectAttr "Arrow_Geo_parentConstraint1.cry" "Arrow_Geo.ry";
connectAttr "Arrow_Geo_parentConstraint1.crz" "Arrow_Geo.rz";
connectAttr "Arrow_Geo_scaleConstraint1.csx" "Arrow_Geo.sx";
connectAttr "Arrow_Geo_scaleConstraint1.csy" "Arrow_Geo.sy";
connectAttr "Arrow_Geo_scaleConstraint1.csz" "Arrow_Geo.sz";
connectAttr "groupParts3.og" "Arrow_GeoShape.i";
connectAttr "groupId1.id" "Arrow_GeoShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "Arrow_GeoShape.iog.og[0].gco";
connectAttr "groupId2.id" "Arrow_GeoShape.iog.og[1].gid";
connectAttr "redMATSG.mwc" "Arrow_GeoShape.iog.og[1].gco";
connectAttr "groupId3.id" "Arrow_GeoShape.iog.og[2].gid";
connectAttr "grayMATSG.mwc" "Arrow_GeoShape.iog.og[2].gco";
connectAttr "Arrow_Geo.ro" "Arrow_Geo_parentConstraint1.cro";
connectAttr "Arrow_Geo.pim" "Arrow_Geo_parentConstraint1.cpim";
connectAttr "Arrow_Geo.rp" "Arrow_Geo_parentConstraint1.crp";
connectAttr "Arrow_Geo.rpt" "Arrow_Geo_parentConstraint1.crt";
connectAttr "COG_Ctrl.t" "Arrow_Geo_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "Arrow_Geo_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "Arrow_Geo_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "Arrow_Geo_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "Arrow_Geo_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "Arrow_Geo_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Arrow_Geo_parentConstraint1.tg[0].tpm";
connectAttr "Arrow_Geo_parentConstraint1.w0" "Arrow_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Arrow_Geo.pim" "Arrow_Geo_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "Arrow_Geo_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "Arrow_Geo_scaleConstraint1.tg[0].tpm";
connectAttr "Arrow_Geo_scaleConstraint1.w0" "Arrow_Geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "Bend_Ctrl.Scale" "Bend_Ctrl.sx" -l on;
connectAttr "Bend_Ctrl.Scale" "Bend_Ctrl.sy" -l on;
connectAttr "Bend_Ctrl.Scale" "Bend_Ctrl.sz" -l on;
connectAttr "Squash_Ctrl.Scale" "Squash_Ctrl.sx" -l on;
connectAttr "Squash_Ctrl.Scale" "Squash_Ctrl.sy" -l on;
connectAttr "Squash_Ctrl.Scale" "Squash_Ctrl.sz" -l on;
connectAttr "bend1.msg" "Arrow_Bend_Handle.sml";
connectAttr "Arrow_Bend_Handle_parentConstraint1.ctx" "Arrow_Bend_Handle.tx";
connectAttr "Arrow_Bend_Handle_parentConstraint1.cty" "Arrow_Bend_Handle.ty";
connectAttr "Arrow_Bend_Handle_parentConstraint1.ctz" "Arrow_Bend_Handle.tz";
connectAttr "Arrow_Bend_Handle_parentConstraint1.crx" "Arrow_Bend_Handle.rx";
connectAttr "Arrow_Bend_Handle_parentConstraint1.cry" "Arrow_Bend_Handle.ry";
connectAttr "Arrow_Bend_Handle_parentConstraint1.crz" "Arrow_Bend_Handle.rz";
connectAttr "Arrow_Bend_Handle_scaleConstraint1.csx" "Arrow_Bend_Handle.sx";
connectAttr "Arrow_Bend_Handle_scaleConstraint1.csy" "Arrow_Bend_Handle.sy";
connectAttr "Arrow_Bend_Handle_scaleConstraint1.csz" "Arrow_Bend_Handle.sz";
connectAttr "bend1.cur" "Arrow_Bend_HandleShape.cur";
connectAttr "bend1.lb" "Arrow_Bend_HandleShape.lb";
connectAttr "bend1.hb" "Arrow_Bend_HandleShape.hb";
connectAttr "Arrow_Bend_Handle.ro" "Arrow_Bend_Handle_parentConstraint1.cro";
connectAttr "Arrow_Bend_Handle.pim" "Arrow_Bend_Handle_parentConstraint1.cpim";
connectAttr "Arrow_Bend_Handle.rp" "Arrow_Bend_Handle_parentConstraint1.crp";
connectAttr "Arrow_Bend_Handle.rpt" "Arrow_Bend_Handle_parentConstraint1.crt";
connectAttr "Bend_Ctrl.t" "Arrow_Bend_Handle_parentConstraint1.tg[0].tt";
connectAttr "Bend_Ctrl.rp" "Arrow_Bend_Handle_parentConstraint1.tg[0].trp";
connectAttr "Bend_Ctrl.rpt" "Arrow_Bend_Handle_parentConstraint1.tg[0].trt";
connectAttr "Bend_Ctrl.r" "Arrow_Bend_Handle_parentConstraint1.tg[0].tr";
connectAttr "Bend_Ctrl.ro" "Arrow_Bend_Handle_parentConstraint1.tg[0].tro";
connectAttr "Bend_Ctrl.s" "Arrow_Bend_Handle_parentConstraint1.tg[0].ts";
connectAttr "Bend_Ctrl.pm" "Arrow_Bend_Handle_parentConstraint1.tg[0].tpm";
connectAttr "Arrow_Bend_Handle_parentConstraint1.w0" "Arrow_Bend_Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "Arrow_Bend_Handle.pim" "Arrow_Bend_Handle_scaleConstraint1.cpim";
connectAttr "Bend_Ctrl.s" "Arrow_Bend_Handle_scaleConstraint1.tg[0].ts";
connectAttr "Bend_Ctrl.pm" "Arrow_Bend_Handle_scaleConstraint1.tg[0].tpm";
connectAttr "Arrow_Bend_Handle_scaleConstraint1.w0" "Arrow_Bend_Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "squash1.msg" "Arrow_Squash_Handle.sml";
connectAttr "Arrow_Squash_Handle_parentConstraint1.ctx" "Arrow_Squash_Handle.tx"
		;
connectAttr "Arrow_Squash_Handle_parentConstraint1.cty" "Arrow_Squash_Handle.ty"
		;
connectAttr "Arrow_Squash_Handle_parentConstraint1.ctz" "Arrow_Squash_Handle.tz"
		;
connectAttr "Arrow_Squash_Handle_parentConstraint1.crx" "Arrow_Squash_Handle.rx"
		;
connectAttr "Arrow_Squash_Handle_parentConstraint1.cry" "Arrow_Squash_Handle.ry"
		;
connectAttr "Arrow_Squash_Handle_parentConstraint1.crz" "Arrow_Squash_Handle.rz"
		;
connectAttr "Arrow_Squash_Handle_scaleConstraint1.csx" "Arrow_Squash_Handle.sx";
connectAttr "Arrow_Squash_Handle_scaleConstraint1.csy" "Arrow_Squash_Handle.sy";
connectAttr "Arrow_Squash_Handle_scaleConstraint1.csz" "Arrow_Squash_Handle.sz";
connectAttr "squash1.fac" "Arrow_Squash_HandleShape.fac";
connectAttr "squash1.exp" "Arrow_Squash_HandleShape.exp";
connectAttr "squash1.mp" "Arrow_Squash_HandleShape.mp";
connectAttr "squash1.ss" "Arrow_Squash_HandleShape.ss";
connectAttr "squash1.es" "Arrow_Squash_HandleShape.es";
connectAttr "squash1.lb" "Arrow_Squash_HandleShape.lb";
connectAttr "squash1.hb" "Arrow_Squash_HandleShape.hb";
connectAttr "Arrow_Squash_Handle.ro" "Arrow_Squash_Handle_parentConstraint1.cro"
		;
connectAttr "Arrow_Squash_Handle.pim" "Arrow_Squash_Handle_parentConstraint1.cpim"
		;
connectAttr "Arrow_Squash_Handle.rp" "Arrow_Squash_Handle_parentConstraint1.crp"
		;
connectAttr "Arrow_Squash_Handle.rpt" "Arrow_Squash_Handle_parentConstraint1.crt"
		;
connectAttr "Squash_Ctrl.t" "Arrow_Squash_Handle_parentConstraint1.tg[0].tt";
connectAttr "Squash_Ctrl.rp" "Arrow_Squash_Handle_parentConstraint1.tg[0].trp";
connectAttr "Squash_Ctrl.rpt" "Arrow_Squash_Handle_parentConstraint1.tg[0].trt";
connectAttr "Squash_Ctrl.r" "Arrow_Squash_Handle_parentConstraint1.tg[0].tr";
connectAttr "Squash_Ctrl.ro" "Arrow_Squash_Handle_parentConstraint1.tg[0].tro";
connectAttr "Squash_Ctrl.s" "Arrow_Squash_Handle_parentConstraint1.tg[0].ts";
connectAttr "Squash_Ctrl.pm" "Arrow_Squash_Handle_parentConstraint1.tg[0].tpm";
connectAttr "Arrow_Squash_Handle_parentConstraint1.w0" "Arrow_Squash_Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "Arrow_Squash_Handle.pim" "Arrow_Squash_Handle_scaleConstraint1.cpim"
		;
connectAttr "Squash_Ctrl.s" "Arrow_Squash_Handle_scaleConstraint1.tg[0].ts";
connectAttr "Squash_Ctrl.pm" "Arrow_Squash_Handle_scaleConstraint1.tg[0].tpm";
connectAttr "Arrow_Squash_Handle_scaleConstraint1.w0" "Arrow_Squash_Handle_scaleConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "redMATSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "grayMATSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "redMATSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "grayMATSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Squash_Ctrl.Squash" "squash1.fac";
connectAttr "Squash_Ctrl.SquashPosition" "squash1.mp";
connectAttr "Squash_Ctrl.LowBound" "squash1.lb";
connectAttr "Squash_Ctrl.HighBound" "squash1.hb";
connectAttr "groupParts1.og" "squash1.ip[0].ig";
connectAttr "Arrow_GeoShapeOrig.o" "squash1.orggeom[0]";
connectAttr "Arrow_Squash_HandleShape.dd" "squash1.dd";
connectAttr "Arrow_Squash_Handle.wm" "squash1.ma";
connectAttr "Arrow_GeoShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "unitConversion1.o" "bend1.cur";
connectAttr "Bend_Ctrl.LowBound" "bend1.lb";
connectAttr "Bend_Ctrl.HighBound" "bend1.hb";
connectAttr "squash1.og[0]" "bend1.ip[0].ig";
connectAttr "Arrow_GeoShapeOrig.o" "bend1.orggeom[0]";
connectAttr "Arrow_Bend_HandleShape.dd" "bend1.dd";
connectAttr "Arrow_Bend_Handle.wm" "bend1.ma";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Bend_Ctrl.Bend" "unitConversion1.i";
connectAttr "blackMAT.oc" "lambert2SG.ss";
connectAttr "Arrow_GeoShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "blackMAT.msg" "materialInfo1.m";
connectAttr "redMAT.oc" "redMATSG.ss";
connectAttr "groupId2.msg" "redMATSG.gn" -na;
connectAttr "Arrow_GeoShape.iog.og[1]" "redMATSG.dsm" -na;
connectAttr "redMATSG.msg" "materialInfo2.sg";
connectAttr "redMAT.msg" "materialInfo2.m";
connectAttr "bend1.og[0]" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "grayMAT.oc" "grayMATSG.ss";
connectAttr "Arrow_GeoShape.iog.og[2]" "grayMATSG.dsm" -na;
connectAttr "groupId3.msg" "grayMATSG.gn" -na;
connectAttr "grayMATSG.msg" "materialInfo3.sg";
connectAttr "grayMAT.msg" "materialInfo3.m";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "blackMAT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "grayMAT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "redMAT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "redMATSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "grayMATSG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "blackMAT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Arrow_Bend_Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Arrow_Bend_Handle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Arrow_Geo_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Arrow_Squash_Handle_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Arrow_Squash_Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Arrow_Geo_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "grayMAT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "redMAT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "redMATSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "grayMATSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "redMATSG.pa" ":renderPartition.st" -na;
connectAttr "grayMATSG.pa" ":renderPartition.st" -na;
connectAttr "blackMAT.msg" ":defaultShaderList1.s" -na;
connectAttr "redMAT.msg" ":defaultShaderList1.s" -na;
connectAttr "grayMAT.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of arrow.ma
