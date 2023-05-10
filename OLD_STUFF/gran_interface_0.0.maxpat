{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64"
		}
,
		"rect" : [ 0.0, 70.0, 1280.0, 680.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Andale Mono",
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
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 590.0, 250.0, 65.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 590.0, 250.0, 65.0, 18.0 ],
					"restore" : 					{
						"amp" : [ 0.5 ],
						"amp_range" : [ 1.0 ],
						"density" : [ 0.5 ],
						"density_range" : [ 0.0 ],
						"grain_len_var" : [ 0.0 ],
						"grain_length" : [ 50.0 ],
						"pan" : [ 0.0 ],
						"pan_range" : [ 0.0 ],
						"pitch" : [ 0.0 ],
						"pitch_var" : [ 0.0 ],
						"position" : [ 0.5 ],
						"position_range" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u129003875"
				}

			}
, 			{
				"box" : 				{
					"comment" : "position",
					"id" : "obj-14",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 270.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 210.0, 65.0, 18.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-16",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 910.0, 110.0, 60.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 910.0, 110.0, 60.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "position_range",
							"parameter_shortname" : "position_range",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 3.0
						}

					}
,
					"varname" : "position_range"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-17",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 850.0, 110.0, 50.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 840.0, 110.0, 50.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "position",
							"parameter_shortname" : "position",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.5 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "position"
				}

			}
, 			{
				"box" : 				{
					"comment" : "density",
					"id" : "obj-12",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 270.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "pitch",
					"id" : "obj-11",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.0, 270.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "amp",
					"id" : "obj-10",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 270.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "pan",
					"id" : "obj-9",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 270.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "grainLength",
					"id" : "obj-8",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 270.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 210.0, 65.0, 18.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 210.0, 65.0, 18.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 210.0, 65.0, 18.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 210.0, 65.0, 18.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 210.0, 65.0, 18.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-83",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 570.0, 110.0, 50.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 110.0, 50.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "pitch",
							"parameter_shortname" : "pitch",
							"parameter_type" : 0,
							"parameter_mmin" : -12.0,
							"parameter_mmax" : 12.0,
							"parameter_modmode" : 2,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "pitch"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-119",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 480.0, 110.0, 64.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 490.0, 110.0, 60.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "amp_range",
							"parameter_shortname" : "amp_range",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 1 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "amp_range"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-120",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 430.0, 110.0, 44.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 110.0, 50.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "amp",
							"parameter_shortname" : "amp",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.5 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "amp"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-97",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 340.0, 110.0, 60.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 350.0, 110.0, 60.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "pan_range",
							"parameter_shortname" : "pan_range",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "pan_range"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-98",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 290.0, 110.0, 44.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 110.0, 50.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "pan",
							"parameter_shortname" : "pan",
							"parameter_type" : 0,
							"parameter_mmin" : -1.0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "pan"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-61",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 770.0, 110.0, 60.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 770.0, 110.0, 60.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "density_range",
							"parameter_shortname" : "density_range",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "density_range"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-86",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 710.0, 110.0, 50.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 110.0, 50.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "density",
							"parameter_shortname" : "density",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0.5 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "density"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-73",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 620.0, 110.0, 60.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 630.0, 110.0, 60.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "pitch_var",
							"parameter_shortname" : "pitch_var",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "pitch_var"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-56",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 210.0, 110.0, 60.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 110.0, 60.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "grain_len_var",
							"parameter_shortname" : "length_range",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "grain_len_var"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-31",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 150.0, 110.0, 50.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 110.0, 50.0, 42.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "grain_length",
							"parameter_shortname" : "grain_length",
							"parameter_type" : 0,
							"parameter_mmin" : 10.0,
							"parameter_mmax" : 150.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 50 ],
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 3.3
						}

					}
,
					"varname" : "grain_length"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 950.0, 480.0, 77.0, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 950.0, 410.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "pan", 1, "---" ],
					"background" : 1,
					"id" : "obj-13",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 280.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_pan_intrfc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "amp", 0, "---" ],
					"background" : 1,
					"id" : "obj-49",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_amp_intrfc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "density", 0, "---" ],
					"background" : 1,
					"id" : "obj-77",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 700.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_den_intrfc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "grainlength", 0, "---" ],
					"background" : 1,
					"id" : "obj-84",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_len_intrfc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "position", 0, "---" ],
					"background" : 1,
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 840.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_pos_intrfc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "pitch", 1, "---" ],
					"background" : 1,
					"id" : "obj-88",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 560.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_pit_intrfc"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "window", 0, "---" ],
					"background" : 1,
					"id" : "obj-89",
					"maxclass" : "bpatcher",
					"name" : "gran_env_intrfc.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 140.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 140.0, 190.0 ],
					"varname" : "gran_win_intrfc"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 0 ]
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
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-120" : [ "amp", "amp", 0 ],
			"obj-97" : [ "pan_range", "pan_range", 0 ],
			"obj-17" : [ "position", "position", 0 ],
			"obj-31" : [ "grain_length", "grain_length", 0 ],
			"obj-49::obj-89" : [ "ampMenu", "window_env", 0 ],
			"obj-13::obj-89" : [ "panMenu", "window_env", 0 ],
			"obj-83" : [ "pitch", "pitch", 0 ],
			"obj-77::obj-89" : [ "densityMenu", "window_env", 0 ],
			"obj-61" : [ "density_range", "density_range", 0 ],
			"obj-84::obj-89" : [ "grainlengthMenu", "window_env", 0 ],
			"obj-18::obj-89" : [ "positionMenu", "window_env", 0 ],
			"obj-119" : [ "amp_range", "amp_range", 0 ],
			"obj-73" : [ "pitch_var", "pitch_var", 0 ],
			"obj-88::obj-89" : [ "pitchMenu", "window_env", 0 ],
			"obj-89::obj-89" : [ "windowMenu", "window_env", 0 ],
			"obj-56" : [ "grain_len_var", "length_range", 0 ],
			"obj-98" : [ "pan", "pan", 0 ],
			"obj-86" : [ "density", "density", 0 ],
			"obj-16" : [ "position_range", "position_range", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "gran_env_intrfc.maxpat",
				"bootpath" : "/Users/simonfay/Desktop/modular",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "env_gen.maxpat",
				"bootpath" : "/Users/simonfay/Desktop/modular",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
