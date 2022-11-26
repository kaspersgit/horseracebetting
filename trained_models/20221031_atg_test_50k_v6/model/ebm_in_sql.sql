'20221031_atg_test_50k_v6' AS model_name 
, -3.2138539385871554 AS intercept
,
CASE
 WHEN RaceOnHometrack = '0' THEN -0.006226902790146205
 WHEN RaceOnHometrack = '1' THEN 0.03381923813779861
 ELSE 0.0
END
AS RaceOnHometrack_score
,
CASE
 WHEN cartInfo_col = 'Amerikansk' THEN 0.09519409747957137
 WHEN cartInfo_col = 'Hybrid' THEN -0.27448246007046895
 WHEN cartInfo_col = 'Unknown' THEN 0.0007279651277361521
 WHEN cartInfo_col = 'Vanlig' THEN -0.01761592990884059
 ELSE 0.0
END
AS cartInfo_col_score
,
CASE
 WHEN horse_age <= 2.5 THEN 0.23691375686841332
 WHEN horse_age > 2.5 AND horse_age <= 3.5 THEN -0.013238701369828049
 WHEN horse_age > 3.5 AND horse_age <= 4.5 THEN 0.019626793595871966
 WHEN horse_age > 4.5 AND horse_age <= 5.5 THEN 0.04248817941234176
 WHEN horse_age > 5.5 AND horse_age <= 6.5 THEN 0.025128711496092887
 WHEN horse_age > 6.5 AND horse_age <= 7.5 THEN 0.010909011567176191
 WHEN horse_age > 7.5 AND horse_age <= 8.5 THEN -0.14225254576874122
 WHEN horse_age > 8.5 AND horse_age <= 9.5 THEN -0.1222610898112402
 WHEN horse_age > 9.5 AND horse_age <= 10.5 THEN -0.08165983284601983
 WHEN horse_age > 10.5 AND horse_age <= 11.5 THEN -0.08534332786153778
 WHEN horse_age > 11.5 AND horse_age <= 12.5 THEN -0.11558267636727718
 WHEN horse_age >= 12.5 THEN 0.019868519834234905
 ELSE 0.0
END
AS horse_age_score
,
CASE
 WHEN horse_sex = 'Unknown' THEN 1.5721494447744586
 WHEN horse_sex = 'h' THEN 0.004576807617163975
 WHEN horse_sex = 's' THEN -0.007722129409538203
 WHEN horse_sex = 'v' THEN 0.0015727140512744042
 ELSE 0.0
END
AS horse_sex_score
,
CASE
 WHEN lifetime_podium_spot_1_share <= 0.0030864197530864 THEN -0.2461932409156464
 WHEN lifetime_podium_spot_1_share > 0.0030864197530864 AND lifetime_podium_spot_1_share <= 0.051151229722658245 THEN -0.2478382164294843
 WHEN lifetime_podium_spot_1_share > 0.051151229722658245 AND lifetime_podium_spot_1_share <= 0.07884376295068375 THEN -0.24091513316251015
 WHEN lifetime_podium_spot_1_share > 0.07884376295068375 AND lifetime_podium_spot_1_share <= 0.0906352683461117 THEN -0.2406604402447777
 WHEN lifetime_podium_spot_1_share > 0.0906352683461117 AND lifetime_podium_spot_1_share <= 0.1021567717996289 THEN -0.23989116550036013
 WHEN lifetime_podium_spot_1_share > 0.1021567717996289 AND lifetime_podium_spot_1_share <= 0.11985915492957744 THEN -0.15957581380501898
 WHEN lifetime_podium_spot_1_share > 0.11985915492957744 AND lifetime_podium_spot_1_share <= 0.12451550387596895 THEN -0.035192079601640724
 WHEN lifetime_podium_spot_1_share > 0.12451550387596895 AND lifetime_podium_spot_1_share <= 0.13238651625033576 THEN -0.03373566985863141
 WHEN lifetime_podium_spot_1_share > 0.13238651625033576 AND lifetime_podium_spot_1_share <= 0.1433035714285714 THEN -0.0431185731096804
 WHEN lifetime_podium_spot_1_share > 0.1433035714285714 AND lifetime_podium_spot_1_share <= 0.1471334726784114 THEN -0.046660739078956154
 WHEN lifetime_podium_spot_1_share > 0.1471334726784114 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.05035319395851892
 WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.15364265364265361 THEN -0.05440295557666991
 WHEN lifetime_podium_spot_1_share > 0.15364265364265361 AND lifetime_podium_spot_1_share <= 0.15405073649754494 THEN -0.044991574620801805
 WHEN lifetime_podium_spot_1_share > 0.15405073649754494 AND lifetime_podium_spot_1_share <= 0.15771449170872381 THEN -0.07354244139422375
 WHEN lifetime_podium_spot_1_share > 0.15771449170872381 AND lifetime_podium_spot_1_share <= 0.1720030737704918 THEN -0.06491102753837727
 WHEN lifetime_podium_spot_1_share > 0.1720030737704918 AND lifetime_podium_spot_1_share <= 0.1766706682673069 THEN 0.03157579872790975
 WHEN lifetime_podium_spot_1_share > 0.1766706682673069 AND lifetime_podium_spot_1_share <= 0.18214996682149964 THEN 0.0592195026082854
 WHEN lifetime_podium_spot_1_share > 0.18214996682149964 AND lifetime_podium_spot_1_share <= 0.1861267040898155 THEN 0.05472637439611647
 WHEN lifetime_podium_spot_1_share > 0.1861267040898155 AND lifetime_podium_spot_1_share <= 0.19112963656800297 THEN 0.06626243887186521
 WHEN lifetime_podium_spot_1_share > 0.19112963656800297 AND lifetime_podium_spot_1_share <= 0.19367341835458865 THEN 0.02965815704800054
 WHEN lifetime_podium_spot_1_share > 0.19367341835458865 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.03947543800974676
 WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.20067114093959731 THEN 0.06616787316281669
 WHEN lifetime_podium_spot_1_share > 0.20067114093959731 AND lifetime_podium_spot_1_share <= 0.20766968880176426 THEN 0.0712046548837437
 WHEN lifetime_podium_spot_1_share > 0.20766968880176426 AND lifetime_podium_spot_1_share <= 0.21030517470145943 THEN 0.07103375852233693
 WHEN lifetime_podium_spot_1_share > 0.21030517470145943 AND lifetime_podium_spot_1_share <= 0.2126631719601192 THEN 0.07245064358201757
 WHEN lifetime_podium_spot_1_share > 0.2126631719601192 AND lifetime_podium_spot_1_share <= 0.21452540747842755 THEN 0.08071916500961125
 WHEN lifetime_podium_spot_1_share > 0.21452540747842755 AND lifetime_podium_spot_1_share <= 0.2217668488160291 THEN 0.08228476405679823
 WHEN lifetime_podium_spot_1_share > 0.2217668488160291 AND lifetime_podium_spot_1_share <= 0.22268135904499542 THEN 0.09232721240289535
 WHEN lifetime_podium_spot_1_share > 0.22268135904499542 AND lifetime_podium_spot_1_share <= 0.2270817417876241 THEN 0.15112712723223257
 WHEN lifetime_podium_spot_1_share > 0.2270817417876241 AND lifetime_podium_spot_1_share <= 0.23051619433198375 THEN 0.08202967831668491
 WHEN lifetime_podium_spot_1_share > 0.23051619433198375 AND lifetime_podium_spot_1_share <= 0.2388720116232994 THEN 0.10919972871698505
 WHEN lifetime_podium_spot_1_share > 0.2388720116232994 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.04948238797241407
 WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2506684491978609 THEN 0.05490275043658925
 WHEN lifetime_podium_spot_1_share > 0.2506684491978609 AND lifetime_podium_spot_1_share <= 0.25789823744595936 THEN 0.03910379676756637
 WHEN lifetime_podium_spot_1_share > 0.25789823744595936 AND lifetime_podium_spot_1_share <= 0.26458434613514825 THEN 0.049253921884285026
 WHEN lifetime_podium_spot_1_share > 0.26458434613514825 AND lifetime_podium_spot_1_share <= 0.26692111959287523 THEN 0.04761063775188501
 WHEN lifetime_podium_spot_1_share > 0.26692111959287523 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.036873998646935136
 WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2729915433403805 THEN 0.04615337655902624
 WHEN lifetime_podium_spot_1_share > 0.2729915433403805 AND lifetime_podium_spot_1_share <= 0.2851929092805005 THEN 0.045382122770447245
 WHEN lifetime_podium_spot_1_share > 0.2851929092805005 AND lifetime_podium_spot_1_share <= 0.3003759398496241 THEN 0.028288462625908756
 WHEN lifetime_podium_spot_1_share > 0.3003759398496241 AND lifetime_podium_spot_1_share <= 0.3060024009603841 THEN 0.008790016879241053
 WHEN lifetime_podium_spot_1_share > 0.3060024009603841 AND lifetime_podium_spot_1_share <= 0.31017241379310345 THEN 0.03678686796135541
 WHEN lifetime_podium_spot_1_share > 0.31017241379310345 AND lifetime_podium_spot_1_share <= 0.31550343249427915 THEN 0.00985507951436912
 WHEN lifetime_podium_spot_1_share > 0.31550343249427915 AND lifetime_podium_spot_1_share <= 0.3202564102564103 THEN 0.012054841522780163
 WHEN lifetime_podium_spot_1_share > 0.3202564102564103 AND lifetime_podium_spot_1_share <= 0.331845238095238 THEN 0.013640536842407458
 WHEN lifetime_podium_spot_1_share > 0.331845238095238 AND lifetime_podium_spot_1_share <= 0.33484848484848484 THEN -0.007957374841497278
 WHEN lifetime_podium_spot_1_share > 0.33484848484848484 AND lifetime_podium_spot_1_share <= 0.34708049886621317 THEN 0.037160762119728435
 WHEN lifetime_podium_spot_1_share > 0.34708049886621317 AND lifetime_podium_spot_1_share <= 0.37553418803418803 THEN 0.15082698240869027
 WHEN lifetime_podium_spot_1_share > 0.37553418803418803 AND lifetime_podium_spot_1_share <= 0.3862511251125112 THEN 0.25502280643334096
 WHEN lifetime_podium_spot_1_share > 0.3862511251125112 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.17157777258227844
 WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4140394088669951 THEN 0.12719890999551886
 WHEN lifetime_podium_spot_1_share > 0.4140394088669951 AND lifetime_podium_spot_1_share <= 0.42761904761904757 THEN 0.1281372475816687
 WHEN lifetime_podium_spot_1_share > 0.42761904761904757 AND lifetime_podium_spot_1_share <= 0.4356906534325889 THEN 0.1325803541312362
 WHEN lifetime_podium_spot_1_share > 0.4356906534325889 AND lifetime_podium_spot_1_share <= 0.44980620155038764 THEN 0.11587465940081484
 WHEN lifetime_podium_spot_1_share > 0.44980620155038764 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.12484054458102678
 WHEN lifetime_podium_spot_1_share > 0.4967532467532467 AND lifetime_podium_spot_1_share <= 0.5033333333333334 THEN 0.12546049899862688
 WHEN lifetime_podium_spot_1_share > 0.5033333333333334 AND lifetime_podium_spot_1_share <= 0.5505102040816326 THEN 0.15768141667523336
 WHEN lifetime_podium_spot_1_share > 0.5505102040816326 AND lifetime_podium_spot_1_share <= 0.5917508417508417 THEN 0.23463049905959757
 WHEN lifetime_podium_spot_1_share > 0.5917508417508417 AND lifetime_podium_spot_1_share <= 0.6464460784313726 THEN 0.23314416468134522
 WHEN lifetime_podium_spot_1_share > 0.6464460784313726 AND lifetime_podium_spot_1_share <= 0.7379862700228832 THEN 0.2323493470509853
 WHEN lifetime_podium_spot_1_share >= 0.7379862700228832 THEN 0.286764029182309
 ELSE 0.0
END
AS lifetime_podium_spot_1_share_score
,
CASE
 WHEN lifetime_podium_spot_2_share <= 0.00684931506849315 THEN 0.08274064058428235
 WHEN lifetime_podium_spot_2_share > 0.00684931506849315 AND lifetime_podium_spot_2_share <= 0.0308167141500474 THEN 0.0024203697877568098
 WHEN lifetime_podium_spot_2_share > 0.0308167141500474 AND lifetime_podium_spot_2_share <= 0.0368671423717295 THEN 0.0026569802971710965
 WHEN lifetime_podium_spot_2_share > 0.0368671423717295 AND lifetime_podium_spot_2_share <= 0.04116650190651035 THEN -0.00046720331406946425
 WHEN lifetime_podium_spot_2_share > 0.04116650190651035 AND lifetime_podium_spot_2_share <= 0.0477821265492498 THEN 0.007495936028327876
 WHEN lifetime_podium_spot_2_share > 0.0477821265492498 AND lifetime_podium_spot_2_share <= 0.05530071355759425 THEN 0.010636363448070174
 WHEN lifetime_podium_spot_2_share > 0.05530071355759425 AND lifetime_podium_spot_2_share <= 0.06691542288557209 THEN 0.004825893709952456
 WHEN lifetime_podium_spot_2_share > 0.06691542288557209 AND lifetime_podium_spot_2_share <= 0.07106782106782106 THEN 0.007944212516549809
 WHEN lifetime_podium_spot_2_share > 0.07106782106782106 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.023342163164688234
 WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.0830459770114942 THEN -0.04224553582995924
 WHEN lifetime_podium_spot_2_share > 0.0830459770114942 AND lifetime_podium_spot_2_share <= 0.08712905452035885 THEN 0.0407337295471423
 WHEN lifetime_podium_spot_2_share > 0.08712905452035885 AND lifetime_podium_spot_2_share <= 0.09056732740943266 THEN 0.04730764898131251
 WHEN lifetime_podium_spot_2_share > 0.09056732740943266 AND lifetime_podium_spot_2_share <= 0.09485904857790081 THEN -0.05424640969823011
 WHEN lifetime_podium_spot_2_share > 0.09485904857790081 AND lifetime_podium_spot_2_share <= 0.09643838511942505 THEN -0.0391335710339078
 WHEN lifetime_podium_spot_2_share > 0.09643838511942505 AND lifetime_podium_spot_2_share <= 0.10033557046979866 THEN -0.031065774217609504
 WHEN lifetime_podium_spot_2_share > 0.10033557046979866 AND lifetime_podium_spot_2_share <= 0.10501253132832075 THEN -0.056549657373883455
 WHEN lifetime_podium_spot_2_share > 0.10501253132832075 AND lifetime_podium_spot_2_share <= 0.105426610003269 THEN -0.06243372099132277
 WHEN lifetime_podium_spot_2_share > 0.105426610003269 AND lifetime_podium_spot_2_share <= 0.11077027948193591 THEN -0.062241771593651296
 WHEN lifetime_podium_spot_2_share > 0.11077027948193591 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.05941983524153832
 WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12009615384615385 THEN -0.04974985376854377
 WHEN lifetime_podium_spot_2_share > 0.12009615384615385 AND lifetime_podium_spot_2_share <= 0.13060200668896316 THEN -0.03025236429782502
 WHEN lifetime_podium_spot_2_share > 0.13060200668896316 AND lifetime_podium_spot_2_share <= 0.13310023310023306 THEN -0.01881125386176491
 WHEN lifetime_podium_spot_2_share > 0.13310023310023306 AND lifetime_podium_spot_2_share <= 0.13620902906617188 THEN -0.01429424273915722
 WHEN lifetime_podium_spot_2_share > 0.13620902906617188 AND lifetime_podium_spot_2_share <= 0.13732974105672802 THEN -0.013586838113645389
 WHEN lifetime_podium_spot_2_share > 0.13732974105672802 AND lifetime_podium_spot_2_share <= 0.14323708206686925 THEN 0.0061448588284035155
 WHEN lifetime_podium_spot_2_share > 0.14323708206686925 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.006741718154484322
 WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1479871175523349 THEN 0.012188312008288488
 WHEN lifetime_podium_spot_2_share > 0.1479871175523349 AND lifetime_podium_spot_2_share <= 0.1494789988183478 THEN 0.02323899359461687
 WHEN lifetime_podium_spot_2_share > 0.1494789988183478 AND lifetime_podium_spot_2_share <= 0.15361019348749405 THEN 0.03034030358687692
 WHEN lifetime_podium_spot_2_share > 0.15361019348749405 AND lifetime_podium_spot_2_share <= 0.15408357075023735 THEN 0.009529041069149813
 WHEN lifetime_podium_spot_2_share > 0.15408357075023735 AND lifetime_podium_spot_2_share <= 0.1580840590685346 THEN 0.04048732008632816
 WHEN lifetime_podium_spot_2_share > 0.1580840590685346 AND lifetime_podium_spot_2_share <= 0.1618347338935574 THEN -0.010313134817907715
 WHEN lifetime_podium_spot_2_share > 0.1618347338935574 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.00396488720049476
 WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.16718426501035188 THEN 0.004195128486629507
 WHEN lifetime_podium_spot_2_share > 0.16718426501035188 AND lifetime_podium_spot_2_share <= 0.17029156816390856 THEN 0.012343124301378516
 WHEN lifetime_podium_spot_2_share > 0.17029156816390856 AND lifetime_podium_spot_2_share <= 0.17195900537634407 THEN 0.0037037573522423206
 WHEN lifetime_podium_spot_2_share > 0.17195900537634407 AND lifetime_podium_spot_2_share <= 0.1766706682673069 THEN 0.006884744709331259
 WHEN lifetime_podium_spot_2_share > 0.1766706682673069 AND lifetime_podium_spot_2_share <= 0.18151311775472845 THEN -0.0013198828353040148
 WHEN lifetime_podium_spot_2_share > 0.18151311775472845 AND lifetime_podium_spot_2_share <= 0.1821253071253071 THEN -0.0003761974282296965
 WHEN lifetime_podium_spot_2_share > 0.1821253071253071 AND lifetime_podium_spot_2_share <= 0.19291979949874682 THEN -0.010316123165454105
 WHEN lifetime_podium_spot_2_share > 0.19291979949874682 AND lifetime_podium_spot_2_share <= 0.1945376584638329 THEN -0.011460616719114525
 WHEN lifetime_podium_spot_2_share > 0.1945376584638329 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.011533634821938255
 WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.22168803418803415 THEN -0.010833753362203102
 WHEN lifetime_podium_spot_2_share > 0.22168803418803415 AND lifetime_podium_spot_2_share <= 0.22271825396825395 THEN -0.006285435915441895
 WHEN lifetime_podium_spot_2_share > 0.22271825396825395 AND lifetime_podium_spot_2_share <= 0.2309625048318515 THEN -0.003116026180621456
 WHEN lifetime_podium_spot_2_share > 0.2309625048318515 AND lifetime_podium_spot_2_share <= 0.2355715871254162 THEN 0.005433942681946802
 WHEN lifetime_podium_spot_2_share > 0.2355715871254162 AND lifetime_podium_spot_2_share <= 0.2401923076923077 THEN -0.02292881769896918
 WHEN lifetime_podium_spot_2_share > 0.2401923076923077 AND lifetime_podium_spot_2_share <= 0.24906015037593981 THEN -0.024048020482626664
 WHEN lifetime_podium_spot_2_share > 0.24906015037593981 AND lifetime_podium_spot_2_share <= 0.25089928057553956 THEN 0.01058295685954952
 WHEN lifetime_podium_spot_2_share > 0.25089928057553956 AND lifetime_podium_spot_2_share <= 0.2635233918128655 THEN 0.0035551296421735268
 WHEN lifetime_podium_spot_2_share > 0.2635233918128655 AND lifetime_podium_spot_2_share <= 0.2732683982683982 THEN 0.016796656800635135
 WHEN lifetime_podium_spot_2_share > 0.2732683982683982 AND lifetime_podium_spot_2_share <= 0.31180555555555556 THEN 0.029955166497698138
 WHEN lifetime_podium_spot_2_share > 0.31180555555555556 AND lifetime_podium_spot_2_share <= 0.33105022831050224 THEN -0.02460767456065055
 WHEN lifetime_podium_spot_2_share > 0.33105022831050224 AND lifetime_podium_spot_2_share <= 0.33687943262411346 THEN 0.0005744209614424456
 WHEN lifetime_podium_spot_2_share > 0.33687943262411346 AND lifetime_podium_spot_2_share <= 0.3771551724137931 THEN 0.1128604618484077
 WHEN lifetime_podium_spot_2_share > 0.3771551724137931 AND lifetime_podium_spot_2_share <= 0.43095238095238086 THEN 0.1756618255105848
 WHEN lifetime_podium_spot_2_share >= 0.43095238095238086 THEN 0.4343365820112543
 ELSE 0.0
END
AS lifetime_podium_spot_2_share_score
,
CASE
 WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.046748587293656024
 WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.024490203918432603 THEN -0.044165232186644365
 WHEN lifetime_podium_spot_3_share > 0.024490203918432603 AND lifetime_podium_spot_3_share <= 0.02877846790890265 THEN -0.08353935098806173
 WHEN lifetime_podium_spot_3_share > 0.02877846790890265 AND lifetime_podium_spot_3_share <= 0.03243338008415145 THEN -0.15886811385202607
 WHEN lifetime_podium_spot_3_share > 0.03243338008415145 AND lifetime_podium_spot_3_share <= 0.035504201680672254 THEN -0.11587822391215682
 WHEN lifetime_podium_spot_3_share > 0.035504201680672254 AND lifetime_podium_spot_3_share <= 0.039736842105263154 THEN 0.018408184223722562
 WHEN lifetime_podium_spot_3_share > 0.039736842105263154 AND lifetime_podium_spot_3_share <= 0.04138127853881275 THEN 0.005352613193793848
 WHEN lifetime_podium_spot_3_share > 0.04138127853881275 AND lifetime_podium_spot_3_share <= 0.0432908545727136 THEN 0.0012699346226384967
 WHEN lifetime_podium_spot_3_share > 0.0432908545727136 AND lifetime_podium_spot_3_share <= 0.04739442946990115 THEN -0.002353225277225729
 WHEN lifetime_podium_spot_3_share > 0.04739442946990115 AND lifetime_podium_spot_3_share <= 0.049822695035460954 THEN 0.0026121142473962133
 WHEN lifetime_podium_spot_3_share > 0.049822695035460954 AND lifetime_podium_spot_3_share <= 0.05235745614035085 THEN 0.03702389016767442
 WHEN lifetime_podium_spot_3_share > 0.05235745614035085 AND lifetime_podium_spot_3_share <= 0.05533683289588795 THEN 0.028861791510594745
 WHEN lifetime_podium_spot_3_share > 0.05533683289588795 AND lifetime_podium_spot_3_share <= 0.0557498057498057 THEN 0.004300522722816197
 WHEN lifetime_podium_spot_3_share > 0.0557498057498057 AND lifetime_podium_spot_3_share <= 0.06271853146853146 THEN -0.005623739342203532
 WHEN lifetime_podium_spot_3_share > 0.06271853146853146 AND lifetime_podium_spot_3_share <= 0.06639118457300269 THEN 0.0015652361360440348
 WHEN lifetime_podium_spot_3_share > 0.06639118457300269 AND lifetime_podium_spot_3_share <= 0.07111251580278125 THEN 0.007126032530632459
 WHEN lifetime_podium_spot_3_share > 0.07111251580278125 AND lifetime_podium_spot_3_share <= 0.0717142857142857 THEN 0.011231910787141336
 WHEN lifetime_podium_spot_3_share > 0.0717142857142857 AND lifetime_podium_spot_3_share <= 0.07419919919919915 THEN 0.01877702208565407
 WHEN lifetime_podium_spot_3_share > 0.07419919919919915 AND lifetime_podium_spot_3_share <= 0.07667809897109254 THEN 0.1813456603633246
 WHEN lifetime_podium_spot_3_share > 0.07667809897109254 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.1769502053693219
 WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.07957372229760284 THEN 0.08219992511014755
 WHEN lifetime_podium_spot_3_share > 0.07957372229760284 AND lifetime_podium_spot_3_share <= 0.08069525145261465 THEN 0.06897704773948728
 WHEN lifetime_podium_spot_3_share > 0.08069525145261465 AND lifetime_podium_spot_3_share <= 0.0912560721721027 THEN 0.07095325368757185
 WHEN lifetime_podium_spot_3_share > 0.0912560721721027 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.004657313273681074
 WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.0025948716860190457
 WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.105426610003269 THEN 0.014344350922978116
 WHEN lifetime_podium_spot_3_share > 0.105426610003269 AND lifetime_podium_spot_3_share <= 0.10863354037267076 THEN 0.008370944188357488
 WHEN lifetime_podium_spot_3_share > 0.10863354037267076 AND lifetime_podium_spot_3_share <= 0.11529599432825235 THEN 0.006017887157635793
 WHEN lifetime_podium_spot_3_share > 0.11529599432825235 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.0058761863677805615
 WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.1364878291107799 THEN 0.023971002731596913
 WHEN lifetime_podium_spot_3_share > 0.1364878291107799 AND lifetime_podium_spot_3_share <= 0.1387875101378751 THEN 0.21021330143254385
 WHEN lifetime_podium_spot_3_share > 0.1387875101378751 AND lifetime_podium_spot_3_share <= 0.14245129870129863 THEN 0.018971585870405205
 WHEN lifetime_podium_spot_3_share > 0.14245129870129863 AND lifetime_podium_spot_3_share <= 0.14346246973365614 THEN 0.01667062726820956
 WHEN lifetime_podium_spot_3_share > 0.14346246973365614 AND lifetime_podium_spot_3_share <= 0.15722311396468697 THEN 0.01640431434404291
 WHEN lifetime_podium_spot_3_share > 0.15722311396468697 AND lifetime_podium_spot_3_share <= 0.1611536358665937 THEN 0.008412811861769315
 WHEN lifetime_podium_spot_3_share > 0.1611536358665937 AND lifetime_podium_spot_3_share <= 0.16606714628297353 THEN -0.09087465705600312
 WHEN lifetime_podium_spot_3_share > 0.16606714628297353 AND lifetime_podium_spot_3_share <= 0.16727493917274935 THEN -0.08956767442972643
 WHEN lifetime_podium_spot_3_share > 0.16727493917274935 AND lifetime_podium_spot_3_share <= 0.17227247032221593 THEN -0.046850295754257004
 WHEN lifetime_podium_spot_3_share > 0.17227247032221593 AND lifetime_podium_spot_3_share <= 0.17468022807828631 THEN -0.033598693647511974
 WHEN lifetime_podium_spot_3_share > 0.17468022807828631 AND lifetime_podium_spot_3_share <= 0.1766968325791855 THEN -0.025252755397028093
 WHEN lifetime_podium_spot_3_share > 0.1766968325791855 AND lifetime_podium_spot_3_share <= 0.18151311775472845 THEN -0.008308446486235771
 WHEN lifetime_podium_spot_3_share > 0.18151311775472845 AND lifetime_podium_spot_3_share <= 0.18208556149732613 THEN 0.00016812538989743886
 WHEN lifetime_podium_spot_3_share > 0.18208556149732613 AND lifetime_podium_spot_3_share <= 0.18832054560954808 THEN -0.05440453538736417
 WHEN lifetime_podium_spot_3_share > 0.18832054560954808 AND lifetime_podium_spot_3_share <= 0.19913793103448274 THEN -0.05677689396907348
 WHEN lifetime_podium_spot_3_share > 0.19913793103448274 AND lifetime_podium_spot_3_share <= 0.20856227106227104 THEN -0.05813320491421059
 WHEN lifetime_podium_spot_3_share > 0.20856227106227104 AND lifetime_podium_spot_3_share <= 0.22517605633802815 THEN -0.05419794267841305
 WHEN lifetime_podium_spot_3_share > 0.22517605633802815 AND lifetime_podium_spot_3_share <= 0.24852941176470583 THEN -0.052015242577320986
 WHEN lifetime_podium_spot_3_share > 0.24852941176470583 AND lifetime_podium_spot_3_share <= 0.2672619047619047 THEN -0.09277769559174104
 WHEN lifetime_podium_spot_3_share >= 0.2672619047619047 THEN 0.053686385042782114
 ELSE 0.0
END
AS lifetime_podium_spot_3_share_score
,
CASE
 WHEN lifetime_starts <= 4.5 THEN -0.3897493535455008
 WHEN lifetime_starts > 4.5 AND lifetime_starts <= 5.5 THEN -0.1493652332119504
 WHEN lifetime_starts > 5.5 AND lifetime_starts <= 6.5 THEN -0.16045492314732906
 WHEN lifetime_starts > 6.5 AND lifetime_starts <= 7.5 THEN -0.08625949753923526
 WHEN lifetime_starts > 7.5 AND lifetime_starts <= 8.5 THEN 0.024085967048346674
 WHEN lifetime_starts > 8.5 AND lifetime_starts <= 9.5 THEN 0.03178233905533226
 WHEN lifetime_starts > 9.5 AND lifetime_starts <= 10.5 THEN 0.031953809284526485
 WHEN lifetime_starts > 10.5 AND lifetime_starts <= 11.5 THEN 0.03496752915087355
 WHEN lifetime_starts > 11.5 AND lifetime_starts <= 14.5 THEN 0.02181279284631174
 WHEN lifetime_starts > 14.5 AND lifetime_starts <= 15.5 THEN 0.015277800946863096
 WHEN lifetime_starts > 15.5 AND lifetime_starts <= 17.5 THEN 0.0211717071486848
 WHEN lifetime_starts > 17.5 AND lifetime_starts <= 18.5 THEN 0.01603726254332785
 WHEN lifetime_starts > 18.5 AND lifetime_starts <= 19.5 THEN 0.03462901977180016
 WHEN lifetime_starts > 19.5 AND lifetime_starts <= 20.5 THEN 0.0328979190258909
 WHEN lifetime_starts > 20.5 AND lifetime_starts <= 23.5 THEN 0.02571463569952176
 WHEN lifetime_starts > 23.5 AND lifetime_starts <= 25.5 THEN 0.026279125591505775
 WHEN lifetime_starts > 25.5 AND lifetime_starts <= 26.5 THEN 0.02700152967483707
 WHEN lifetime_starts > 26.5 AND lifetime_starts <= 31.5 THEN 0.015338386114676944
 WHEN lifetime_starts > 31.5 AND lifetime_starts <= 33.5 THEN 0.02257657922417383
 WHEN lifetime_starts > 33.5 AND lifetime_starts <= 35.5 THEN 0.014649752043725373
 WHEN lifetime_starts > 35.5 AND lifetime_starts <= 36.5 THEN 0.009193338781306515
 WHEN lifetime_starts > 36.5 AND lifetime_starts <= 38.5 THEN 0.010653240788696727
 WHEN lifetime_starts > 38.5 AND lifetime_starts <= 39.5 THEN 0.0011029460944225744
 WHEN lifetime_starts > 39.5 AND lifetime_starts <= 41.5 THEN -0.0010170094440018485
 WHEN lifetime_starts > 41.5 AND lifetime_starts <= 43.5 THEN -0.024550596402865943
 WHEN lifetime_starts > 43.5 AND lifetime_starts <= 45.5 THEN -0.07784195842791483
 WHEN lifetime_starts > 45.5 AND lifetime_starts <= 47.5 THEN -0.0867316154433593
 WHEN lifetime_starts > 47.5 AND lifetime_starts <= 48.5 THEN -0.10140267340085274
 WHEN lifetime_starts > 48.5 AND lifetime_starts <= 49.5 THEN -0.1023950433124699
 WHEN lifetime_starts > 49.5 AND lifetime_starts <= 50.5 THEN -0.07000341449014516
 WHEN lifetime_starts > 50.5 AND lifetime_starts <= 51.5 THEN -0.019312041980539513
 WHEN lifetime_starts > 51.5 AND lifetime_starts <= 52.5 THEN 0.001168531415996571
 WHEN lifetime_starts > 52.5 AND lifetime_starts <= 54.5 THEN 0.03754040411181622
 WHEN lifetime_starts > 54.5 AND lifetime_starts <= 56.5 THEN 0.026249166336479918
 WHEN lifetime_starts > 56.5 AND lifetime_starts <= 57.5 THEN 0.01957165431048019
 WHEN lifetime_starts > 57.5 AND lifetime_starts <= 59.5 THEN 0.018064334419100603
 WHEN lifetime_starts > 59.5 AND lifetime_starts <= 60.5 THEN 0.015825297631351376
 WHEN lifetime_starts > 60.5 AND lifetime_starts <= 62.5 THEN 0.01144679007640434
 WHEN lifetime_starts > 62.5 AND lifetime_starts <= 64.5 THEN 0.003352579083643281
 WHEN lifetime_starts > 64.5 AND lifetime_starts <= 66.5 THEN -0.0029288122593311705
 WHEN lifetime_starts > 66.5 AND lifetime_starts <= 67.5 THEN -0.013015408978439252
 WHEN lifetime_starts > 67.5 AND lifetime_starts <= 68.5 THEN -0.0704216976731496
 WHEN lifetime_starts > 68.5 AND lifetime_starts <= 75.5 THEN 0.025001742639666813
 WHEN lifetime_starts > 75.5 AND lifetime_starts <= 77.5 THEN -0.0004922203698949357
 WHEN lifetime_starts > 77.5 AND lifetime_starts <= 83.5 THEN 0.009484409522327791
 WHEN lifetime_starts > 83.5 AND lifetime_starts <= 87.5 THEN 0.01635137184051208
 WHEN lifetime_starts > 87.5 AND lifetime_starts <= 93.5 THEN -0.007041066292767462
 WHEN lifetime_starts > 93.5 AND lifetime_starts <= 104.5 THEN -0.007753034409672649
 WHEN lifetime_starts > 104.5 AND lifetime_starts <= 116.5 THEN -0.012385312474319038
 WHEN lifetime_starts > 116.5 AND lifetime_starts <= 121.5 THEN 0.09916211807274528
 WHEN lifetime_starts > 121.5 AND lifetime_starts <= 127.5 THEN 0.09559330413150113
 WHEN lifetime_starts > 127.5 AND lifetime_starts <= 135.5 THEN 0.10414996340839501
 WHEN lifetime_starts > 135.5 AND lifetime_starts <= 161.5 THEN -0.047534785374533595
 WHEN lifetime_starts >= 161.5 THEN -0.7070543157574294
 ELSE 0.0
END
AS lifetime_starts_score
,
CASE
 WHEN pOdds_col_clean <= 0.0 THEN -1.0577645892762995
 WHEN pOdds_col_clean > 0.0 AND pOdds_col_clean <= 1.1800000000000002 THEN 1.5104243587734363
 WHEN pOdds_col_clean > 1.1800000000000002 AND pOdds_col_clean <= 1.2725 THEN 1.2358757391714352
 WHEN pOdds_col_clean > 1.2725 AND pOdds_col_clean <= 1.3450000000000002 THEN 1.2370434368106231
 WHEN pOdds_col_clean > 1.3450000000000002 AND pOdds_col_clean <= 1.4075 THEN 1.1855837016913666
 WHEN pOdds_col_clean > 1.4075 AND pOdds_col_clean <= 1.4625 THEN 1.1793381592386734
 WHEN pOdds_col_clean > 1.4625 AND pOdds_col_clean <= 1.5125 THEN 1.0417844358724135
 WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.57 THEN 0.9784132274676454
 WHEN pOdds_col_clean > 1.57 AND pOdds_col_clean <= 1.6125 THEN 0.9981577812129414
 WHEN pOdds_col_clean > 1.6125 AND pOdds_col_clean <= 1.6575 THEN 0.9215549495637816
 WHEN pOdds_col_clean > 1.6575 AND pOdds_col_clean <= 1.7000000000000002 THEN 0.9155596617581707
 WHEN pOdds_col_clean > 1.7000000000000002 AND pOdds_col_clean <= 1.7525 THEN 0.8500007874539894
 WHEN pOdds_col_clean > 1.7525 AND pOdds_col_clean <= 1.8375 THEN 0.8437496340112446
 WHEN pOdds_col_clean > 1.8375 AND pOdds_col_clean <= 1.8725 THEN 0.8548440306041493
 WHEN pOdds_col_clean > 1.8725 AND pOdds_col_clean <= 1.9125 THEN 0.7676070026222365
 WHEN pOdds_col_clean > 1.9125 AND pOdds_col_clean <= 1.9525000000000001 THEN 0.7351170619897216
 WHEN pOdds_col_clean > 1.9525000000000001 AND pOdds_col_clean <= 1.9925000000000002 THEN 0.6421745816187794
 WHEN pOdds_col_clean > 1.9925000000000002 AND pOdds_col_clean <= 2.0375 THEN 0.5873969429805276
 WHEN pOdds_col_clean > 2.0375 AND pOdds_col_clean <= 2.0725000000000002 THEN 0.6015145309949306
 WHEN pOdds_col_clean > 2.0725000000000002 AND pOdds_col_clean <= 2.1100000000000003 THEN 0.5963974757377175
 WHEN pOdds_col_clean > 2.1100000000000003 AND pOdds_col_clean <= 2.1500000000000004 THEN 0.5981816466322171
 WHEN pOdds_col_clean > 2.1500000000000004 AND pOdds_col_clean <= 2.1950000000000003 THEN 0.6012762344997236
 WHEN pOdds_col_clean > 2.1950000000000003 AND pOdds_col_clean <= 2.2375000000000003 THEN 0.5992210614999626
 WHEN pOdds_col_clean > 2.2375000000000003 AND pOdds_col_clean <= 2.3200000000000003 THEN 0.5510495755553457
 WHEN pOdds_col_clean > 2.3200000000000003 AND pOdds_col_clean <= 2.3675 THEN 0.47747923543562926
 WHEN pOdds_col_clean > 2.3675 AND pOdds_col_clean <= 2.5075 THEN 0.4638727881719273
 WHEN pOdds_col_clean > 2.5075 AND pOdds_col_clean <= 2.5525 THEN 0.45436756392405653
 WHEN pOdds_col_clean > 2.5525 AND pOdds_col_clean <= 2.6025 THEN 0.4477843700153246
 WHEN pOdds_col_clean > 2.6025 AND pOdds_col_clean <= 2.6500000000000004 THEN 0.4284090144041347
 WHEN pOdds_col_clean > 2.6500000000000004 AND pOdds_col_clean <= 2.9025 THEN 0.41204938758580023
 WHEN pOdds_col_clean > 2.9025 AND pOdds_col_clean <= 3.0775 THEN 0.1752145228655012
 WHEN pOdds_col_clean > 3.0775 AND pOdds_col_clean <= 3.3525 THEN 0.15276355141324954
 WHEN pOdds_col_clean > 3.3525 AND pOdds_col_clean <= 3.4975 THEN 0.13531134225790392
 WHEN pOdds_col_clean > 3.4975 AND pOdds_col_clean <= 3.6375 THEN -0.03980769714447352
 WHEN pOdds_col_clean > 3.6375 AND pOdds_col_clean <= 3.8725 THEN -0.05625112329565218
 WHEN pOdds_col_clean > 3.8725 AND pOdds_col_clean <= 4.4125 THEN -0.14347445812624582
 WHEN pOdds_col_clean > 4.4125 AND pOdds_col_clean <= 4.737500000000001 THEN -0.14421014383000574
 WHEN pOdds_col_clean > 4.737500000000001 AND pOdds_col_clean <= 5.3325 THEN -0.14692238003475255
 WHEN pOdds_col_clean > 5.3325 AND pOdds_col_clean <= 5.470000000000001 THEN -0.1476253158132499
 WHEN pOdds_col_clean > 5.470000000000001 AND pOdds_col_clean <= 6.075 THEN -0.22486808279277815
 WHEN pOdds_col_clean > 6.075 AND pOdds_col_clean <= 6.2325 THEN -0.22895834501595247
 WHEN pOdds_col_clean > 6.2325 AND pOdds_col_clean <= 6.4025 THEN -0.35145188333731503
 WHEN pOdds_col_clean > 6.4025 AND pOdds_col_clean <= 7.61 THEN -0.47161872282643613
 WHEN pOdds_col_clean > 7.61 AND pOdds_col_clean <= 7.842499999999999 THEN -0.48624899061931226
 WHEN pOdds_col_clean > 7.842499999999999 AND pOdds_col_clean <= 8.3375 THEN -0.5339520395320482
 WHEN pOdds_col_clean > 8.3375 AND pOdds_col_clean <= 8.6075 THEN -0.5920874014865282
 WHEN pOdds_col_clean > 8.6075 AND pOdds_col_clean <= 8.9075 THEN -0.773633545889337
 WHEN pOdds_col_clean > 8.9075 AND pOdds_col_clean <= 9.2325 THEN -1.085192942838737
 WHEN pOdds_col_clean > 9.2325 AND pOdds_col_clean <= 14.032499999999999 THEN -1.1395488378604202
 ELSE 0.0
END
AS pOdds_col_clean_score
,
CASE
 WHEN race_distance = '1600m' THEN -0.038119729450816764
 WHEN race_distance = '1609m' THEN -0.08195010117206342
 WHEN race_distance = '1620m' THEN -0.0775685833835619
 WHEN race_distance = '1640m' THEN 0.017427887763886457
 WHEN race_distance = '1646m' THEN 0.03121981997255739
 WHEN race_distance = '1700m' THEN 0.019849348646136855
 WHEN race_distance = '2000m' THEN 0.040562866299525185
 WHEN race_distance = '2011m' THEN 0.025978397905742134
 WHEN race_distance = '2060m' THEN 0.030716645752489752
 WHEN race_distance = '2100m' THEN 0.009080434385495412
 WHEN race_distance = '2120m' THEN -0.005246628238147533
 WHEN race_distance = '2140m' THEN 0.002249837883305239
 WHEN race_distance = '2148m' THEN 0.00539773735821053
 WHEN race_distance = '2600m' THEN -0.002853399537141782
 WHEN race_distance = '2609m' THEN 0.021291550551344962
 WHEN race_distance = '2620m' THEN -0.00563070044850178
 WHEN race_distance = '2640m' THEN -0.0017879155828045001
 WHEN race_distance = '2650m' THEN -0.014467855995480478
 WHEN race_distance = '2900m' THEN -0.021439789847571306
 WHEN race_distance = '2950m' THEN 0.009469323848049993
 WHEN race_distance = '2970m' THEN 0.00680045793751749
 WHEN race_distance = '3000m' THEN -0.05570780302060288
 WHEN race_distance = '3100m' THEN -0.010498692957622735
 WHEN race_distance = '3120m' THEN -0.010878144673119206
 WHEN race_distance = '3140m' THEN -0.0091003922902482
 WHEN race_distance = '3640m' THEN -0.11654639117793941
 ELSE 0.0
END
AS race_distance_score
,
CASE
 WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.005271396501655062
 WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.0637856164879527
 WHEN race_meta = 'Banförhållande: tung bana' THEN 0.14860407265021133
 WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.15767936091327242
 WHEN race_meta = 'Unknown' THEN 0.117244920710381
 ELSE 0.0
END
AS race_meta_score
,
CASE
 WHEN shoeInfo_col = 'Unknown' THEN 0.1561994940559661
 WHEN shoeInfo_col = 'barefoot - barefoot' THEN 0.1138553569239461
 WHEN shoeInfo_col = 'barefoot - horseshoe' THEN -0.1298236805954044
 WHEN shoeInfo_col = 'horseshoe - barefoot' THEN 0.0550715406511693
 WHEN shoeInfo_col = 'horseshoe - horseshoe' THEN -0.06290255228685415
 ELSE 0.0
END
AS shoeInfo_col_score
,
CASE
 WHEN startNumber <= 1.5 THEN -0.00985916538348347
 WHEN startNumber > 1.5 AND startNumber <= 2.5 THEN -0.023559243987681194
 WHEN startNumber > 2.5 AND startNumber <= 3.5 THEN -0.05349268259391593
 WHEN startNumber > 3.5 AND startNumber <= 4.5 THEN 0.15793197927632152
 WHEN startNumber > 4.5 AND startNumber <= 5.5 THEN 0.18349845302278311
 WHEN startNumber > 5.5 AND startNumber <= 6.5 THEN 0.18603425870301885
 WHEN startNumber > 6.5 AND startNumber <= 7.5 THEN 0.00494232535039138
 WHEN startNumber > 7.5 AND startNumber <= 8.5 THEN -0.012820612805838183
 WHEN startNumber > 8.5 AND startNumber <= 9.5 THEN -0.2097312403140348
 WHEN startNumber > 9.5 AND startNumber <= 10.5 THEN -0.20921967049916015
 WHEN startNumber > 10.5 AND startNumber <= 11.5 THEN -0.030358589465856067
 WHEN startNumber > 11.5 AND startNumber <= 12.5 THEN -0.03562379296900309
 WHEN startNumber > 12.5 AND startNumber <= 13.5 THEN 0.030226391991771046
 WHEN startNumber > 13.5 AND startNumber <= 14.5 THEN 0.039435976186603716
 ELSE 0.0
END
AS startNumber_score
,
CASE
 WHEN start_method = 'autostart Monté' THEN -0.1915223646966343
 WHEN start_method = 'autostart Trav' THEN -0.04324854603940445
 WHEN start_method = 'voltstart Trav' THEN 0.10078033246721009
 ELSE 0.0
END
AS start_method_score
,
CASE
 WHEN vOdds_col_clean <= 0.0 THEN -1.5183189924953115
 WHEN vOdds_col_clean > 0.0 AND vOdds_col_clean <= 1.6749999999999998 THEN 1.8755325947743242
 WHEN vOdds_col_clean > 1.6749999999999998 AND vOdds_col_clean <= 1.935 THEN 1.747900696371528
 WHEN vOdds_col_clean > 1.935 AND vOdds_col_clean <= 2.215 THEN 1.5326891356588885
 WHEN vOdds_col_clean > 2.215 AND vOdds_col_clean <= 2.495 THEN 1.4429834761553755
 WHEN vOdds_col_clean > 2.495 AND vOdds_col_clean <= 2.755 THEN 1.3368118065421326
 WHEN vOdds_col_clean > 2.755 AND vOdds_col_clean <= 2.975 THEN 1.16829771019614
 WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 3.205 THEN 1.0365692382398572
 WHEN vOdds_col_clean > 3.205 AND vOdds_col_clean <= 3.435 THEN 1.0341829445152624
 WHEN vOdds_col_clean > 3.435 AND vOdds_col_clean <= 3.6550000000000002 THEN 1.0177669714434563
 WHEN vOdds_col_clean > 3.6550000000000002 AND vOdds_col_clean <= 4.075 THEN 0.963086391362705
 WHEN vOdds_col_clean > 4.075 AND vOdds_col_clean <= 4.285 THEN 0.8326430715493373
 WHEN vOdds_col_clean > 4.285 AND vOdds_col_clean <= 4.515 THEN 0.7690375762437929
 WHEN vOdds_col_clean > 4.515 AND vOdds_col_clean <= 4.755 THEN 0.7706339132830355
 WHEN vOdds_col_clean > 4.755 AND vOdds_col_clean <= 5.225 THEN 0.6909551543941811
 WHEN vOdds_col_clean > 5.225 AND vOdds_col_clean <= 5.475 THEN 0.6939777465025205
 WHEN vOdds_col_clean > 5.475 AND vOdds_col_clean <= 5.975 THEN 0.6837284025713404
 WHEN vOdds_col_clean > 5.975 AND vOdds_col_clean <= 6.215 THEN 0.6878363069526003
 WHEN vOdds_col_clean > 6.215 AND vOdds_col_clean <= 6.495 THEN 0.6897105250328176
 WHEN vOdds_col_clean > 6.495 AND vOdds_col_clean <= 6.755 THEN 0.5695941094948624
 WHEN vOdds_col_clean > 6.755 AND vOdds_col_clean <= 7.025 THEN 0.3682202542713605
 WHEN vOdds_col_clean > 7.025 AND vOdds_col_clean <= 7.285 THEN 0.3763870630517513
 WHEN vOdds_col_clean > 7.285 AND vOdds_col_clean <= 7.795 THEN 0.3783328752240999
 WHEN vOdds_col_clean > 7.795 AND vOdds_col_clean <= 8.344999999999999 THEN 0.3137668945815014
 WHEN vOdds_col_clean > 8.344999999999999 AND vOdds_col_clean <= 8.655000000000001 THEN 0.32200635247458376
 WHEN vOdds_col_clean > 8.655000000000001 AND vOdds_col_clean <= 8.955 THEN 0.29289605013297365
 WHEN vOdds_col_clean > 8.955 AND vOdds_col_clean <= 9.305 THEN 0.2895202403082191
 WHEN vOdds_col_clean > 9.305 AND vOdds_col_clean <= 9.635000000000002 THEN 0.2902165911915024
 WHEN vOdds_col_clean > 9.635000000000002 AND vOdds_col_clean <= 9.965 THEN 0.16603662638823852
 WHEN vOdds_col_clean > 9.965 AND vOdds_col_clean <= 10.325 THEN 0.17279102268858082
 WHEN vOdds_col_clean > 10.325 AND vOdds_col_clean <= 12.835 THEN 0.0799864257433443
 WHEN vOdds_col_clean > 12.835 AND vOdds_col_clean <= 13.335 THEN 0.04983928901685375
 WHEN vOdds_col_clean > 13.335 AND vOdds_col_clean <= 13.805 THEN 0.04550011747865412
 WHEN vOdds_col_clean > 13.805 AND vOdds_col_clean <= 15.915 THEN -0.0509416519319188
 WHEN vOdds_col_clean > 15.915 AND vOdds_col_clean <= 17.095 THEN -0.04913239904137612
 WHEN vOdds_col_clean > 17.095 AND vOdds_col_clean <= 20.955 THEN -0.04504462022249445
 WHEN vOdds_col_clean > 20.955 AND vOdds_col_clean <= 22.525 THEN -0.06153910852116007
 WHEN vOdds_col_clean > 22.525 AND vOdds_col_clean <= 25.165 THEN -0.18707206639341556
 WHEN vOdds_col_clean > 25.165 AND vOdds_col_clean <= 26.055 THEN -0.3492712830222263
 WHEN vOdds_col_clean > 26.055 AND vOdds_col_clean <= 27.945 THEN -0.451268802252052
 WHEN vOdds_col_clean > 27.945 AND vOdds_col_clean <= 31.305 THEN -0.470662874817828
 WHEN vOdds_col_clean > 31.305 AND vOdds_col_clean <= 33.655 THEN -0.48546814923529935
 WHEN vOdds_col_clean > 33.655 AND vOdds_col_clean <= 35.045 THEN -0.5021687479915758
 WHEN vOdds_col_clean > 35.045 AND vOdds_col_clean <= 47.265 THEN -0.5065459915401592
 WHEN vOdds_col_clean > 47.265 AND vOdds_col_clean <= 74.005 THEN -0.5118423416404186
 ELSE 0.0
END
AS vOdds_col_clean_score
,
CASE
 WHEN vOdds_col_clean <= 1.5350000000000001 THEN 
  CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.0009769081973272078
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.0009769081973272078
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN -0.0009769081973272078
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.019126465217639395
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.019126465217639395
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.24236282207280643
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.39972519474031204
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.4438477708440058
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.4438477708440058
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 13.5825 THEN 0.4866651533068987
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.0009769081973272078
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.0009769081973272078
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN -0.0009769081973272078
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.019126465217639395
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.019126465217639395
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.24236282207280643
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.39972519474031204
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.4438477708440058
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.4438477708440058
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 0.4866651533068987
         WHEN pOdds_col_clean > 13.5825 THEN 0.4866651533068987
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.025103314847322544
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.0008554143863969662
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN -0.0008554143863969662
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN -0.0008554143863969662
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN -0.0008554143863969662
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.2226994534979201
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.3800618261654257
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.4241844022691194
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.4241844022691194
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 0.4670017847320124
         WHEN pOdds_col_clean > 13.5825 THEN 0.4670017847320124
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.13149613861816645
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.007967264192246231
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN -0.003122953028794081
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN -0.003122953028794081
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN -0.003122953028794081
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03935939318355414
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.19672176585105966
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.2408443419547535
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.2408443419547535
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 0.2836617244176466
         WHEN pOdds_col_clean > 13.5825 THEN 0.2836617244176466
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.18092531879531568
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.034789752760382084
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN -0.0017398223767987617
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN -0.0017398223767987617
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN -0.0017398223767987617
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN -0.0014821583358330314
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.15588021433167254
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.20000279043536637
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.20000279043536637
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 0.24282017289825936
         WHEN pOdds_col_clean > 13.5825 THEN 0.24282017289825936
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.28296242543401734
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.12767768575482477
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN -0.0019014020030319384
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN -0.0019014020030319384
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN -0.0019014020030319384
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN -0.001963794634397332
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.0006462035153006716
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.04347637258839315
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.04347637258839315
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 0.08629375505128617
         WHEN pOdds_col_clean > 13.5825 THEN 0.08629375505128617
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2733672376416734
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.11662428590039747
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.010919397395375188
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.010919397395375188
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.010618017517114949
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.010555624885749553
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.2473234018997302
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.09058045015845423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.036963233137318474
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.03666185325905823
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.03659946062769283
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN -0.00533540745824807
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.22328893591653018
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.06654598417525423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.06099769912051847
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.06099769912051847
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.060696319242258226
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.06063392661089284
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 
     CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.22328893591653018
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.06654598417525423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.06099769912051847
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.06099769912051847
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.060696319242258226
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.06063392661089284
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 100.475 THEN 
   CASE
         WHEN pOdds_col_clean <= 1.1475 THEN -0.22328893591653018
         WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN -0.06654598417525423
         WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 0.06099769912051847
         WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 0.06099769912051847
         WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 0.060696319242258226
         WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 0.06063392661089284
         WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 0.018699058524951934
         WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN -0.0051347642863441515
         WHEN pOdds_col_clean > 13.5825 THEN -0.0051347642863441515
         ELSE 0.0
     END
 ELSE 0.0
END
AS vOdds_col_clean_x_pOdds_col_clean_score
,
CASE
 WHEN vOdds_col_clean <= 1.5350000000000001 THEN 
  CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.006885175964866086
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.00815348087614155
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.00937469955882484
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.00937469955882484
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.008625601752202582
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.008625601752202582
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0014112882621841903
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0014112882621841903
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0027016415873385
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0027016415873385
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0027016415873385
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.0031682378876650864
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.0030507551538245066
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.0030507551538245066
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.0030507551538245066
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01897466862005205
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.01897466862005205
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.02408171463925405
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.12592716723563352
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.0008074719090871967
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.00046083300218826857
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.017067347432778126
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.017067347432778126
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.016318249626155867
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.016318249626155867
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.006552722746117739
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.006552722746117739
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.007843076071272048
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.007843076071272048
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.007843076071272048
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.008309672371598634
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.00814359070516187
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.00814359070516187
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.00814359070516187
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.023694270477548803
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.023694270477548803
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.02109278680381254
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.005473704022251545
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.0002669864146691101
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.0015352913259445754
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.01599288910902182
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.01599288910902182
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.01599288910902182
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.01599288910902182
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0062273622289836916
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0062273622289836916
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.007517715554138001
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.007517715554138001
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.007517715554138001
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.007984311854464587
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.00814809847488285
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.00814809847488285
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.00814809847488285
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.023451309181399226
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.023451309181399226
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.020849825507662956
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.005230742726101962
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.007512341983166706
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.008780646894442173
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.008747533540524223
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.008747533540524223
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.008747533540524223
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.008747533540524223
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0059621737227522715
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0059621737227522715
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.007252527047906581
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.007252527047906581
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.007252527047906581
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.007719123348233167
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.00788290996865143
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.00788290996865143
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.00788290996865143
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.00016209060840847132
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.00016209060840847132
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.002763574282144737
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.017722349213076194
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.0037411280244228143
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.0037411280244228143
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.02126930845938921
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.02126930845938921
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.02126930845938921
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.02126930845938921
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.01848394864161726
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.01848394864161726
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.01977430196677157
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.01977430196677157
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.01977430196677157
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.01955941968173666
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.019282933556774528
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.019282933556774528
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.019282933556774528
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.011617743991657888
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.011617743991657888
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.014219227665394157
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.02917800259632561
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.0022550130169090377
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.0022550130169090377
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.019783193451875434
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.019783193451875434
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.019783193451875434
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.019783193451875434
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.016997833634103482
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.016997833634103482
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.016997833634103482
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.016997833634103482
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.016997833634103482
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.014983960498787717
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.014707474373825583
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.014707474373825583
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.014707474373825583
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.016193203174606836
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.016193203174606836
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.017912739138044215
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.03067060137616138
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.009477656414873093
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.009477656414873093
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.018885512272188234
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.018885512272188234
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.018885512272188234
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.018885512272188234
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.016100152454416285
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.016100152454416285
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.016100152454416285
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.016100152454416285
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.016100152454416285
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.01408627931910052
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.013809793194138385
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.013809793194138385
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.009750965090208473
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.021149712458223946
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.021149712458223946
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.022869248421661322
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.03448747932601096
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.01155243787119797
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.01155243787119797
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.019143643064027428
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.019143643064027428
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.019143643064027428
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.019143643064027428
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.016358283246255476
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.016358283246255476
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.016358283246255476
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.016358283246255476
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.016358283246255476
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.013482067026017754
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.01320558090105562
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.01320558090105562
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.00914675279712571
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.02175392475130671
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.02175392475130671
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.02347346071474409
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.03509169161909373
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.016110117739886208
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.016110117739886208
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.01129419417487014
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.011017708049908004
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.011017708049908004
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.0023287738325269945
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.028571903715905414
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.028571903715905414
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.03020253398566622
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.040055635815023326
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.016110117739886208
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.016110117739886208
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.01749177698778737
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.014706417170015421
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.01129419417487014
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.011017708049908004
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.011017708049908004
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.0023287738325269945
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.028571903715905414
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.028571903715905414
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.03020253398566622
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.040055635815023326
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.01872481744510935
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.01872481744510935
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.017525858439467808
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.017525858439467808
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.017525858439467808
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.017525858439467808
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.01474049862169586
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.01474049862169586
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.01474049862169586
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.01474049862169586
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.01474049862169586
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.011328275626550578
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.011051789501588444
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.011051789501588444
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.0017649645396253643
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.029135713008807046
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.029135713008807046
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.030766343278567844
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04061944510792496
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.018148035478134716
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.018148035478134716
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.016949076472493173
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.016949076472493173
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.016949076472493173
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.016949076472493173
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.014163716654721221
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.014163716654721221
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.014163716654721221
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.014163716654721221
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.014163716654721221
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.010751493659575942
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.010475007534613806
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.010475007534613806
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.0011881825726507284
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.029712494975781677
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.029712494975781677
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.031343125245542475
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04061944510792496
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.01449935461683104
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.01449935461683104
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.013300395611189494
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.013300395611189494
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.013300395611189494
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.013300395611189494
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.010749182221169757
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.010749182221169757
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.010749182221169757
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.010749182221169757
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.010749182221169757
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.0073369592260244774
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.007060473101062342
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.007060473101062342
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.0034441655501284913
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.034344843098560895
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.034344843098560895
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.0359754733683217
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04186091326166002
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.011963135373975212
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.011963135373975212
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.004174842358021404
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.002756013885667822
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.002756013885667822
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.007748624765523013
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.038649302313955414
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.038649302313955414
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.04027993258371622
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04362915323419871
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.011963135373975212
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.011963135373975212
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.01013827874318642
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.007587065353166684
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.004174842358021404
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.002756013885667822
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.002756013885667822
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.007748624765523013
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.038649302313955414
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.038649302313955414
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.04027993258371622
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04362915323419871
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.00637181203231991
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.00637181203231991
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0014164809836339004
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.002835309455987484
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.002835309455987484
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.013339948107178309
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.04424062565561071
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.04424062565561071
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.045871255925371515
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04362915323419871
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.00637181203231991
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.00637181203231991
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0045469554015311175
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0019957420115113804
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0014164809836339004
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.002835309455987484
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.002835309455987484
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.013339948107178309
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.04424062565561071
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.04424062565561071
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.045871255925371515
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04362915323419871
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.04260902771439994
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.04260902771439994
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.050397320730353745
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.051816149202707336
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.051816149202707336
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.062320787853898184
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.06944902191189829
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.06944902191189829
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.07107965218165908
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04362915323419871
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 100.475 THEN 
   CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.04260902771439994
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.04260902771439994
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.04443388434518874
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.04698509773520847
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.050397320730353745
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.051816149202707336
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.051816149202707336
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.062320787853898184
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.06944902191189829
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.06944902191189829
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.07107965218165908
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.04362915323419871
         ELSE 0.0
     END
 ELSE 0.0
END
AS vOdds_col_clean_x_lifetime_podium_spot_1_share_score
,
CASE
 WHEN vOdds_col_clean <= 1.5350000000000001 THEN 
  CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.16808168769512966
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.16808168769512966
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.16808168769512966
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.16808168769512966
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.014129001006760932
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.014129001006760932
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.014129001006760932
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.01399783968332528
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.01399783968332528
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.01399783968332528
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.01399783968332528
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.01399783968332528
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.01399783968332528
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.03239331072348735
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.03239331072348735
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.02624411980448824
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.02624411980448824
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.021042150293556154
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.021042150293556154
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.008916776456656832
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.008916776456656832
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.008916776456656832
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.008916776456656832
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.02264579580890025
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.02264579580890025
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.02264579580890025
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.022514634485464598
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.022514634485464598
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.022514634485464598
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.022514634485464598
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.022514634485464598
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.022514634485464598
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.04111101894227184
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.04111101894227184
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.03496182802327274
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.03525818202282681
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.030056212511894727
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.030056212511894727
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.007639313623036261
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.008571076520644276
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.008571076520644276
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.008571076520644276
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.0223000958728877
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.040896480329694944
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.040896480329694944
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.03474728941069584
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.03504364341024991
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.033368839696912025
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.033368839696912025
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.007639313623036261
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.008571076520644276
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.008571076520644276
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.008571076520644276
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.02136399794005684
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.03996038239686409
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.03996038239686409
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.03381119147786498
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.03410754547741905
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.032432741764081174
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.032432741764081174
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.009709099756301076
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.01015850382206324
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.007772167084957781
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.001622976165958672
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0019193301655127462
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.0018230507579586174
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.008921660923873892
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.009709099756301076
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.01015850382206324
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.007772167084957781
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.001622976165958672
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0019193301655127462
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.0018230507579586174
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.008921660923873892
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.009709099756301076
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.01015850382206324
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.007772167084957781
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.001622976165958672
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0019193301655127462
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.0018230507579586174
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.008921660923873892
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.009709099756301076
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.010640862653909091
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.023433784073321657
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.01015850382206324
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.007772167084957781
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.001622976165958672
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0019193301655127462
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.0018230507579586174
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.008921660923873892
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0065241504570631645
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.005592387559455146
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.005592387559455146
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.005592387559455146
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.007200533859957413
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0056692528227131386
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.003282916085607681
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.001622976165958672
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0019193301655127462
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.0018230507579586174
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.008921660923873892
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.008935415621535606
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.008003652723927591
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.008003652723927591
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.008003652723927591
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.004789268695484969
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.00529525291986358
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0037639718826193054
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0013776351455138496
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.018117275814339005
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.01841362981389308
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.018317350406338948
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.025415960572254225
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.009343924295191014
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.008412161397582999
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.007991714630212858
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.007991714630212858
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.004801206789199704
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.003775909976334039
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.001389573239228583
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.018129213908053738
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.018425567907607812
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.018425567907607812
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.025524178073523092
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.009343924295191014
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.008412161397582999
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.007991714630212858
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.007991714630212858
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.004801206789199704
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.005307191013578315
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.003775909976334039
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.001389573239228583
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.018129213908053738
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.018425567907607812
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.018425567907607812
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.025524178073523092
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.004225964514657055
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.003719980290278445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.0005019914960217448
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.0028883282331272006
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.013851312435697954
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.014147666435252029
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.014147666435252029
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.021246276601167305
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.0213657686054976
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.017641795586862286
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.020028132323967742
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.003288491655142587
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.002992137655588513
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.002992137655588513
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.004106472510326765
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.0213657686054976
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.020859784381118993
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.017641795586862286
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.020028132323967742
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.003288491655142587
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.002992137655588513
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.002992137655588513
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.004106472510326765
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.03998882520509041
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.036264852186455074
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.03865118892356054
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.021911548254735392
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.02161519425518132
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.02161519425518132
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.014516584089266042
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.03998882520509041
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.039482840980711795
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.036264852186455074
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.03865118892356054
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.021911548254735392
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.02161519425518132
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.02161519425518132
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.014516584089266042
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.06830713701226361
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.06458316399362829
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.06696950073073375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.05022986006190859
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.04993350606235453
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.04993350606235453
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.042834895896439254
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 100.475 THEN 
   CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01409319412669199
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.013161431229083975
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.012740984461713834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.06830713701226361
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.06780115278788501
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.06458316399362829
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.06696950073073375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.05022986006190859
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.04993350606235453
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.04993350606235453
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.042834895896439254
         ELSE 0.0
     END
 ELSE 0.0
END
AS vOdds_col_clean_x_lifetime_podium_spot_3_share_score
,
CASE
 WHEN horse_sex = 'Unknown' THEN 
  CASE
         WHEN lifetime_starts <= 9.5 THEN 0.08066326318337619
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.08066326318337619
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.056148337668126304
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.056148337668126304
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.016709701178234438
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.016709701178234438
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.011718594625956686
         WHEN lifetime_starts > 98.5 THEN 0.011718594625956686
         ELSE 0.0
     END
 WHEN horse_sex = 'h' THEN 
  CASE
         WHEN lifetime_starts <= 9.5 THEN 0.05731447458807081
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.05731447458807081
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 98.5 THEN -0.015049418226109702
         ELSE 0.0
     END
 WHEN horse_sex = 's' THEN 
  CASE
         WHEN lifetime_starts <= 9.5 THEN 0.05731447458807081
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.05731447458807081
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.015113912678751937
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.015066011267628934
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.015049418226109702
         WHEN lifetime_starts > 98.5 THEN -0.015049418226109702
         ELSE 0.0
     END
 WHEN horse_sex = 'v' THEN 
  CASE
         WHEN lifetime_starts <= 9.5 THEN -0.05307194792174269
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.04758653655858093
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.01432887032252885
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.01432887032252885
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01432887032252885
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.009427581202990603
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.009475482614113604
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.009475482614113604
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.009475482614113604
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.009475482614113604
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.009492075655632837
         WHEN lifetime_starts > 98.5 THEN 0.009492075655632837
         ELSE 0.0
     END
 ELSE 0.0
END
AS horse_sex_x_lifetime_starts_score
,
CASE
 WHEN pOdds_col_clean <= 1.1475 THEN 
  CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006304357559190933
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006304357559190933
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.05269477878177052
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0582435967550473
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0582435967550473
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0582435967550473
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.02288811520662816
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.023933524583739513
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.022006515096916764
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006304357559190933
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006304357559190933
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.05269477878177052
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0582435967550473
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0582435967550473
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0582435967550473
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.023419033293027205
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.02446444267013856
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.02472759319589681
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006304357559190933
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006304357559190933
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.05614926948635522
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.061698087459632
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.061698087459632
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.061698087459632
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.01996454258844252
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.01937156054740887
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.01963471107316712
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.012154008950896432
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.012154008950896432
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.06199892087806072
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.060435471732030135
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.060435471732030135
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.060435471732030135
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.01983824385338019
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.019245261812346544
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.019925974487591896
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.009525946974365283
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.009525946974365283
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.05937085890152957
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.05780740975549899
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.05780740975549899
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.05780740975549899
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.0197137561342399
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.019268895140181222
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.019949607815426575
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.07534116540567785
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.07534116540567785
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.06054763918324256
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.058984190037211975
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.058984190037211975
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.058984190037211975
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.0185369758525269
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.01903573431902402
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.01903573431902402
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.01864376161320751
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.02252087948521473
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.07607980630722369
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.07607980630722369
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0612862800847884
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.05972283093875781
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.05972283093875781
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.05972283093875781
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.017798334950981064
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.018297093417478188
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.018297093417478188
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.01864376161320751
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.02252087948521473
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.0235272950377417
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.0235272950377417
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.005941352740250507
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.004377903594219919
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.004377903594219919
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.004377903594219919
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.0006736365570165319
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.0006736365570165319
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.0006736365570165319
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.003404610925492173
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.003404610925492173
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0046008098396817685
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0046008098396817685
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.009738956829395445
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.009675024945119813
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.009176266478622689
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.012081837664526942
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.0073202208778351124
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.0034431030058278897
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.02035366364959656
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.02035366364959656
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0027677213521053665
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.001204272206074778
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.001204272206074778
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.001204272206074778
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.0006736365570165319
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.0006736365570165319
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.0006736365570165319
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.003404610925492173
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.003404610925492173
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0046008098396817685
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0046008098396817685
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.009738956829395445
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.009675024945119813
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.009176266478622689
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.012081837664526942
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.0073202208778351124
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.0034431030058278897
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.018642316244660583
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.018642316244660583
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0010563739471693874
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.0005070751988612027
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.0005070751988612027
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.0005070751988612027
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.002224970576168113
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.002224970576168113
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.002224970576168113
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0005060037923075283
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0005060037923075283
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0017022027064971237
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0017022027064971237
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.016937010036395465
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016873078152119834
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01637431968562271
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.019279890871526963
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.014518274084835133
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.010641156212827914
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.018642316244660583
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.018642316244660583
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0010563739471693874
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.0005070751988612027
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.0005070751988612027
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.0005070751988612027
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.002224970576168113
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.002224970576168113
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.002224970576168113
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0005060037923075283
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0005060037923075283
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0017022027064971237
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0017022027064971237
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.016937010036395465
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016873078152119834
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01637431968562271
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.019279890871526963
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.014518274084835133
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.010641156212827914
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0011615464067396362
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.00040190273929095396
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.00040190273929095396
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.00040190273929095396
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0023301430357383617
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0023301430357383617
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0023301430357383617
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0004008313327372795
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0004008313327372795
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.001597030246926874
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.001597030246926874
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.017042182495965716
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016585341921484587
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.016086583454987462
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.018992154640891715
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.014230537854199886
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.010353419982192667
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.001751305993720198
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.018640298558889525
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.018183457984408395
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01768469951791127
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.020590270703815524
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.015828653917123695
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.001751305993720198
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.018640298558889525
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.018183457984408395
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01768469951791127
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.020590270703815524
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.015828653917123695
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.001751305993720198
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.018640298558889525
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.018183457984408395
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01768469951791127
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.020590270703815524
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.015828653917123695
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.024247770811288222
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.001751305993720198
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0011962133236328547
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.003928259098662169
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0011972847301865291
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 1.0858159969345804e-06
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.018640298558889525
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.018183457984408395
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.01768469951791127
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.020590270703815524
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.015828653917123695
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.02276425395804756
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.02276425395804756
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.00026778914047953517
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0002862321230541337
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0002862321230541337
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0014824310372437309
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0014824310372437309
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.01715678170564886
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016699941131167732
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.016201182664670608
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.01910675385057486
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.014345137063883032
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.02276425395804756
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.02276425395804756
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.00026778914047953517
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0002862321230541337
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0002862321230541337
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0014824310372437309
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0014824310372437309
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.01715678170564886
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016699941131167732
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.016201182664670608
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.01910675385057486
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.014345137063883032
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 13.5825 THEN 
   CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.02276425395804756
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.02276425395804756
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.00026778914047953517
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.00028730352960780817
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0024447422454215058
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.0002862321230541337
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0002862321230541337
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.0014824310372437309
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.0014824310372437309
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.01715678170564886
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016699941131167732
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.016201182664670608
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.01910675385057486
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 0.014345137063883032
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 0.011951536045116475
         ELSE 0.0
     END
 ELSE 0.0
END
AS pOdds_col_clean_x_lifetime_podium_spot_1_share_score
,
CASE
 WHEN startNumber <= 1.5 THEN 
  CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.0034248037290527953
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.0034248037290527953
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.0034248037290527953
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.0034248037290527953
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.0034248037290527953
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.0034248037290527953
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.0024084727341716133
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.0024084727341716133
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.0024084727341716133
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.0024084727341716133
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.005226055326997093
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.019224758417248834
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.01988817047773351
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.014314391229384656
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.014314391229384656
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.013658003202617817
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.022314350308348118
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.02229149458960321
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.024460901898682906
         ELSE 0.0
     END
 WHEN startNumber > 1.5 AND startNumber <= 2.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0019519709895818261
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.01595067407983357
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.01743804608742919
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.01743804608742919
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.01747345451801017
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.01681706649124333
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.025473413596973634
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.025450557878228725
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.027619965187308422
         ELSE 0.0
     END
 WHEN startNumber > 2.5 AND startNumber <= 3.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.006698888066468065
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.005682557071586883
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.0019519709895818261
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.01595067407983357
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.01743804608742919
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.01743804608742919
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.01747345451801017
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.01681706649124333
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.025473413596973634
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.025196699007079555
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.027366106316159256
         ELSE 0.0
     END
 WHEN startNumber > 3.5 AND startNumber <= 4.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.002264487671112559
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.016263190761364302
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.017750562768959924
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.017750562768959924
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.017785971199540902
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.017129583172774063
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.011432731518058063
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.007318981431712333
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.006056927398909507
         ELSE 0.0
     END
 WHEN startNumber > 4.5 AND startNumber <= 5.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.002264487671112559
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.016263190761364302
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.017750562768959924
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.017750562768959924
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.017785971199540902
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.017129583172774063
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.011432731518058063
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.007318981431712333
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.006056927398909507
         ELSE 0.0
     END
 WHEN startNumber > 5.5 AND startNumber <= 6.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.006386371384937331
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.005370040390056149
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN -0.002264487671112559
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.016263190761364302
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.017750562768959924
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.017750562768959924
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.017785971199540902
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.017129583172774063
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.011432731518058063
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.007318981431712333
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.006056927398909507
         ELSE 0.0
     END
 WHEN startNumber > 6.5 AND startNumber <= 7.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0014996651504418645
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.00990274288733005
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.011390114894925673
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.011390114894925673
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.011425523325506653
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.010769135298739815
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.005072283644023812
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.0015193991894344827
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.00025734515663165727
         ELSE 0.0
     END
 WHEN startNumber > 7.5 AND startNumber <= 8.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.005270372754719999
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.006286703749601182
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0014996651504418645
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.00990274288733005
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.011390114894925673
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.011390114894925673
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.011425523325506653
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.010769135298739815
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.005072283644023812
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.0015193991894344827
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.00025734515663165727
         ELSE 0.0
     END
 WHEN startNumber > 8.5 AND startNumber <= 9.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN -0.005345251681933872
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN -0.005345251681933872
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN -0.005345251681933872
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN -0.005345251681933872
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN -0.005345251681933872
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN -0.005345251681933872
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN -0.006361582676815055
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN -0.006361582676815055
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN -0.006361582676815055
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN -0.006361582676815055
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.0014247862232279924
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN -0.009977621814543923
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN -0.011060162059763
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN -0.011060162059763
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN -0.01109557049034398
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN -0.013436381084496296
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN -0.007739529429780296
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.01586506283221196
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.01460300879940913
         ELSE 0.0
     END
 WHEN startNumber > 9.5 AND startNumber <= 10.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.010988874377143316
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.010988874377143316
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.010988874377143316
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.010988874377143316
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.010988874377143316
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.010988874377143316
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.009972543382262132
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.009972543382262132
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.009972543382262132
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.009972543382262132
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.01775891228230518
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.01750252419033256
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.016678564243221616
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.016678564243221616
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.016643155812640635
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.012539795676840593
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.011751814015566776
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.05522217171709452
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.0539601176842917
         ELSE 0.0
     END
 WHEN startNumber > 10.5 AND startNumber <= 11.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.03313555582508043
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.029032195689280393
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.02785742531812513
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.05367455315388203
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.05532393968116373
         ELSE 0.0
     END
 WHEN startNumber > 11.5 AND startNumber <= 12.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.03313555582508043
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.029032195689280393
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.02785742531812513
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.05367455315388203
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.05532393968116373
         ELSE 0.0
     END
 WHEN startNumber > 12.5 AND startNumber <= 13.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.03313555582508043
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.029032195689280393
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.02785742531812513
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.05367455315388203
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.05532393968116373
         ELSE 0.0
     END
 WHEN startNumber > 13.5 AND startNumber <= 14.5 THEN 
     CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.026928129132631665
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.02620855530272931
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.03399492420277235
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.033170964255661406
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.03313555582508043
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.029032195689280393
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.02785742531812513
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.07257791596782066
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.09208280964562343
         ELSE 0.0
     END
 WHEN startNumber > 14.5 THEN 
   CASE
         WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 0.03147552058407903
         WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 0.028836779996322545
         WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 0.028836779996322545
         WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 0.0280128200492116
         WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 0.0280128200492116
         WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 0.02797741161863062
         WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 0.023874051482830578
         WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 0.022699281111675313
         WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN -0.07773606017427048
         WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN -0.09724095385207325
         ELSE 0.0
     END
 ELSE 0.0
END
AS startNumber_x_lifetime_podium_spot_1_share_score
,
CASE
 WHEN shoeInfo_col = 'Unknown' THEN 
  CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.06733321475536873
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.06660385006500781
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.0322123304301779
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.0322123304301779
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.03210069137610009
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.03210069137610009
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.03210069137610009
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.03210069137610009
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.03210069137610009
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.03210069137610009
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.005485667123855104
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.2489822952797951
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.23475031241142852
         ELSE 0.0
     END
 WHEN shoeInfo_col = 'barefoot - barefoot' THEN 
  CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.016038931181675042
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.016038931181675042
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.016038931181675042
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.017352645061183357
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.017388724594034146
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.019328954094526354
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.019328954094526354
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.01859958940416543
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.015791930230664476
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.015791930230664476
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.01590356928474229
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.01590356928474229
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.01590356928474229
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.01417437221913366
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.013431015837932537
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.013431015837932537
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.013431015837932537
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.01035111946926278
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.003880863399103808
         ELSE 0.0
     END
 WHEN shoeInfo_col = 'barefoot - horseshoe' THEN 
  CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.01950218273937771
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.01950218273937771
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.01950218273937771
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.020815896618886023
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.020851976151736812
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.02279220565222903
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.02279220565222903
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.022062840961868106
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.011424787057346892
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.011424787057346892
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.011536426111424705
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.011536426111424705
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.011536426111424705
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.009807229045816074
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.00906387266461495
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.00906387266461495
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.00906387266461495
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.0089985214216393
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.027731113101650887
         ELSE 0.0
     END
 WHEN shoeInfo_col = 'horseshoe - barefoot' THEN 
  CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.014480728677138273
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.014480728677138273
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.014480728677138273
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.013167014797629962
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.011068519110082364
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.009128289609590156
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.009128289609590156
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.00913861739155566
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.010708673669875093
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.010708673669875093
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.010708673669875093
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.010708673669875093
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.010708673669875093
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.012437870735483721
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.013181227116684843
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.013181227116684843
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.013181227116684843
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.012992743012673152
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.026337822908007007
         ELSE 0.0
     END
 WHEN shoeInfo_col = 'horseshoe - horseshoe' THEN 
  CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.014289312585602667
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.014289312585602667
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.014289312585602667
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.012975598706094356
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.010877103018546759
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.00893687351805455
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.00893687351805455
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.009330033483091263
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.010900089761410697
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.010900089761410697
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.010900089761410697
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.010900089761410697
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.010900089761410697
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.012629286827019326
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.013372643208220446
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.013372643208220446
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.013372643208220446
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.012992743012673152
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.026337822908007007
         ELSE 0.0
     END
 ELSE 0.0
END
AS shoeInfo_col_x_lifetime_podium_spot_2_share_score
,
CASE
 WHEN lifetime_podium_spot_1_share <= 0.06391489361702125 THEN 
  CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.041583608429939245
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.047470550213541234
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.05454011599486561
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.05454011599486561
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.05474457029721366
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.05474457029721366
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.05474457029721366
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.05452293304672304
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.012412550803147822
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.009051982653330445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0009815066152087009
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.0033074320079818755
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.010983601513634795
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.06391489361702125 AND lifetime_podium_spot_1_share <= 0.08781569307885095 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0005606096457783181
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.005326332137823665
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.012378714971005464
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.012412550803147822
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.009051982653330445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0009815066152087009
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.0033074320079818755
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.010983601513634795
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.08781569307885095 AND lifetime_podium_spot_1_share <= 0.10544848035581911 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0005606096457783181
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.005326332137823665
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.012378714971005464
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.012412550803147822
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.009051982653330445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0009815066152087009
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.0033074320079818755
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.010983601513634795
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.10544848035581911 AND lifetime_podium_spot_1_share <= 0.12184517497348885 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0005606096457783181
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.005326332137823665
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.012378714971005464
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.012412550803147822
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.009051982653330445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0009815066152087009
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.0033074320079818755
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.010983601513634795
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.12184517497348885 AND lifetime_podium_spot_1_share <= 0.13614298323036178 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0005606096457783181
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.005326332137823665
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.012378714971005464
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.012412550803147822
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.009051982653330445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0009815066152087009
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.0033074320079818755
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.010983601513634795
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.13614298323036178 AND lifetime_podium_spot_1_share <= 0.14976635514018688 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0005606096457783181
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.005326332137823665
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.012395897919148044
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.012600352221496093
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.012378714971005464
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.012760899747550567
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.012412550803147822
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.009051982653330445
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0009815066152087009
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0007919313822162752
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.0033074320079818755
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.010983601513634795
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.14976635514018688 AND lifetime_podium_spot_1_share <= 0.16620626151012885 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.0031834565782091684
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.009070398361811156
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.008984557555775147
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.008389662749426529
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.008594117051774578
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.008594117051774578
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.008594117051774578
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.008372479801283951
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.008754664577829054
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.008754664577829054
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.008754664577829054
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.008406315633426305
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.005045747483608934
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.002146088994758112
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.006435027617948687
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.012692726373292966
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.16620626151012885 AND lifetime_podium_spot_1_share <= 0.18148880105401838 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.0031834565782091684
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.009070398361811156
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.008984557555775147
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.008389662749426529
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.008594117051774578
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.008594117051774578
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.008594117051774578
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.008372479801283951
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.008754664577829054
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.008754664577829054
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.008754664577829054
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.008406315633426305
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.005045747483608934
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.002146088994758112
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.006435027617948687
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.012692726373292966
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.18148880105401838 AND lifetime_podium_spot_1_share <= 0.19929078014184395 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.002855399148182387
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.008742340931784375
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.008656500125748368
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.008061605319399747
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.008266059621747797
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.008266059621747797
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.008266059621747797
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.00804442237125717
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.00865547952430836
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.00865547952430836
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.00865547952430836
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.008307130579905612
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.004946562430088239
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.002146088994758112
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.006435027617948687
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.012692726373292966
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.19929078014184395 AND lifetime_podium_spot_1_share <= 0.21225529632609275 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.0019113715602946694
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.007798313343896655
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.007712472537860646
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.007117577731512028
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.007322032033860079
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.007322032033860079
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.007322032033860079
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.007100394783369452
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.007711451936420642
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.007711451936420642
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.007711451936420642
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.007363102992017895
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.004002534842200522
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.002146088994758112
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.006435027617948687
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.012692726373292966
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.21225529632609275 AND lifetime_podium_spot_1_share <= 0.2286924939467312 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.0007244551674672733
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.00661139695106926
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.006525556145033251
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.005930661338684633
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.0061351156410326835
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.0061351156410326835
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.0061351156410326835
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.006177559879491444
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.007711451936420642
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.007711451936420642
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.007711451936420642
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.007363102992017895
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.004002534842200522
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.002146088994758112
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.0023356642277505375
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.006435027617948687
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.012692726373292966
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.2286924939467312 AND lifetime_podium_spot_1_share <= 0.2490875912408759 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.0031072481995700367
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.00277969358403195
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.002693852777995942
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.0020989579716473227
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.0023034122739953727
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.0023034122739953727
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.0023034122739953727
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.002345856512454134
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.0038797485693833327
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.0038797485693833327
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.0038797485693833327
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.0035313996249805874
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.0017834625931865177
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.003843677411718095
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.00403325264471052
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.00403325264471052
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.00403325264471052
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.00785586798478366
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.004775099436305475
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.2490875912408759 AND lifetime_podium_spot_1_share <= 0.2724180581323439 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.013697631727681191
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.0078106899440792054
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.007896530750115214
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.008491425556463834
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.008286971254115785
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.008286971254115785
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.008286971254115785
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.008244527015657022
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.0015424770849585033
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.0015424770849585033
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.0015424770849585033
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.0011941281405557563
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.0017834625931865177
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.003843677411718095
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.00403325264471052
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.00403325264471052
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.00403325264471052
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.00785586798478366
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.004775099436305475
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.2724180581323439 AND lifetime_podium_spot_1_share <= 0.2928061098792806 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.017649340602769292
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.009373696284482064
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.009459537090518073
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.010054431896866691
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.00984997759451864
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.00984997759451864
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.00984997759451864
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.00980753335605988
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -2.0529255444356673e-05
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -2.0529255444356673e-05
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -2.0529255444356673e-05
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.00021420694333323248
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.0020830362267880162
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.008003159430096095
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.008003159430096095
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.008003159430096095
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.008003159430096095
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.007440846345474317
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.029414096194210086
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.2928061098792806 AND lifetime_podium_spot_1_share <= 0.31983606557377053 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.022586841603563265
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.014311197285276035
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.014397038091312044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.014991932897660664
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.014787478595312613
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.014787478595312613
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.014787478595312613
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.014745034356853853
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.004824246499015923
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.004824246499015923
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.004824246499015923
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.004943420507076532
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.0018766043992231815
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.031992787284607596
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.31983606557377053 AND lifetime_podium_spot_1_share <= 0.35673234811165844 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.022586841603563265
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.014311197285276035
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.014397038091312044
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.014991932897660664
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.014787478595312613
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.014787478595312613
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.014787478595312613
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.014745034356853853
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.004824246499015923
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.004824246499015923
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.004824246499015923
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.004943420507076532
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.0018766043992231815
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.010019537435871832
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.031992787284607596
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.35673234811165844 AND lifetime_podium_spot_1_share <= 0.4008547008547009 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.02274068963640235
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.014465045318115122
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.01455088612415113
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.01514578093049975
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.0149413266281517
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.0149413266281517
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.0149413266281517
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.01489888238969294
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.0049780945318550094
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.0049780945318550094
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.0049780945318550094
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.0049780945318550094
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.0031075770496486396
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.015598284794998736
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.015598284794998736
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.015598284794998736
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.015598284794998736
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.015598284794998736
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.0375715346437345
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.4008547008547009 AND lifetime_podium_spot_1_share <= 0.4967532467532467 THEN 
     CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.02039238308930593
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.01336387757316615
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.013449718379202159
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.014044613185550779
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.014044613185550779
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.016579739537113995
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.016579739537113995
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.016789125128330303
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.0072236155767703555
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.008383820591291506
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.008383820591291506
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.008383820591291506
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.00029814900978785645
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.01219255873556224
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.01219255873556224
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.01219255873556224
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.01219255873556224
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.01219255873556224
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.034165808584298005
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_1_share > 0.4967532467532467 THEN 
   CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.007268761787328471
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.007268761787328471
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.007354602593364479
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.0079494973997131
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.0079494973997131
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.010484623751276314
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.010484623751276314
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.011414048480711172
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.07367858894555178
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.07483879396007292
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.08446797648312798
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.08446797648312798
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.07638230490162431
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.06389159715627424
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.06389159715627424
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.06389159715627424
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.06389159715627424
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.06389159715627424
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.04191834730753846
         ELSE 0.0
     END
 ELSE 0.0
END
AS lifetime_podium_spot_1_share_x_lifetime_podium_spot_3_share_score
,
CASE
 WHEN vOdds_col_clean <= 1.5350000000000001 THEN 
  CASE
         WHEN lifetime_starts <= 9.5 THEN 0.023336476089821045
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.025850027839820065
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.024547241138645624
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.027765907846623382
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01815447490715557
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01815447490715557
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01815447490715557
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.017701624877172396
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.017439518408897788
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.017439518408897788
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.017439518408897788
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.017439518408897788
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.017439518408897788
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01467227011423943
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.013489666157436016
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.013489666157436016
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.022802379430287602
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.07587740758867802
         WHEN lifetime_starts > 98.5 THEN 0.12974661504518975
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.022392100098647796
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.02490565184864682
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.023602865147472375
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.026821531855450133
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.017210098915982325
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.017210098915982325
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.017210098915982325
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01675724888599915
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.01649514241772454
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.01649514241772454
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.01649514241772454
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.01649514241772454
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.01649514241772454
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.013727894123066183
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.012545290166262768
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.012545290166262768
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.022802379430287602
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.07587740758867802
         WHEN lifetime_starts > 98.5 THEN 0.10572706135024366
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.007315296180118552
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.009828847930117573
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.01035853423509893
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.013577200943076689
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01665443388735577
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01665443388735577
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.0173901261699182
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.018554240267633706
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.018292133799359095
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.018292133799359095
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.018292133799359095
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.018292133799359095
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.018292133799359095
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.015524885504700738
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.014342281547897323
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.013964973539301446
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.018331846153801346
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.030191340570455708
         WHEN lifetime_starts > 98.5 THEN 0.05077481900655216
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.0073805329309032065
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.0073805329309032065
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.007910219235884563
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.010762185424950393
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01383941836922947
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01383941836922947
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.014575110651791904
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.017267509060333672
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.017409981347676573
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.017409981347676573
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.017409981347676573
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.017409981347676573
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.017409981347676573
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.014642733053018213
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.0134601290962148
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.013018123375748545
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.017384995990248446
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.022668957017119788
         WHEN lifetime_starts > 98.5 THEN 0.04246710154262047
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.008749361230723198
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.008749361230723198
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.009279047535704554
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.009173571730724464
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.012250804675003543
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.012250804675003543
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.012986496957565975
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.015678895366107743
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.016001218595972158
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.016001218595972158
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.016001218595972158
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.016001218595972158
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.016001218595972158
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.02174544019534824
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.020562836238544827
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.020120830518078572
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.024487703132578476
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.029771664159449807
         WHEN lifetime_starts > 98.5 THEN -0.011633369100567725
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.0056619709583796045
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.0056619709583796045
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.006191657263360962
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.00608618145838087
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.009163414402659949
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.009163414402659949
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.00989910668522238
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.012591505093764152
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012913828323628567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012913828323628567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012913828323628567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012913828323628567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012913828323628567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.022643025139607587
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.022643025139607587
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.022201019419141335
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.026567892033641235
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.03185185306051257
         WHEN lifetime_starts > 98.5 THEN -0.009553180199504963
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.0028043780171161884
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.0028043780171161884
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.0033340643220975442
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.003228588517117454
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.006305821461396533
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.006305821461396533
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.007041513743958964
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.009733912152500735
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.02611605140494137
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.02611605140494137
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.025674045684475115
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.024163217648073325
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.019735256665539
         WHEN lifetime_starts > 98.5 THEN -0.021669776594478548
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.0028043780171161884
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.0028043780171161884
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.0033340643220975442
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.003228588517117454
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.006305821461396533
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.006305821461396533
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.007041513743958964
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.009733912152500735
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.01005623538236515
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.02611605140494137
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.02611605140494137
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.025674045684475115
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.024163217648073325
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.019735256665539
         WHEN lifetime_starts > 98.5 THEN -0.021669776594478548
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.004323388330012456
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.004323388330012456
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.003793702025031098
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.0038991778300111885
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.0026543881309827426
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.0026543881309827426
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.0019186958484203112
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.0007737025601214607
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.017155841812562092
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.017155841812562092
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.016713836092095837
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.015353195357849271
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.014904766824431818
         WHEN lifetime_starts > 98.5 THEN -0.023502219839729176
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.004323388330012456
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.004323388330012456
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.003793702025031098
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.0038991778300111885
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.0026543881309827426
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.0026543881309827426
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.0019186958484203112
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.0007737025601214607
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.017155841812562092
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.017155841812562092
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.016713836092095837
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.015353195357849271
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.014904766824431818
         WHEN lifetime_starts > 98.5 THEN -0.023502219839729176
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.004323388330012456
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.004323388330012456
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.003793702025031098
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.0038991778300111885
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.0026543881309827426
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.0026543881309827426
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.0019186958484203112
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.0007737025601214607
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.0010960257899858758
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.017155841812562092
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.017155841812562092
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.016713836092095837
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.015353195357849271
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.014904766824431818
         WHEN lifetime_starts > 98.5 THEN -0.023502219839729176
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.0009464254285429588
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.0009464254285429588
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.007583021471733533
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.00805149976773881
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.007664150195552
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.007664150195552
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.006928457912989565
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.004236059504447796
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.003913736274583381
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.003913736274583381
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.003913736274583381
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.003913736274583381
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.003913736274583381
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.012146079747992835
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.012146079747992835
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.01170407402752658
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.010343433293280014
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.009330180978770185
         WHEN lifetime_starts > 98.5 THEN -0.029076805685390807
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -1.764212784448327e-05
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -1.764212784448327e-05
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.008547089028120972
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.009015567324126249
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.008628217751939438
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.008628217751939438
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.007892525469377003
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.007708900455926704
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.007386577226062289
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.007386577226062289
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.007386577226062289
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.007386577226062289
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.007386577226062289
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.008673238796513928
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.008673238796513928
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.008231233076047673
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN 0.006870592341801108
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.0058573400272912786
         WHEN lifetime_starts > 98.5 THEN -0.031585579080482276
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.018783282247797815
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.019251760543803093
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.02090132203595942
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02071769702250911
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.004777563490534733
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0061382042247812955
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.007151456539291126
         WHEN lifetime_starts > 98.5 THEN -0.03435818242738785
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.018783282247797815
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.019251760543803093
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.02090132203595942
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02071769702250911
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.004777563490534733
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0061382042247812955
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.007151456539291126
         WHEN lifetime_starts > 98.5 THEN -0.03435818242738785
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.018783282247797815
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.019251760543803093
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.02090132203595942
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02071769702250911
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.004777563490534733
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0061382042247812955
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.007151456539291126
         WHEN lifetime_starts > 98.5 THEN -0.03435818242738785
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.010253835347521324
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.018783282247797815
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.019251760543803093
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.021637014318521854
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.02090132203595942
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02071769702250911
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.020395373792644698
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.004335557770068478
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.004777563490534733
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0061382042247812955
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.007151456539291126
         WHEN lifetime_starts > 98.5 THEN -0.03435818242738785
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.02647041397039541
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.02647041397039541
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.0349998608706719
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.035468339166677174
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.037853592941395925
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.037853592941395925
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.0371179006588335
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.036934275645383194
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.020552136392942563
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.020552136392942563
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.020994142113408814
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.020423008923601337
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.016797811396472965
         WHEN lifetime_starts > 98.5 THEN -0.03435818242738785
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 100.475 THEN 
   CASE
         WHEN lifetime_starts <= 9.5 THEN -0.02647041397039541
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.02647041397039541
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.0349998608706719
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.035468339166677174
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.037853592941395925
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.037853592941395925
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.0371179006588335
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.036934275645383194
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.03661195241551879
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.020552136392942563
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.020552136392942563
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.020994142113408814
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.020423008923601337
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.016797811396472965
         WHEN lifetime_starts > 98.5 THEN -0.03435818242738785
         ELSE 0.0
     END
 ELSE 0.0
END
AS vOdds_col_clean_x_lifetime_starts_score
,
CASE
 WHEN vOdds_col_clean <= 1.5350000000000001 THEN 
  CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.05053250836975816
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.04738967392557304
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.03510872578943051
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.03510872578943051
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.029701108110517384
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02800566566824884
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02800566566824884
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.027026072026402143
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.027237194350034803
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.027237194350034803
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.027260989986560562
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.03751999971424981
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.056111013543342206
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.06587848878984405
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.08832540052988509
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.037060571239542955
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.03391773679535784
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.03510872578943051
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.03510872578943051
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.029701108110517384
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02800566566824884
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02800566566824884
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02804922582929211
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.027026072026402143
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.027237194350034803
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.027237194350034803
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.027260989986560562
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.03751999971424981
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.056111013543342206
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.06587848878984405
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.08832540052988509
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.030249231888848475
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.029612990564334644
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.030803979558407316
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.030803979558407316
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.028634285234840528
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.028634285234840528
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.028634285234840528
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.028677845395883795
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.028677845395883795
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.028677845395883795
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.028677845395883795
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02765469159299383
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.02786581391662649
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.02786581391662649
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.027730260625710074
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.021386168293378086
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.014208694435815716
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.00623404266777549
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.006248786628380406
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.025330287208770376
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.026171066917727973
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.027362055911800645
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.026184867496203523
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.024990123988750286
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.024990123988750286
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.024990123988750286
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.025033684149793553
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.025033684149793553
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.025033684149793553
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.025033684149793553
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.025033684149793553
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.025244806473426216
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.025244806473426216
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.025109253182509797
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.019771282942565593
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.012593809085003222
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.006402560132649327
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.004931232037732335
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.014970370863720765
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.0260877954186784
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.027278784412751073
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.026101595997153948
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.024906852489700714
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.024906852489700714
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.024906852489700714
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.024975399512123835
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.02376559936208117
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.023630046071164753
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.01829207583122055
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.011114601973658178
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.008178765352944664
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.006707437258027672
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.014970370863720765
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.0260877954186784
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.027278784412751073
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.026101595997153948
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.024906852489700714
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.024906852489700714
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.024906852489700714
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02495041265074398
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.0225100189396776
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.021300218789634937
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.021164665498718517
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.015826695258774316
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.008649221401211946
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.005713384780498432
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.00424205668558144
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.015025453678058413
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.02614287823301605
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.02733386722708872
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.026156678811491595
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.02496193530403836
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02496193530403836
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02496193530403836
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02500549546508163
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02500549546508163
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02500549546508163
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02500549546508163
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02500549546508163
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.02256510175401525
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.021355301603972584
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.020811599993305747
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.015473629753361544
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.008296155895799174
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.005360319275085658
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.0037145655444437535
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.015088276471954595
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.02620570102691223
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.027396690020984903
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.026219501605387777
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.025024758097934544
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.02258436438686816
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.0213745642368255
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.0206690864344401
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.015331116194495899
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.008153642336933529
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 0.005217805716220013
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 0.0035720519855781084
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.015066867393014344
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.02451949435508984
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.024214244568801734
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.023037056153204605
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.019401918934684993
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.018192118784642327
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.017486640982256933
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.012148670742312729
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.0007810553530652603
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.0021547812676482557
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.010874679572985864
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.02032730653506136
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.02002205674877325
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.01884486833317613
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.019401918934684993
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.018192118784642327
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.017486640982256933
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.012148670742312729
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.0007810553530652603
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.0021547812676482557
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.010874679572985864
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.02032730653506136
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.02002205674877325
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.01884486833317613
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.019401918934684993
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.018192118784642327
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.017486640982256933
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.012148670742312729
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.0007810553530652603
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.0021547812676482557
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.010874679572985864
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.02032730653506136
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.02002205674877325
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.01884486833317613
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.02184231264575137
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.019401918934684993
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.018192118784642327
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.017486640982256933
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.012148670742312729
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 0.0007810553530652603
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.0021547812676482557
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 0.008693666322857669
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 0.018146293284933165
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 0.017841043498645057
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 0.016663855083047935
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.019661299395623173
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.017220905684556795
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.016011105534514132
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.015305627732128733
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 0.010552655744930353
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -7.733281210418885e-05
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.0021547812676482557
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.010835833508766848
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.0013832065466913568
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.0016884563329794613
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.00286564474857659
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.0035388896079982177
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.0023290894579555514
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.0016236116555701577
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.0025276324974017363
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.013157621054436287
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.013020247919350674
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.010835833508766848
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.0013832065466913568
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.0016884563329794613
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.00286564474857659
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 0.00013179956399865175
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 0.0035388896079982177
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 0.0023290894579555514
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 0.0016236116555701577
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.0025276324974017363
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.013157621054436287
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.013020247919350674
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.02393559308700562
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.014482966124930132
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.014788215911218237
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.015965404326815365
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.01296796001424012
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.008747549085495254
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.009957349235537916
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.010662827037923307
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.005039050142780027
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.013157621054436287
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.013020247919350674
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.03224006824073258
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.0227874412786571
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.02309269106494521
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.024269879480542333
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.021272435167967094
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.017052024239222228
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.01826182438926489
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.018967302191650288
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.013343525296506998
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.013157621054436287
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.013020247919350674
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.004631233053642356
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 
     CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.1419591212850269
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.13250649432295142
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.13281174410923952
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.13398893252483662
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.13173231569782745
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.13294211584787013
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.13312560070090898
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.09987546295523211
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.040746421231945815
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.01798148633366165
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.009592471467953338
         ELSE 0.0
     END
 WHEN vOdds_col_clean > 100.475 THEN 
   CASE
         WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN -0.1419591212850269
         WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN -0.13250649432295142
         WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN -0.13281174410923952
         WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN -0.13398893252483662
         WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN -0.13595272662657232
         WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN -0.13173231569782745
         WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN -0.13294211584787013
         WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN -0.13312560070090898
         WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN -0.09987546295523211
         WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN -0.040746421231945815
         WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN -0.01798148633366165
         WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN -0.009592471467953338
         ELSE 0.0
     END
 ELSE 0.0
END
AS vOdds_col_clean_x_lifetime_podium_spot_2_share_score
,
CASE
 WHEN lifetime_podium_spot_2_share <= 0.034364666981577655 THEN 
  CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN 0.012144206514453963
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.009705848504049992
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.009705848504049992
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.009705848504049992
         WHEN race_meta = 'Unknown' THEN -0.262545175653129
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.034364666981577655 AND lifetime_podium_spot_2_share <= 0.05907278165503485 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN 0.012680907374066318
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.009705848504049992
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.009705848504049992
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.009705848504049992
         WHEN race_meta = 'Unknown' THEN -0.262545175653129
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.05907278165503485 AND lifetime_podium_spot_2_share <= 0.07722122838401904 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN 0.012680907374066318
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.009705848504049992
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.009705848504049992
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.009705848504049992
         WHEN race_meta = 'Unknown' THEN -0.262545175653129
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.07722122838401904 AND lifetime_podium_spot_2_share <= 0.09122919334186935 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN 0.008208077520444976
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.005233018650428653
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.005233018650428653
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.005233018650428653
         WHEN race_meta = 'Unknown' THEN -0.262545175653129
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.09122919334186935 AND lifetime_podium_spot_2_share <= 0.10327052968361175 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN 0.005399538722629785
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.0024244798526134623
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.0024244798526134623
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.0024244798526134623
         WHEN race_meta = 'Unknown' THEN -0.2219774741875205
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.10327052968361175 AND lifetime_podium_spot_2_share <= 0.111421477343265 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0027837745113652346
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.0046901668583660145
         WHEN race_meta = 'Unknown' THEN -0.19243571436742268
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.111421477343265 AND lifetime_podium_spot_2_share <= 0.12170606711853195 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0027837745113652346
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.0046901668583660145
         WHEN race_meta = 'Unknown' THEN -0.19243571436742268
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.12170606711853195 AND lifetime_podium_spot_2_share <= 0.13025804171085184 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0027837745113652346
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.0046901668583660145
         WHEN race_meta = 'Unknown' THEN 0.03637647782707496
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.13025804171085184 AND lifetime_podium_spot_2_share <= 0.13807120829828984 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0027837745113652346
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.0046901668583660145
         WHEN race_meta = 'Unknown' THEN 0.03637647782707496
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.13807120829828984 AND lifetime_podium_spot_2_share <= 0.14644659377628255 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0027837745113652346
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.0046901668583660145
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.0046901668583660145
         WHEN race_meta = 'Unknown' THEN 0.03637647782707496
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.14644659377628255 AND lifetime_podium_spot_2_share <= 0.1548457411133467 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0021198799678776295
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.01262874694691451
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.01262874694691451
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.01262874694691451
         WHEN race_meta = 'Unknown' THEN 0.028437897738526466
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.1548457411133467 AND lifetime_podium_spot_2_share <= 0.1661735700197238 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.003424892777684224
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.013933759756721105
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.013933759756721105
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.013933759756721105
         WHEN race_meta = 'Unknown' THEN 0.028437897738526466
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.1661735700197238 AND lifetime_podium_spot_2_share <= 0.1731306403094112 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.003424892777684224
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.013933759756721105
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.013933759756721105
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.013933759756721105
         WHEN race_meta = 'Unknown' THEN 0.028437897738526466
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.1731306403094112 AND lifetime_podium_spot_2_share <= 0.1837907576823833 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.0037009508846187304
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.01420981786365561
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.01420981786365561
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.01420981786365561
         WHEN race_meta = 'Unknown' THEN 0.028437897738526466
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.1837907576823833 AND lifetime_podium_spot_2_share <= 0.1993788819875776 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.003956534514732082
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.014465401493768962
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.014465401493768962
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.014465401493768962
         WHEN race_meta = 'Unknown' THEN 0.04092070016476815
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.1993788819875776 AND lifetime_podium_spot_2_share <= 0.21401308615049064 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.003956534514732082
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.014465401493768962
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.014465401493768962
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.014465401493768962
         WHEN race_meta = 'Unknown' THEN 0.04092070016476815
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.21401308615049064 AND lifetime_podium_spot_2_share <= 0.23785950023573782 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.003956534514732082
         WHEN race_meta = 'Banförhållande: något tung bana' THEN -0.014465401493768962
         WHEN race_meta = 'Banförhållande: tung bana' THEN -0.014465401493768962
         WHEN race_meta = 'Banförhållande: vinterbana' THEN -0.014465401493768962
         WHEN race_meta = 'Unknown' THEN 0.04092070016476815
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.23785950023573782 AND lifetime_podium_spot_2_share <= 0.2847490347490347 THEN 
     CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.005638531113295472
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.024398126457582874
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.024398126457582874
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.024398126457582874
         WHEN race_meta = 'Unknown' THEN 0.07978422811612
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_2_share > 0.2847490347490347 THEN 
   CASE
         WHEN race_meta = 'Banförhållande: lätt bana' THEN -0.005638531113295472
         WHEN race_meta = 'Banförhållande: något tung bana' THEN 0.031199581475602443
         WHEN race_meta = 'Banförhållande: tung bana' THEN 0.031199581475602443
         WHEN race_meta = 'Banförhållande: vinterbana' THEN 0.031199581475602443
         WHEN race_meta = 'Unknown' THEN 0.3647659610333263
         ELSE 0.0
     END
 ELSE 0.0
END
AS lifetime_podium_spot_2_share_x_race_meta_score
,
CASE
 WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 
  CASE
         WHEN start_method = 'autostart Monté' THEN -0.598456502173726
         WHEN start_method = 'autostart Trav' THEN 0.0025520976943256583
         WHEN start_method = 'voltstart Trav' THEN 0.002552411617391407
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.598456502173726
         WHEN start_method = 'autostart Trav' THEN 0.003290132577066911
         WHEN start_method = 'voltstart Trav' THEN 0.003290446500132661
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.598456502173726
         WHEN start_method = 'autostart Trav' THEN 0.003290132577066911
         WHEN start_method = 'voltstart Trav' THEN 0.003290446500132661
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.598456502173726
         WHEN start_method = 'autostart Trav' THEN 0.003290132577066911
         WHEN start_method = 'voltstart Trav' THEN 0.003290446500132661
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.598456502173726
         WHEN start_method = 'autostart Trav' THEN 0.003390935989011865
         WHEN start_method = 'voltstart Trav' THEN 0.0033912499120776138
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 0.0032232671446625677
         WHEN start_method = 'voltstart Trav' THEN 0.0033912499120776138
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 0.0032232671446625677
         WHEN start_method = 'voltstart Trav' THEN 0.0033912499120776138
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 0.0020954772485458385
         WHEN start_method = 'voltstart Trav' THEN 0.0022634600159608846
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 0.0021684273510380555
         WHEN start_method = 'voltstart Trav' THEN 0.0023364101184531016
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 0.0021684273510380555
         WHEN start_method = 'voltstart Trav' THEN 0.0023364101184531016
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 0.0021684273510380555
         WHEN start_method = 'voltstart Trav' THEN 0.0023364101184531016
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN -0.5986241710180753
         WHEN start_method = 'autostart Trav' THEN 9.916217168147554e-05
         WHEN start_method = 'voltstart Trav' THEN 0.00026714493909652155
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN 0.11276646115491946
         WHEN start_method = 'autostart Trav' THEN 0.0002448668215073753
         WHEN start_method = 'voltstart Trav' THEN 0.00026714493909652155
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN 0.11276646115491946
         WHEN start_method = 'autostart Trav' THEN 0.0002448668215073753
         WHEN start_method = 'voltstart Trav' THEN 0.00026714493909652155
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN 0.11276646115491946
         WHEN start_method = 'autostart Trav' THEN -0.001724142674996238
         WHEN start_method = 'voltstart Trav' THEN -0.001701864557407092
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN 0.11276646115491946
         WHEN start_method = 'autostart Trav' THEN -0.007367843054130171
         WHEN start_method = 'voltstart Trav' THEN -0.007345564936541025
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN 1.0262974757522472
         WHEN start_method = 'autostart Trav' THEN -0.00696361797741499
         WHEN start_method = 'voltstart Trav' THEN -0.006996954514475643
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 
     CASE
         WHEN start_method = 'autostart Monté' THEN 1.036665442128449
         WHEN start_method = 'autostart Trav' THEN -0.008175748973347031
         WHEN start_method = 'voltstart Trav' THEN -0.010113976762887248
         ELSE 0.0
     END
 WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 
   CASE
         WHEN start_method = 'autostart Monté' THEN 1.036665442128449
         WHEN start_method = 'autostart Trav' THEN -0.004802842333692218
         WHEN start_method = 'voltstart Trav' THEN -0.006741070123232435
         ELSE 0.0
     END
 ELSE 0.0
END
AS lifetime_podium_spot_3_share_x_start_method_score
,
CASE
 WHEN horse_sex = 'Unknown' THEN 
  CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.8377605366571282
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN -0.8453094952360851
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN -0.8453094952360851
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN -0.8459144225188093
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN -0.8459144225188093
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.8608474017977055
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.8618816372570344
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.8618816372570344
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.8618816372570344
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.8618816372570344
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.8618816372570344
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.8618816372570344
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.8615683137849406
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.8615683137849406
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.6311578288770221
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.7186041310697276
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.7261542974237198
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.7443892327808659
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.7443892327808659
         ELSE 0.0
     END
 WHEN horse_sex = 'h' THEN 
  CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN 0.013368950288065057
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.0071272356221341185
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.0071272356221341185
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.006522308339409936
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.006680620961861735
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN -0.008252358317034216
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN -0.009286593776363128
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN -0.009311059908642744
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN -0.009311059908642744
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN -0.009311059908642744
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN -0.009311059908642744
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN -0.009311059908642744
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN -0.008909174818205913
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN -0.008909174818205913
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN -0.009933257298103007
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN -0.0117267620583508
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN -0.008959899192770788
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.013205482438253579
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.01185498374613649
         ELSE 0.0
     END
 WHEN horse_sex = 's' THEN 
  CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.01615859997719763
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.002328637928298909
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.002328637928298909
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.002328637928298909
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.004083238345238629
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.002731646653791499
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.002731646653791499
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.002707180521511883
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.002707180521511883
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.002707180521511883
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.002707180521511883
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.002707180521511883
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.0031090656119487133
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.0031090656119487133
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.0020849831320516195
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.001741658703399783
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.004508521568979799
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN 0.00026293832349700414
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN 0.001613437015614093
         ELSE 0.0
     END
 WHEN horse_sex = 'v' THEN 
  CASE
         WHEN lifetime_podium_spot_3_share <= 0.00505050505050505 THEN -0.016324592191722928
         WHEN lifetime_podium_spot_3_share > 0.00505050505050505 AND lifetime_podium_spot_3_share <= 0.04371715241280455 THEN 0.002162645713773613
         WHEN lifetime_podium_spot_3_share > 0.04371715241280455 AND lifetime_podium_spot_3_share <= 0.05698051948051945 THEN 0.002162645713773613
         WHEN lifetime_podium_spot_3_share > 0.05698051948051945 AND lifetime_podium_spot_3_share <= 0.06694677871148455 THEN 0.002162645713773613
         WHEN lifetime_podium_spot_3_share > 0.06694677871148455 AND lifetime_podium_spot_3_share <= 0.0771213322759714 THEN 0.003917246130713333
         WHEN lifetime_podium_spot_3_share > 0.0771213322759714 AND lifetime_podium_spot_3_share <= 0.08582589285714284 THEN 0.003917246130713333
         WHEN lifetime_podium_spot_3_share > 0.08582589285714284 AND lifetime_podium_spot_3_share <= 0.09363758992805754 THEN 0.003917246130713333
         WHEN lifetime_podium_spot_3_share > 0.09363758992805754 AND lifetime_podium_spot_3_share <= 0.10031446540880501 THEN 0.0038927799984337175
         WHEN lifetime_podium_spot_3_share > 0.10031446540880501 AND lifetime_podium_spot_3_share <= 0.10876959479443946 THEN 0.0038927799984337175
         WHEN lifetime_podium_spot_3_share > 0.10876959479443946 AND lifetime_podium_spot_3_share <= 0.11551543694400829 THEN 0.0038927799984337175
         WHEN lifetime_podium_spot_3_share > 0.11551543694400829 AND lifetime_podium_spot_3_share <= 0.1246468926553672 THEN 0.0038927799984337175
         WHEN lifetime_podium_spot_3_share > 0.1246468926553672 AND lifetime_podium_spot_3_share <= 0.13054402447017693 THEN 0.0038927799984337175
         WHEN lifetime_podium_spot_3_share > 0.13054402447017693 AND lifetime_podium_spot_3_share <= 0.13962038303693564 THEN 0.003981341616776747
         WHEN lifetime_podium_spot_3_share > 0.13962038303693564 AND lifetime_podium_spot_3_share <= 0.14976635514018688 THEN 0.003981341616776747
         WHEN lifetime_podium_spot_3_share > 0.14976635514018688 AND lifetime_podium_spot_3_share <= 0.1614143920595533 THEN 0.002957259136879653
         WHEN lifetime_podium_spot_3_share > 0.1614143920595533 AND lifetime_podium_spot_3_share <= 0.1755571360834518 THEN 0.0026139347082278167
         WHEN lifetime_podium_spot_3_share > 0.1755571360834518 AND lifetime_podium_spot_3_share <= 0.1947477301459602 THEN 0.0053807975738078325
         WHEN lifetime_podium_spot_3_share > 0.1947477301459602 AND lifetime_podium_spot_3_share <= 0.2269696969696969 THEN -0.002889340143785062
         WHEN lifetime_podium_spot_3_share > 0.2269696969696969 THEN -0.0015388414516679734
         ELSE 0.0
     END
 ELSE 0.0
END
AS horse_sex_x_lifetime_podium_spot_3_share_score
,
CASE
 WHEN startNumber <= 1.5 THEN 
  CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.028509529113946656
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN -0.012928063643209881
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN -0.013583013548507269
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN -0.008831428804029208
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 0.02642187435125511
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.025340324864507276
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.015422049828132767
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.015422049828132767
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 0.014593269977749387
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 0.013409979440676833
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 0.013409979440676833
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 0.004617127133291061
         WHEN vOdds_col_clean > 100.475 THEN 0.004617127133291061
         ELSE 0.0
     END
 WHEN startNumber > 1.5 AND startNumber <= 2.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.05452029415026454
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.013082701393108012
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.011397513932958184
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.001470566572681047
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -0.0008850437589360766
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN -0.006638919024547231
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN -0.016557194060921744
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN -0.016557194060921744
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.018569264448377677
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.018569264448377677
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.02736211675576345
         WHEN vOdds_col_clean > 100.475 THEN -0.02736211675576345
         ELSE 0.0
     END
 WHEN startNumber > 2.5 AND startNumber <= 3.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.05452029415026454
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.013082701393108012
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.011397513932958184
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.001470566572681047
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -0.0008850437589360766
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN -0.006638919024547231
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN -0.016557194060921744
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN -0.016557194060921744
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.017385973911305128
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.018569264448377677
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.018569264448377677
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.02736211675576345
         WHEN vOdds_col_clean > 100.475 THEN -0.02736211675576345
         ELSE 0.0
     END
 WHEN startNumber > 3.5 AND startNumber <= 4.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.03286522202287614
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.018488079210378393
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.014677355057101259
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.00475040769682412
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 0.0023947973652069967
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN -0.0033590779004041543
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN -0.01413604278820807
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN -0.01413604278820807
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN -0.014964822638591453
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN -0.014964822638591453
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN -0.014964822638591453
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.01810713389349465
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.01810713389349465
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.01810713389349465
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.01810713389349465
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.019290424430567207
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.019290424430567207
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.02808327673795298
         WHEN vOdds_col_clean > 100.475 THEN -0.02808327673795298
         ELSE 0.0
     END
 WHEN startNumber > 4.5 AND startNumber <= 5.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.021821354956303912
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.021821354956303912
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.018010630803026773
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.005584276731053197
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 0.003228666399436075
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN -0.002525208866175078
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN -0.013302173753978994
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN -0.013302173753978994
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN -0.014130953604362374
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN -0.014130953604362374
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN -0.014130953604362374
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.017273264859265572
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.017273264859265572
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.017273264859265572
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.017273264859265572
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.01845655539633813
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.01845655539633813
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.027249407703723895
         WHEN vOdds_col_clean > 100.475 THEN -0.027249407703723895
         ELSE 0.0
     END
 WHEN startNumber > 5.5 AND startNumber <= 6.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.021473532209676516
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.021473532209676516
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.01766280805639938
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.002117637748648348
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -0.00023797258296877517
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.0001581993671002143
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN -0.00552131985286303
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN -0.00552131985286303
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN -0.00635009970324641
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN -0.00635009970324641
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN -0.00635009970324641
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.010675701495222163
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.010675701495222163
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.01946855380260793
         WHEN vOdds_col_clean > 100.475 THEN -0.01946855380260793
         ELSE 0.0
     END
 WHEN startNumber > 6.5 AND startNumber <= 7.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.021473532209676516
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.021473532209676516
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.01766280805639938
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.002117637748648348
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -0.00023797258296877517
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.0001581993671002143
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN -0.00552131985286303
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN -0.00552131985286303
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN -0.00635009970324641
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN -0.00635009970324641
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN -0.00635009970324641
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.00949241095814961
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.010675701495222163
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.010675701495222163
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.01946855380260793
         WHEN vOdds_col_clean > 100.475 THEN -0.01946855380260793
         ELSE 0.0
     END
 WHEN startNumber > 7.5 AND startNumber <= 8.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.021473532209676516
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.021473532209676516
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.017844974217753048
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.002299803910002017
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -5.580642161510593e-05
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.00034036552845388354
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.0028515639628247883
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.0028515639628247883
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.0020227841124414087
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.0020227841124414087
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.0020227841124414087
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.002302817679534345
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.002302817679534345
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.011095669986920114
         WHEN vOdds_col_clean > 100.475 THEN -0.011095669986920114
         ELSE 0.0
     END
 WHEN startNumber > 8.5 AND startNumber <= 9.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.016905341876978487
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.016905341876978487
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.0166774488771533
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.0011322785694022667
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -5.580642161510593e-05
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.00034036552845388354
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.0028515639628247883
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.0028515639628247883
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.0020227841124414087
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.0020227841124414087
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.0020227841124414087
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.001119527142461791
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.002302817679534345
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.002302817679534345
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.011095669986920114
         WHEN vOdds_col_clean > 100.475 THEN -0.011095669986920114
         ELSE 0.0
     END
 WHEN startNumber > 9.5 AND startNumber <= 10.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.016905341876978487
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.016905341876978487
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.016818284268414224
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.0012731139606631955
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 8.502896964582372e-05
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.0004812009197148132
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.002992399354085717
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.002992399354085717
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.0021636195037023375
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.0021636195037023375
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.0021636195037023375
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN -0.0009786917512008613
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN -0.0009786917512008613
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN -0.0009786917512008613
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN -0.0009786917512008613
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN -0.0021619822882734153
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN -0.0021619822882734153
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN -0.010954834595659185
         WHEN vOdds_col_clean > 100.475 THEN -0.010954834595659185
         ELSE 0.0
     END
 WHEN startNumber > 10.5 AND startNumber <= 11.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.01679242662724418
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.01679242662724418
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.01711257344754715
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.0034303386494398975
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 0.006029241195306194
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.011281927264310852
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.014200433923847582
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.014200433923847582
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 0.00904605228148845
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 0.00904605228148845
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 0.0002531999741026787
         WHEN vOdds_col_clean > 100.475 THEN 0.0002531999741026787
         ELSE 0.0
     END
 WHEN startNumber > 11.5 AND startNumber <= 12.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.016540697633257887
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.016540697633257887
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.016860844453560855
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.0031786096554536044
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 0.005777512201319902
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.011281927264310852
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.014200433923847582
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.014200433923847582
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 0.00904605228148845
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 0.00904605228148845
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 0.0002531999741026787
         WHEN vOdds_col_clean > 100.475 THEN 0.0002531999741026787
         ELSE 0.0
     END
 WHEN startNumber > 12.5 AND startNumber <= 13.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.016540697633257887
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.016540697633257887
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.016860844453560855
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN 0.0031786096554536044
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN 0.005777512201319902
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN 0.011281927264310852
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.014200433923847582
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.014200433923847582
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.013371654073464202
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 0.010229342818561003
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 0.00904605228148845
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 0.00904605228148845
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 0.0002531999741026787
         WHEN vOdds_col_clean > 100.475 THEN 0.0002531999741026787
         ELSE 0.0
     END
 WHEN startNumber > 13.5 AND startNumber <= 14.5 THEN 
     CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN 0.004682338951003119
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN 0.004682338951003119
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN 0.005002485771306083
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN -0.008679749026801166
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -0.0060808464809348674
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN -0.0005764314179439178
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.010734259191501717
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.02113692591478923
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.02113692591478923
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.02113692591478923
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.02113692591478923
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 0.01799461465988603
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 0.01799461465988603
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 0.01799461465988603
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 0.01799461465988603
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 0.016811324122813477
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 0.016811324122813477
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 0.013064344987488204
         WHEN vOdds_col_clean > 100.475 THEN 0.013064344987488204
         ELSE 0.0
     END
 WHEN startNumber > 14.5 THEN 
   CASE
         WHEN vOdds_col_clean <= 1.5350000000000001 THEN -0.03657786842225179
         WHEN vOdds_col_clean > 1.5350000000000001 AND vOdds_col_clean <= 2.975 THEN -0.03657786842225179
         WHEN vOdds_col_clean > 2.975 AND vOdds_col_clean <= 4.145 THEN -0.036257721601948824
         WHEN vOdds_col_clean > 4.145 AND vOdds_col_clean <= 5.415 THEN -0.04673153744931447
         WHEN vOdds_col_clean > 5.415 AND vOdds_col_clean <= 6.785 THEN -0.011438929733834174
         WHEN vOdds_col_clean > 6.785 AND vOdds_col_clean <= 8.205 THEN -0.005321570174708877
         WHEN vOdds_col_clean > 8.205 AND vOdds_col_clean <= 9.955 THEN 0.022644090519271767
         WHEN vOdds_col_clean > 9.955 AND vOdds_col_clean <= 12.065000000000001 THEN 0.03304675724255928
         WHEN vOdds_col_clean > 12.065000000000001 AND vOdds_col_clean <= 14.725000000000001 THEN 0.03304675724255928
         WHEN vOdds_col_clean > 14.725000000000001 AND vOdds_col_clean <= 17.83 THEN 0.03304675724255928
         WHEN vOdds_col_clean > 17.83 AND vOdds_col_clean <= 21.485 THEN 0.03304675724255928
         WHEN vOdds_col_clean > 21.485 AND vOdds_col_clean <= 26.205 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 26.205 AND vOdds_col_clean <= 31.905 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 31.905 AND vOdds_col_clean <= 39.135000000000005 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 39.135000000000005 AND vOdds_col_clean <= 47.845 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 47.845 AND vOdds_col_clean <= 58.955 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 58.955 AND vOdds_col_clean <= 74.57499999999999 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 74.57499999999999 AND vOdds_col_clean <= 100.475 THEN 0.029904445987656084
         WHEN vOdds_col_clean > 100.475 THEN 0.029904445987656084
         ELSE 0.0
     END
 ELSE 0.0
END
AS startNumber_x_vOdds_col_clean_score
,
CASE
 WHEN pOdds_col_clean <= 1.1475 THEN 
  CASE
         WHEN lifetime_starts <= 9.5 THEN -0.01585635963764544
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.016289134486494036
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.016022231087484344
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.016022231087484344
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.02077186413393039
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.02077186413393039
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.02077186413393039
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02133358827764343
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.028031242187453998
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.028031242187453998
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.02711526702340037
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.02711526702340037
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.026831365032568607
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.026831365032568607
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.025982137366366172
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.025982137366366172
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.02375456616381029
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.05063431023356549
         WHEN lifetime_starts > 98.5 THEN 0.09852379204216535
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.1475 AND pOdds_col_clean <= 1.5125 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.020279007743771983
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.020711782592620576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.020444879193610883
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.020444879193610883
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.02077186413393039
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.02077186413393039
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.02077186413393039
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02133358827764343
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.028031242187453998
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.028031242187453998
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.02711526702340037
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.02711526702340037
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.026831365032568607
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.026831365032568607
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.025982137366366172
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.025982137366366172
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.02375456616381029
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.05063431023356549
         WHEN lifetime_starts > 98.5 THEN 0.045146839063219785
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.5125 AND pOdds_col_clean <= 1.7600000000000002 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.02022693382980622
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.020659708678654815
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.020392805279645126
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.020392805279645126
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.020652325603659025
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.020652325603659025
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.020652325603659025
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.021214049747372073
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.017641136706311487
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.017641136706311487
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.016725161542257862
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.016725161542257862
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.0164412595514261
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.016162724338201442
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.01531349667199901
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.01531349667199901
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.013085925469443128
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.06130295092793264
         WHEN lifetime_starts > 98.5 THEN 0.055579882356764435
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.7600000000000002 AND pOdds_col_clean <= 1.9825 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.018798503119560737
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.02016913822757909
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.019902234828569402
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.019902234828569402
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.019561926879333415
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.019561926879333415
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.019561926879333415
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.02012365102304646
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.016550737981985877
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.016550737981985877
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.015634762817932253
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.015634762817932253
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.015350860827100488
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.015072325613875835
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.0142230979476734
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.0142230979476734
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.01199552674511752
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.06239334965225826
         WHEN lifetime_starts > 98.5 THEN 0.05617971063001431
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 1.9825 AND pOdds_col_clean <= 2.2075 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.016142330219787088
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN -0.01751296532780544
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN -0.018996076734117524
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN -0.018996076734117524
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN -0.018655768784881538
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN -0.018655768784881538
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN -0.018655768784881538
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN -0.019217492928594586
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN -0.015644579887534003
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN -0.015644579887534003
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN -0.015063716064500585
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN -0.015063716064500585
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN -0.014779814073668822
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN -0.014501278860444168
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN -0.014501278860444168
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN -0.015068979771015732
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.014261674491505089
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN 0.06012720190587069
         WHEN lifetime_starts > 98.5 THEN 0.05386993592523853
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.2075 AND pOdds_col_clean <= 2.4425 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.014659770831272543
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.003884874918364069
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.0035481100915499414
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.0035481100915499414
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.00746133108184651
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.00746133108184651
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.008042194904879927
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.008042194904879927
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.00832609689571169
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.008604632108936344
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.008604632108936344
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.006712973390716009
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.029670373463985582
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.030669180481613795
         WHEN lifetime_starts > 98.5 THEN -0.04719900167252278
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.4425 AND pOdds_col_clean <= 2.7075 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.014659770831272543
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.003884874918364069
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.0035481100915499414
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.0035481100915499414
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.003888418040785928
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.00746133108184651
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.00746133108184651
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.008042194904879927
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.008042194904879927
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.00832609689571169
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.008604632108936344
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.008604632108936344
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.006712973390716009
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.029670373463985582
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.030669180481613795
         WHEN lifetime_starts > 98.5 THEN -0.04719900167252278
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.7075 AND pOdds_col_clean <= 2.9925 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.01397225362776406
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.004572392121872555
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.004235627295058426
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.004235627295058426
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.008148848285354993
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.008148848285354993
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.00872971210838841
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.00872971210838841
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.009013614099220173
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.009292149312444827
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.009292149312444827
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.007400490594224492
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0289828562604771
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.02998166327810531
         WHEN lifetime_starts > 98.5 THEN -0.04719900167252278
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 2.9925 AND pOdds_col_clean <= 3.3400000000000003 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.01397225362776406
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.004572392121872555
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.004235627295058426
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.004235627295058426
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.004575935244294411
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.008148848285354993
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.008148848285354993
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.00872971210838841
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.00872971210838841
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.009013614099220173
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.009292149312444827
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.009292149312444827
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.007400490594224492
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0289828562604771
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.02998166327810531
         WHEN lifetime_starts > 98.5 THEN -0.04719900167252278
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 3.3400000000000003 AND pOdds_col_clean <= 3.7225 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN -0.003624274009255129
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.014920371740381484
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.014583606913567353
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.014583606913567353
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.014923914862803339
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.014923914862803339
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.014923914862803339
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.014923914862803339
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.008828706645438718
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.008828706645438718
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.009409570468472135
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.009409570468472135
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.009693472459303899
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.009972007672528552
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.009972007672528552
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.008080348954308217
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.02830299790039337
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.029489648956539487
         WHEN lifetime_starts > 98.5 THEN -0.04719900167252278
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 3.7225 AND pOdds_col_clean <= 4.175000000000001 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.020015250553773446
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.03855989630341006
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.015418247861829111
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.015418247861829111
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.009652743155013712
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.009652743155013712
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.0077610844367933755
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.02862226241790821
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.029808913474054326
         WHEN lifetime_starts > 98.5 THEN -0.047518266190037614
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 4.175000000000001 AND pOdds_col_clean <= 4.7325 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.020015250553773446
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.03855989630341006
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.015418247861829111
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.015418247861829111
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.015758555811065104
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.009374207941789059
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.009652743155013712
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.009652743155013712
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.0077610844367933755
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.02862226241790821
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.029808913474054326
         WHEN lifetime_starts > 98.5 THEN -0.047518266190037614
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 4.7325 AND pOdds_col_clean <= 5.387499999999999 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 5.387499999999999 AND pOdds_col_clean <= 6.2075 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 6.2075 AND pOdds_col_clean <= 7.202500000000001 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 7.202500000000001 AND pOdds_col_clean <= 8.522499999999999 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 8.522499999999999 AND pOdds_col_clean <= 10.3525 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 10.3525 AND pOdds_col_clean <= 13.5825 THEN 
     CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 WHEN pOdds_col_clean > 13.5825 THEN 
   CASE
         WHEN lifetime_starts <= 9.5 THEN 0.021736472194247753
         WHEN lifetime_starts > 9.5 AND lifetime_starts <= 13.5 THEN 0.041220392078361576
         WHEN lifetime_starts > 13.5 AND lifetime_starts <= 16.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 16.5 AND lifetime_starts <= 19.5 THEN 0.018078743636780623
         WHEN lifetime_starts > 19.5 AND lifetime_starts <= 22.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 22.5 AND lifetime_starts <= 25.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 25.5 AND lifetime_starts <= 28.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 28.5 AND lifetime_starts <= 31.5 THEN 0.01841905158601661
         WHEN lifetime_starts > 31.5 AND lifetime_starts <= 34.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 34.5 AND lifetime_starts <= 37.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 37.5 AND lifetime_starts <= 41.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 41.5 AND lifetime_starts <= 45.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 45.5 AND lifetime_starts <= 50.5 THEN 0.012034703716740567
         WHEN lifetime_starts > 50.5 AND lifetime_starts <= 55.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 55.5 AND lifetime_starts <= 61.5 THEN 0.01231323892996522
         WHEN lifetime_starts > 61.5 AND lifetime_starts <= 69.5 THEN 0.010421580211744885
         WHEN lifetime_starts > 69.5 AND lifetime_starts <= 80.5 THEN -0.0259617666429567
         WHEN lifetime_starts > 80.5 AND lifetime_starts <= 98.5 THEN -0.028869639339577126
         WHEN lifetime_starts > 98.5 THEN -0.04657899205556042
         ELSE 0.0
     END
 ELSE 0.0
END
AS pOdds_col_clean_x_lifetime_starts_score
, intercept + RaceOnHometrack_score + cartInfo_col_score + horse_age_score + horse_sex_score + lifetime_podium_spot_1_share_score + lifetime_podium_spot_2_share_score + lifetime_podium_spot_3_share_score + lifetime_starts_score + pOdds_col_clean_score + race_distance_score + race_meta_score + shoeInfo_col_score + startNumber_score + start_method_score + vOdds_col_clean_score + vOdds_col_clean_x_pOdds_col_clean_score + vOdds_col_clean_x_lifetime_podium_spot_1_share_score + vOdds_col_clean_x_lifetime_podium_spot_3_share_score + horse_sex_x_lifetime_starts_score + pOdds_col_clean_x_lifetime_podium_spot_1_share_score + startNumber_x_lifetime_podium_spot_1_share_score + shoeInfo_col_x_lifetime_podium_spot_2_share_score + lifetime_podium_spot_1_share_x_lifetime_podium_spot_3_share_score + vOdds_col_clean_x_lifetime_starts_score + vOdds_col_clean_x_lifetime_podium_spot_2_share_score + lifetime_podium_spot_2_share_x_race_meta_score + lifetime_podium_spot_3_share_x_start_method_score + horse_sex_x_lifetime_podium_spot_3_share_score + startNumber_x_vOdds_col_clean_score + pOdds_col_clean_x_lifetime_starts_score
 AS score
, EXP(score)/(EXP(score) + 1) AS probability
