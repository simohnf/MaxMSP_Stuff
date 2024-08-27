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
		"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-267",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 59.594116, 54.0, 18.0 ],
					"text" : "open 9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 565.0, 139.594116, 83.0, 20.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-264",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 179.594116, 50.0, 31.0 ],
					"text" : "target 10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 615.0, 99.594116, 47.0, 20.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-255",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 79.594116, 47.0, 20.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-251",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 189.594116, 169.0, 20.0 ],
					"text" : "send~ #0-samplePlayerR",
					"varname" : "samplePlayerAudioR[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 189.594116, 169.0, 20.0 ],
					"text" : "send~ #0-samplePlayerL",
					"varname" : "samplePlayerAudioL[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 35.0, 49.594116, 47.0, 20.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-241",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 535.0, 19.594116, 291.0, 20.0 ],
					"text" : "poly~ AAIM.samplePlayerInterfacePoly 10",
					"varname" : "samplePlayerInterface[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-237",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 85.0, 99.594116, 75.0, 18.0 ],
					"text" : "target $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-236",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 225.0, 89.594116, 83.0, 20.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-235",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 145.0, 59.594116, 47.0, 20.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-232",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 45.0, 129.594116, 205.0, 20.0 ],
					"text" : "poly~ AAIM.samplePlayer2 10",
					"varname" : "aaimsamplePlayer[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-227",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 109.594116, 183.0, 20.0 ],
					"text" : "r #0-patternVary_nVoices",
					"varname" : "patternVaryVoicesSender[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-226",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 139.594116, 75.0, 18.0 ],
					"text" : "voices $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-224",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 685.0, 139.594116, 47.0, 18.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-222",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 485.0, 139.594116, 75.0, 18.0 ],
					"text" : "target $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 685.0, 99.594116, 47.0, 20.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-219",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 685.0, 69.594116, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 485.0, 169.594116, 234.0, 20.0 ],
					"text" : "poly~ AAIM.sequenceMakerPoly 10",
					"varname" : "AAIM.SequenceMakerPoly"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 494.5, 198.594116, 382.5, 198.594116, 382.5, 49.594116, 154.5, 49.594116 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 722.5, 134.094116, 494.5, 134.094116 ],
					"source" : [ "obj-220", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-232", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-235", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-236", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 544.5, 49.094116, 154.5, 49.094116 ],
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-250", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-261", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-261", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-265", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-267", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-232.9::obj-228::obj-37::obj-11" : [ "umenu[34]", "umenu", 0 ],
			"obj-232.3::obj-228::obj-37::obj-11" : [ "umenu[12]", "umenu", 0 ],
			"obj-150.2::obj-2::obj-6" : [ "live.tab[7]", "live.tab", 0 ],
			"obj-150.9::obj-2::obj-6" : [ "live.tab[21]", "live.tab", 0 ],
			"obj-232.8::obj-228::obj-37::obj-11" : [ "umenu[30]", "umenu", 0 ],
			"obj-150.5::obj-944" : [ "umenu[44]", "umenu", 0 ],
			"obj-150.10::obj-2::obj-6" : [ "live.tab[23]", "live.tab", 0 ],
			"obj-150.2::obj-944" : [ "umenu[41]", "umenu", 0 ],
			"obj-150.6::obj-2::obj-77" : [ "live.tab[14]", "live.tab", 0 ],
			"obj-232.7::obj-228::obj-37::obj-11" : [ "umenu[9]", "umenu", 0 ],
			"obj-232.3::obj-228::obj-37::obj-944" : [ "umenu[13]", "umenu", 0 ],
			"obj-150.8::obj-2::obj-6" : [ "live.tab[19]", "live.tab", 0 ],
			"obj-150.8::obj-2::obj-77" : [ "live.tab[18]", "live.tab", 0 ],
			"obj-232.6::obj-228::obj-37::obj-944" : [ "umenu[29]", "umenu", 0 ],
			"obj-150.4::obj-2::obj-6" : [ "live.tab[11]", "live.tab", 0 ],
			"obj-232.4::obj-228::obj-50::obj-944" : [ "umenu[15]", "umenu", 0 ],
			"obj-232.5::obj-228::obj-37::obj-944" : [ "umenu[25]", "umenu", 0 ],
			"obj-232.8::obj-228::obj-37::obj-944" : [ "umenu[31]", "umenu", 0 ],
			"obj-232.1::obj-37::obj-944" : [ "umenu[59]", "umenu", 0 ],
			"obj-232.10::obj-228::obj-37::obj-944" : [ "umenu[40]", "umenu", 0 ],
			"obj-150.5::obj-2::obj-77" : [ "live.tab[12]", "live.tab", 0 ],
			"obj-150.9::obj-944" : [ "umenu[49]", "umenu", 0 ],
			"obj-232.2::obj-228::obj-37::obj-11" : [ "umenu[3]", "umenu", 0 ],
			"obj-232.6::obj-37::obj-944" : [ "umenu[26]", "umenu", 0 ],
			"obj-150.5::obj-2::obj-6" : [ "live.tab[13]", "live.tab", 0 ],
			"obj-232.3::obj-228::obj-50::obj-944" : [ "umenu[6]", "umenu", 0 ],
			"obj-232.7::obj-37::obj-944" : [ "umenu[7]", "umenu", 0 ],
			"obj-232.1::obj-228::obj-50::obj-944" : [ "umenu[11]", "umenu", 0 ],
			"obj-150.4::obj-2::obj-77" : [ "live.tab[10]", "live.tab", 0 ],
			"obj-232.9::obj-228::obj-37::obj-944" : [ "umenu[35]", "umenu", 0 ],
			"obj-150.1::obj-2::obj-77" : [ "live.tab[4]", "live.tab", 0 ],
			"obj-150.9::obj-2::obj-77" : [ "live.tab[20]", "live.tab", 0 ],
			"obj-150.3::obj-2::obj-6" : [ "live.tab[9]", "live.tab", 0 ],
			"obj-232.6::obj-228::obj-37::obj-11" : [ "umenu[28]", "umenu", 0 ],
			"obj-232.7::obj-228::obj-50::obj-944" : [ "umenu[8]", "umenu", 0 ],
			"obj-232.10::obj-228::obj-37::obj-11" : [ "umenu[39]", "umenu", 0 ],
			"obj-232.4::obj-228::obj-37::obj-11" : [ "umenu[16]", "umenu", 0 ],
			"obj-232.5::obj-228::obj-50::obj-944" : [ "umenu[23]", "umenu", 0 ],
			"obj-150.1::obj-944" : [ "umenu[47]", "umenu", 0 ],
			"obj-232.2::obj-37::obj-944" : [ "umenu[1]", "umenu", 0 ],
			"obj-232.5::obj-228::obj-37::obj-11" : [ "umenu[24]", "umenu", 0 ],
			"obj-232.7::obj-228::obj-37::obj-944" : [ "umenu[10]", "umenu", 0 ],
			"obj-150.1::obj-2::obj-6" : [ "live.tab[5]", "live.tab", 0 ],
			"obj-150.7::obj-2::obj-6" : [ "live.tab[17]", "live.tab", 0 ],
			"obj-232.8::obj-37::obj-944" : [ "umenu[18]", "umenu", 0 ],
			"obj-150.2::obj-2::obj-77" : [ "live.tab[6]", "live.tab", 0 ],
			"obj-232.1::obj-228::obj-37::obj-944" : [ "umenu[37]", "umenu", 0 ],
			"obj-150.3::obj-944" : [ "umenu[42]", "umenu", 0 ],
			"obj-232.10::obj-228::obj-50::obj-944" : [ "umenu[38]", "umenu", 0 ],
			"obj-232.2::obj-228::obj-37::obj-944" : [ "umenu[4]", "umenu", 0 ],
			"obj-150.6::obj-944" : [ "umenu[45]", "umenu", 0 ],
			"obj-150.10::obj-2::obj-77" : [ "live.tab[22]", "live.tab", 0 ],
			"obj-232.5::obj-37::obj-944" : [ "umenu[22]", "umenu", 0 ],
			"obj-150.8::obj-944" : [ "umenu[48]", "umenu", 0 ],
			"obj-232.9::obj-37::obj-944" : [ "umenu[32]", "umenu", 0 ],
			"obj-232.9::obj-228::obj-50::obj-944" : [ "umenu[33]", "umenu", 0 ],
			"obj-150.10::obj-944" : [ "umenu[60]", "umenu", 0 ],
			"obj-232.4::obj-37::obj-944" : [ "umenu[14]", "umenu", 0 ],
			"obj-232.10::obj-37::obj-944" : [ "umenu[36]", "umenu", 0 ],
			"obj-150.3::obj-2::obj-77" : [ "live.tab[8]", "live.tab", 0 ],
			"obj-232.6::obj-228::obj-50::obj-944" : [ "umenu[27]", "umenu", 0 ],
			"obj-232.8::obj-228::obj-50::obj-944" : [ "umenu[19]", "umenu", 0 ],
			"obj-150.4::obj-944" : [ "umenu[43]", "umenu", 0 ],
			"obj-232.2::obj-228::obj-50::obj-944" : [ "umenu[2]", "umenu", 0 ],
			"obj-150.7::obj-944" : [ "umenu[46]", "umenu", 0 ],
			"obj-232.1::obj-228::obj-37::obj-11" : [ "umenu[21]", "umenu", 0 ],
			"obj-232.3::obj-37::obj-944" : [ "umenu[5]", "umenu", 0 ],
			"obj-150.6::obj-2::obj-6" : [ "live.tab[15]", "live.tab", 0 ],
			"obj-232.4::obj-228::obj-37::obj-944" : [ "umenu[17]", "umenu", 0 ],
			"obj-150.7::obj-2::obj-77" : [ "live.tab[16]", "live.tab", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "AAIM.SequenceMakerPoly.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.sequenceMaker.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.sequenceManipulations1.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "23grouping.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches",
				"patcherrelativepath" : "../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.samplePlayer2.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.samplePlayer.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.samplePlayerPoly.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.samplePlayerInterfacePoly.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "AAIM.samplePlayerInterface.maxpat",
				"bootpath" : "/Applications/Max 6.1/AAIM_system",
				"patcherrelativepath" : "../../../Applications/Max 6.1/AAIM_system",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
