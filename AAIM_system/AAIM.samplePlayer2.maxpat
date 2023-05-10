{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x86"
		}
,
		"rect" : [ 25.0, 69.0, 815.0, 489.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 220.0, 390.0, 32.5, 20.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 210.0, 350.0, 46.0, 20.0 ],
					"text" : "uzi"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 210.0, 320.0, 63.0, 20.0 ],
					"text" : "maximum"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.657196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 260.0, 32.5, 18.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 210.0, 290.0, 135.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"text" : "coll #0-sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 100.0, 290.0, 32.5, 20.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 650.0, 170.0, 24.0, 20.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.0, 130.0, 160.0, 20.0 ],
					"text" : "r loadSamplePlayer2Default"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.0, 280.0, 51.0, 20.0 ],
					"text" : "pipe 50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 280.0, 50.0, 18.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 700.0, 240.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 570.0, 240.0, 90.0, 20.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 300.0, 65.0, 20.0 ],
					"text" : "prepend 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 270.0, 74.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 10,
						"data" : [ 							{
								"key" : 1,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened1_09.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened1_10.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened1_11.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened1_12.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened1_13.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened2_12.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened2_13.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened2_14.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened2_15.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/bassDrum/bassdrum_dampened2_16.wav" ]
							}
, 							{
								"key" : 2,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType1/snare_hit_ON_1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType1/snare_hit_ON_2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType1/snare_hit_ON_3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType1/snare_hit_ON_4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType1/snare_hit_ON_5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType1/snare_hit_ON_6.wav" ]
							}
, 							{
								"key" : 3,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened6.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened7.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType2/snare_hit_ON_dampened8.wav" ]
							}
, 							{
								"key" : 4,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_6.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/snareType3/snare_rimKnock_ON_7.wav" ]
							}
, 							{
								"key" : 5,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType1/hihats_1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType1/hihats_2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType1/hihats_3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType1/hihats_4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType1/hihats_5.wav" ]
							}
, 							{
								"key" : 6,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType2/hihat_choke1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType2/hihat_choke2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType2/hihat_choke3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType2/hihat_choke4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType2/hihat_choke5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/HiHatType2/hihat_choke6.wav" ]
							}
, 							{
								"key" : 7,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit6.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit7.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type1/cymbal1_hit8.wav" ]
							}
, 							{
								"key" : 8,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type2/cymbal1_choke1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type2/cymbal1_choke2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal1Type2/cymbal1_choke3.wav" ]
							}
, 							{
								"key" : 9,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit6.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type1/cymbal2_hit7.wav" ]
							}
, 							{
								"key" : 10,
								"value" : [ "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke1.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke2.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke3.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke4.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke5.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke6.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke7.wav", "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke8.wav" ]
							}
 ]
					}
,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 570.0, 330.0, 195.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll AAIM.samplePlayer2_samples"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 180.0, 140.0, 32.5, 20.0 ],
					"text" : "%"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 250.0, 160.0, 39.0, 20.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.657196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 100.0, 32.5, 18.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 250.0, 130.0, 135.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"text" : "coll #0-sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 180.0, 70.0, 90.0, 20.0 ],
					"text" : "t f b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 340.0, 123.0, 20.0 ],
					"text" : "prepend sampleLoad"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 100.0, 100.0, 24.0, 20.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 570.0, 180.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 570.0, 210.0, 58.0, 20.0 ],
					"text" : "thispoly~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 512.0, 44.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 17,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 390.0, 560.0, 165.0 ],
									"text" : "\"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke1.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke2.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke3.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke4.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke5.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke6.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke7.wav\" \"Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/cymbal2_choke8.wav\""
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 320.0, 59.0, 20.0 ],
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 350.0, 98.0, 20.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 320.0, 32.5, 18.0 ],
									"text" : "set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 380.0, 130.0, 127.0, 20.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"text" : "coll #0-samples"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "bang" ],
									"patching_rect" : [ 40.0, 150.0, 270.0, 20.0 ],
									"text" : "t b b l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 195.0, 37.0, 18.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 12.0,
									"id" : "obj-935",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 80.0, 220.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 12.0,
									"id" : "obj-937",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 200.0, 290.0, 46.0, 20.0 ],
									"text" : "uzi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 12.0,
									"id" : "obj-938",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 200.0, 260.0, 90.0, 20.0 ],
									"text" : "route count"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 12.0,
									"id" : "obj-939",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 190.0, 47.0, 18.0 ],
									"text" : "count"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 12.0,
									"id" : "obj-940",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 190.0, 111.0, 20.0 ],
									"text" : "prepend prefix"
								}

							}
, 							{
								"box" : 								{
									"autopopulate" : 1,
									"fontname" : "Andale Mono",
									"fontsize" : 12.0,
									"id" : "obj-944",
									"items" : [ "cymbal2_choke1.wav", ",", "cymbal2_choke2.wav", ",", "cymbal2_choke3.wav", ",", "cymbal2_choke4.wav", ",", "cymbal2_choke5.wav", ",", "cymbal2_choke6.wav", ",", "cymbal2_choke7.wav", ",", "cymbal2_choke8.wav" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 120.0, 220.0, 100.0, 20.0 ],
									"prefix" : "Macintosh HD:/Users/simonfay/Desktop/__ASPECT__/_AAIM1.1/ethanDrums_Samples/multiPartKit/cymbal2Type2/",
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "umenu[64]",
											"parameter_shortname" : "umenu",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "umenu[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-945",
									"maxclass" : "dropfile",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 100.0, 70.0, 110.0, 50.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 560.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-944", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 49.5, 387.5, 259.5, 387.5 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-939", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-940", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-944", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-935", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-935", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-937", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-937", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-938", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-944", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-939", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-944", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-940", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-944", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-938", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-944", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-945", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 440.0, 300.0, 88.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sampleLogic"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 260.0, 59.0, 20.0 ],
					"text" : "pack 0 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 100.0, 160.0, 36.0, 20.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 180.0, 170.0, 32.5, 20.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 180.0, 100.0, 32.5, 20.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.657196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 190.0, 54.0, 18.0 ],
					"text" : "nth 1 $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 180.0, 220.0, 135.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"text" : "coll #0-sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 100.0, 130.0, 32.5, 20.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866667, 0.657196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 370.0, 65.0, 20.0 ],
					"text" : "prepend 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 380.0, 400.0, 135.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"text" : "coll #0-sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "float", "float", "float" ],
					"patching_rect" : [ 100.0, 30.0, 150.0, 20.0 ],
					"text" : "unpack 0 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 380.0, 270.0, 141.0, 20.0 ],
					"text" : "route sequence samples"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 460.0, 44.0, 20.0 ],
					"text" : "out~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 460.0, 44.0, 20.0 ],
					"text" : "out~ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 240.0, 30.0, 20.0 ],
					"text" : "in 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 0.0, 30.0, 20.0 ],
					"text" : "in 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 100.0, 420.0, 147.0, 20.0 ],
					"text" : "AAIM.samplePlayer 4"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-228", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 649.5, 323.5, 579.5, 323.5 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 449.5, 329.0, 550.5, 329.0, 550.5, 293.0, 579.5, 293.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
