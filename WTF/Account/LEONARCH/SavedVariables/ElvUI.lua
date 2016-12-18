
ElvDB = {
	["profileKeys"] = {
		["Relken - Hyjal"] = "Havoc",
		["Helken - Hyjal"] = "Helken - Hyjal",
		["Alken - Khaz Modan"] = "Alkin - Hyjal",
		["Zimtadari - Aegwynn"] = "Zimtadari - Aegwynn",
		["Alken - Hyjal"] = "Windwalker",
		["Alkin - Hyjal"] = "Alkin - Hyjal",
		["Belken - Hyjal"] = "Resto Shaman",
		["Elken - Hyjal"] = "Boomkin",
		["Palken - Hyjal"] = "Palken - Hyjal",
	},
	["gold"] = {
		["Hyjal"] = {
			["Elken"] = 3511563867,
			["Helken"] = 114628739,
			["Alken"] = 170219895,
			["Relken"] = 1005594,
			["Belken"] = 627110417,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Relken - Hyjal"] = {
					["enabled"] = false,
				},
				["Alken - Hyjal"] = {
					"Windwalker", -- [1]
					"Mistweave", -- [2]
					"Windwalker", -- [3]
					["enabled"] = true,
				},
				["Belken - Hyjal"] = {
					"Belken - Hyjal", -- [1]
					"Belken - Hyjal", -- [2]
					"Resto Shaman", -- [3]
					["enabled"] = true,
				},
				["Elken - Hyjal"] = {
					"Boomkin", -- [1]
					"Boomkin", -- [2]
					"Boomkin", -- [3]
					"Resto Druid", -- [4]
					["enabled"] = true,
				},
				["Palken - Hyjal"] = {
					"Palken - Hyjal", -- [1]
					"Palken - Hyjal", -- [2]
					"Palken - Hyjal", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["global"] = {
		["nameplate"] = {
			["filter"] = {
				["Black Bengal Coat"] = {
					["hide"] = false,
					["color"] = {
						["r"] = 0.407843137254902,
						["g"] = 0.541176470588235,
						["b"] = 0.850980392156863,
					},
					["enable"] = true,
					["customScale"] = 1,
					["customColor"] = false,
				},
			},
		},
		["unitframe"] = {
			["aurafilters"] = {
				["TargetDebuffs"] = {
					["spells"] = {
						["Stellar Flare"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Sunfire"] = {
							["enable"] = true,
							["priority"] = 0,
						},
						["Moonfire"] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
					["type"] = "Blacklist",
				},
			},
			["buffwatchBackup"] = {
				["DEATHKNIGHT"] = {
					[49016] = {
					},
				},
				["WARRIOR"] = {
					[114030] = {
					},
					[3411] = {
					},
					[114029] = {
					},
				},
				["SHAMAN"] = {
					[61295] = {
					},
					[51945] = {
					},
					[974] = {
					},
				},
				["MAGE"] = {
					[111264] = {
					},
				},
				["PRIEST"] = {
					[47788] = {
					},
					[17] = {
					},
					[123258] = {
					},
					[33206] = {
					},
					[10060] = {
					},
					[6788] = {
					},
					[139] = {
					},
					[41635] = {
					},
				},
				["ROGUE"] = {
					[57934] = {
					},
				},
				["HUNTER"] = {
				},
				["PET"] = {
					[19615] = {
					},
					[136] = {
					},
				},
				["DRUID"] = {
					[155777] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["id"] = 155777,
						["color"] = {
							["r"] = 0.701960784313726,
							["g"] = 0.164705882352941,
							["b"] = 0.0509803921568627,
						},
						["style"] = "coloredIcon",
						["xOffset"] = -10,
						["yOffset"] = 0,
					},
					[188550] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPLEFT",
						["color"] = {
							["b"] = 0.203921568627451,
							["g"] = 1,
							["r"] = 0.0901960784313726,
						},
						["id"] = 188550,
						["xOffset"] = 0,
						["style"] = "coloredIcon",
						["yOffset"] = 0,
					},
					[8936] = {
					},
					[33763] = {
					},
					[774] = {
					},
					[48438] = {
					},
				},
				["MONK"] = {
					[124081] = {
					},
					[119611] = {
					},
					[116849] = {
					},
					[132120] = {
					},
				},
				["PALADIN"] = {
					[53563] = {
					},
					[1022] = {
					},
					[1038] = {
					},
					[156322] = {
					},
					[6940] = {
					},
					[114039] = {
					},
					[1044] = {
					},
					[148039] = {
					},
				},
			},
			["buffwatch"] = {
				["DRUID"] = {
					[188550] = {
						["anyUnit"] = false,
						["color"] = {
							["b"] = 0.203921568627451,
							["g"] = 1,
							["r"] = 0.0901960784313726,
						},
					},
					[155777] = {
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["xOffset"] = -10,
						["color"] = {
							["r"] = 0.701960784313726,
							["g"] = 0.164705882352941,
							["b"] = 0.0509803921568627,
						},
					},
					[102351] = {
						["anyUnit"] = false,
						["point"] = "TOPLEFT",
						["xOffset"] = 10,
						["color"] = {
							["r"] = 0,
							["g"] = 0.227450980392157,
							["b"] = 0.0156862745098039,
						},
					},
					[102352] = {
						["anyUnit"] = false,
						["point"] = "TOPLEFT",
						["color"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["xOffset"] = 10,
					},
				},
			},
		},
		["general"] = {
			["autoScale"] = false,
		},
		["uiScale"] = "0.71111111111111",
	},
	["profiles"] = {
		["Windwalker"] = {
			["currentTutorial"] = 5,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0.59,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,188",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,189",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-251,-413",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,440,189",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
			},
			["layoutSet"] = "healer",
			["bossAuraFiltersConverted"] = true,
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["height"] = 40,
					},
					["raid"] = {
						["roleIcon"] = {
							["enable"] = false,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = -1,
							["yOffset"] = 1,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["healPrediction"] = true,
						["power"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["power"] = {
							["detachFromFrame"] = true,
							["text_format"] = "",
							["height"] = 6,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["height"] = 40,
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
		},
		["Relken - Hyjal"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["currentTutorial"] = 1,
			["bossAuraFiltersConverted"] = true,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Zimtadari - Aegwynn"] = {
			["currentTutorial"] = 1,
			["actionbar"] = {
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFTElvUIParentBOTTOMLEFT4424",
				["ShiftAB"] = "TOPLEFTElvUIParentBOTTOMLEFT41076",
				["ElvUF_PartyMover"] = "BOTTOMLEFTElvUIParentBOTTOMLEFT4195",
				["ElvUF_RaidMover"] = "TOPLEFTElvUIParentBOTTOMLEFT4427",
				["ElvUF_RaidpetMover"] = "TOPLEFTElvUIParentBOTTOMLEFT4736",
			},
		},
		["Resto Druid"] = {
			["currentTutorial"] = 4,
			["general"] = {
				["valuecolor"] = {
					["r"] = 1,
					["g"] = 0.49,
					["b"] = 0.04,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,380",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,741,641",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,241,-174",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1080",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-189,-432",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["ElvUF_PartyMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,765,425",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
			},
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["healPrediction"] = true,
						["buffs"] = {
							["useFilter"] = "PlayerBuffs",
						},
						["growthDirection"] = "LEFT_UP",
					},
					["party"] = {
						["horizontalSpacing"] = 10,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["perrow"] = 3,
							["yOffset"] = -7,
						},
						["verticalSpacing"] = 10,
						["GPSArrow"] = {
							["size"] = 40,
						},
						["orientation"] = "MIDDLE",
						["healPrediction"] = true,
						["numGroups"] = 5,
						["growthDirection"] = "LEFT_DOWN",
						["infoPanel"] = {
							["height"] = 12,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["xOffset"] = 0,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
						},
						["width"] = 72,
						["height"] = 33,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -1,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["power"] = {
							["position"] = "BOTTOMRIGHT",
							["enable"] = false,
							["height"] = 3,
							["text_format"] = "",
							["yOffset"] = 2,
						},
						["roleIcon"] = {
							["xOffset"] = 2,
							["size"] = 12,
							["position"] = "TOPLEFT",
							["yOffset"] = -2,
						},
					},
					["target"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["height"] = 40,
					},
					["raid"] = {
						["horizontalSpacing"] = 10,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_DOWN",
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -1,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["width"] = 72,
						["height"] = 33,
						["verticalSpacing"] = 10,
						["healPrediction"] = true,
						["roleIcon"] = {
							["xOffset"] = 2,
							["size"] = 12,
							["yOffset"] = -2,
						},
					},
					["targettarget"] = {
						["enable"] = false,
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["height"] = 28,
							["width"] = 285,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["height"] = 40,
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["bags"] = {
				["ignoreItems"] = "",
			},
			["bagSortIgnoreItemsReset"] = true,
		},
		["Mistweave"] = {
			["currentTutorial"] = 1,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.59,
					["g"] = 1,
					["r"] = 0,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,385",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,741,646",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,769,376",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-189,-432",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["height"] = 40,
					},
					["raid"] = {
						["horizontalSpacing"] = 10,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_DOWN",
						["width"] = 72,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["verticalSpacing"] = 10,
						["height"] = 33,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
						["roleIcon"] = {
							["xOffset"] = 2,
							["size"] = 12,
							["yOffset"] = -2,
						},
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["height"] = 40,
						["castbar"] = {
							["height"] = 28,
							["width"] = 285,
							["insideInfoPanel"] = false,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["bags"] = {
				["ignoreItems"] = "",
			},
			["bagSortIgnoreItemsReset"] = true,
		},
		["Resto Shaman"] = {
			["currentTutorial"] = 1,
			["bags"] = {
				["ignoreItems"] = "",
			},
			["layoutSet"] = "healer",
			["bagSortIgnoreItemsReset"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,385",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,741,646",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,376",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-189,-432",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["targettarget"] = {
						["enable"] = false,
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = -4,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["horizontalSpacing"] = 9,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["text_format"] = "[healthcolor][health:deficit]",
						},
						["buffs"] = {
							["xOffset"] = 50,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["sizeOverride"] = 22,
							["enable"] = true,
						},
					},
					["raid40"] = {
						["growthDirection"] = "LEFT_UP",
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["useFilter"] = "PlayerBuffs",
						},
					},
					["target"] = {
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["height"] = 40,
						["health"] = {
							["text_format"] = "",
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 10,
						["debuffs"] = {
							["sizeOverride"] = 16,
							["enable"] = true,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = -4,
						},
						["growthDirection"] = "LEFT_DOWN",
						["verticalSpacing"] = 10,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["roleIcon"] = {
							["yOffset"] = -2,
							["xOffset"] = 2,
							["size"] = 12,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["healPrediction"] = true,
						["width"] = 72,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 33,
						["buffs"] = {
							["xOffset"] = 50,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["sizeOverride"] = 22,
							["enable"] = true,
						},
					},
					["player"] = {
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 285,
							["height"] = 28,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 40,
					},
				},
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["healthclass"] = true,
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["general"] = {
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["valuecolor"] = {
					["b"] = 0.87,
					["g"] = 0.44,
					["r"] = 0,
				},
			},
		},
		["Alkin - Hyjal"] = {
			["currentTutorial"] = 7,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.43,
					["g"] = 0.61,
					["r"] = 0.78,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,188",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,362",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,189",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,295,-214",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-224,385",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1070",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,440,189",
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,481,-390",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
			},
			["bags"] = {
				["ignoreItems"] = "",
			},
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
					},
					["target"] = {
						["debuffs"] = {
							["useFilter"] = "TargetDebuffs",
						},
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["height"] = 40,
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["aurabar"] = {
							["useFilter"] = "TargetDebuffs",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["xOffset"] = -1,
							["damager"] = false,
							["position"] = "BOTTOMRIGHT",
							["yOffset"] = 1,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["healPrediction"] = true,
						["power"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 360,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -86,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["height"] = 40,
					},
					["boss"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:percent]",
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["nameplates"] = {
				["units"] = {
					["ENEMY_NPC"] = {
						["buffs"] = {
							["baseHeight"] = 6,
						},
					},
				},
			},
			["bossAuraFiltersConverted"] = true,
			["bagSortIgnoreItemsReset"] = true,
		},
		["Hyjal"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,400",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["DRUID"] = {
		},
		["MONK"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,456",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,456",
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["b"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["r"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["font"] = "Expressway",
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1080",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["auras"] = {
				["fontSize"] = 11,
				["buffs"] = {
					["maxWraps"] = 2,
				},
				["font"] = "Expressway",
			},
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["statusbar"] = "ElvUI Blank",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOM",
							["numrows"] = 4,
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["width"] = 110,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["threatStyle"] = "NONE",
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["castbar"] = {
							["height"] = 35,
							["iconSize"] = 54,
							["iconAttached"] = false,
							["width"] = 478,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["threatStyle"] = "NONE",
						["width"] = 122,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["font"] = "Expressway",
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["fadeTabsNoBackdrop"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 11,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
		},
		["Helken - Hyjal"] = {
			["currentTutorial"] = 13,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.53,
					["g"] = 0.53,
					["b"] = 0.93,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,188",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,189",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-251,-413",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,440,189",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
					},
					["target"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["height"] = 40,
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["enable"] = false,
							["yOffset"] = 1,
							["xOffset"] = -1,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["enable"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["healPrediction"] = true,
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
					},
					["targettarget"] = {
						["enable"] = false,
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 290,
						},
						["height"] = 40,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["bags"] = {
				["ignoreItems"] = "",
			},
			["bagSortIgnoreItemsReset"] = true,
		},
		["Alken - Khaz Modan"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,424",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Belken - Hyjal"] = {
			["currentTutorial"] = 6,
			["bags"] = {
				["ignoreItems"] = "",
			},
			["layoutSet"] = "healer",
			["bagSortIgnoreItemsReset"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,188",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,387",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,189",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,258,-234",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,212",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,440,189",
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,481,-390",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
			},
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 278,
							["height"] = 22,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
							["enable"] = false,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -86,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 40,
					},
					["raid40"] = {
						["growthDirection"] = "LEFT_UP",
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
					},
					["target"] = {
						["debuffs"] = {
							["useFilter"] = "TargetDebuffs",
						},
						["aurabar"] = {
							["useFilter"] = "TargetDebuffs",
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["yOffset"] = 18,
								["text_format"] = "[health:current]",
								["size"] = 25,
							},
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["height"] = 40,
						["health"] = {
							["text_format"] = "",
						},
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["roleIcon"] = {
							["damager"] = false,
							["position"] = "BOTTOMRIGHT",
							["yOffset"] = 1,
							["xOffset"] = -1,
						},
						["power"] = {
							["enable"] = false,
						},
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = -4,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 45,
						["buffs"] = {
							["xOffset"] = 50,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["useBlacklist"] = false,
							["noDuration"] = false,
							["playerOnly"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["sizeOverride"] = 22,
							["enable"] = true,
						},
						["horizontalSpacing"] = 9,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["text_format"] = "[healthcolor][health:deficit]",
						},
						["verticalSpacing"] = 9,
					},
					["boss"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:percent]",
						},
					},
				},
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["healthclass"] = true,
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["units"] = {
					["ENEMY_NPC"] = {
						["buffs"] = {
							["baseHeight"] = 6,
						},
					},
				},
			},
			["general"] = {
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
				["valuecolor"] = {
					["r"] = 0,
					["g"] = 0.44,
					["b"] = 0.87,
				},
			},
		},
		["Havoc"] = {
			["currentTutorial"] = 11,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.64,
					["g"] = 0.19,
					["b"] = 0.79,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,188",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,189",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,3,668",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,3,668",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-251,-413",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,441,189",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["bossAuraFiltersConverted"] = true,
			["hideTutorial"] = true,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 40,
					},
					["raid"] = {
						["roleIcon"] = {
							["enable"] = false,
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = -1,
							["yOffset"] = 1,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["enable"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
						["healPrediction"] = true,
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["height"] = 40,
						["classbar"] = {
							["enable"] = false,
						},
						["power"] = {
							["height"] = 6,
							["text_format"] = "",
							["detachFromFrame"] = true,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["bags"] = {
				["ignoreItems"] = "",
			},
			["bagSortIgnoreItemsReset"] = true,
		},
		["Alken - Hyjal"] = {
			["currentTutorial"] = 7,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.59,
					["g"] = 1,
					["r"] = 0,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,385",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,385",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,769,376",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-189,-432",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["layoutSet"] = "healer",
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 40,
					},
					["raid"] = {
						["roleIcon"] = {
							["enable"] = false,
							["yOffset"] = 1,
							["xOffset"] = -1,
							["position"] = "BOTTOMRIGHT",
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["enable"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["healPrediction"] = true,
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["detachFromFrame"] = true,
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 406,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["height"] = 40,
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["width"] = 80,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
		},
		["Default"] = {
		},
		["Boomkin"] = {
			["currentTutorial"] = 8,
			["general"] = {
				["valuecolor"] = {
					["b"] = 0.04,
					["g"] = 0.49,
					["r"] = 1,
				},
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,188",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,354",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,417,189",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,295,-214",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-224,385",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1070",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,177",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,113",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,481,-390",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,440,189",
				["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,455",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["statusbar"] = "Minimalist",
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["boss"] = {
						["health"] = {
							["text_format"] = "[healthcolor][health:percent]",
						},
					},
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["focus"] = {
						["castbar"] = {
							["enable"] = false,
						},
					},
					["target"] = {
						["debuffs"] = {
							["useFilter"] = "TargetDebuffs",
						},
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["height"] = 40,
						["aurabar"] = {
							["useFilter"] = "TargetDebuffs",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["xOffset"] = -1,
							["yOffset"] = 1,
							["position"] = "BOTTOMRIGHT",
							["damager"] = false,
						},
						["debuffs"] = {
							["sizeOverride"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["GPSArrow"] = {
							["enable"] = false,
							["size"] = 45,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["size"] = 22,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 22,
						},
						["healPrediction"] = true,
						["power"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["castbar"] = {
							["height"] = 28,
							["width"] = 360,
							["insideInfoPanel"] = false,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -86,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["classbar"] = {
							["enable"] = false,
						},
						["height"] = 40,
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["verticalSpacing"] = 9,
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["nameplates"] = {
				["loadDistance"] = 45,
				["units"] = {
					["ENEMY_NPC"] = {
						["buffs"] = {
							["enable"] = false,
						},
					},
				},
			},
			["bags"] = {
				["ignoreItems"] = "",
			},
			["bagSortIgnoreItemsReset"] = true,
		},
		["Base healer"] = {
			["currentTutorial"] = 3,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.64,
					["g"] = 0.19,
					["b"] = 0.79,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,745,376",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,729,646",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,306",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,999",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,769,376",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["layoutSet"] = "healer",
			["bossAuraFiltersConverted"] = true,
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
				},
			},
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["height"] = 30,
						["healPrediction"] = true,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["target"] = {
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["height"] = 40,
						["health"] = {
							["text_format"] = "",
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 10,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_DOWN",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["verticalSpacing"] = 10,
						["height"] = 33,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 72,
						["healPrediction"] = true,
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["height"] = 40,
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
							["insideInfoPanel"] = false,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["power"] = {
							["text_format"] = "",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
		},
		["Elken - Hyjal"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["currentTutorial"] = 1,
			["bossAuraFiltersConverted"] = true,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Palken - Hyjal"] = {
			["currentTutorial"] = 10,
			["general"] = {
				["valuecolor"] = {
					["r"] = 0.96,
					["g"] = 0.55,
					["b"] = 0.73,
				},
				["bordercolor"] = {
					["r"] = 0.31,
					["g"] = 0.31,
					["b"] = 0.31,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,741,385",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,741,646",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,309",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-307,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,310,432",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,115",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,186",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,176",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,769,376",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,307,4",
				["TotemBarMover"] = "TOP,ElvUIParent,TOP,-189,-432",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,278,132",
			},
			["layoutSet"] = "healer",
			["bossAuraFiltersConverted"] = true,
			["unitframe"] = {
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["healthclass"] = true,
				},
				["units"] = {
					["tank"] = {
						["targetsGroup"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["healPrediction"] = true,
						["buffs"] = {
							["useFilter"] = "PlayerBuffs",
						},
						["growthDirection"] = "LEFT_UP",
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["GPSArrow"] = {
							["size"] = 40,
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
					},
					["target"] = {
						["name"] = {
							["text_format"] = "[namecolor][name:medium]",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 92,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 40,
					},
					["raid"] = {
						["horizontalSpacing"] = 10,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 3,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "LEFT_DOWN",
						["roleIcon"] = {
							["xOffset"] = 2,
							["yOffset"] = -2,
							["size"] = 12,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["healPrediction"] = true,
						["height"] = 33,
						["verticalSpacing"] = 10,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["width"] = 72,
					},
					["targettarget"] = {
						["enable"] = false,
					},
					["player"] = {
						["health"] = {
							["text_format"] = "",
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 6,
						},
						["customTexts"] = {
							["Big Health"] = {
								["attachTextTo"] = "HEALTH",
								["font"] = "MSBT Transformers",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = -88,
								["size"] = 25,
								["text_format"] = "[health:current]",
								["yOffset"] = 18,
							},
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 285,
						},
						["height"] = 40,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Relken - Hyjal"] = "Relken - Hyjal",
		["Helken - Hyjal"] = "Helken - Hyjal",
		["Alken - Khaz Modan"] = "Alken - Khaz Modan",
		["Zimtadari - Aegwynn"] = "Zimtadari - Aegwynn",
		["Alken - Hyjal"] = "Alken - Hyjal",
		["Alkin - Hyjal"] = "Alkin - Hyjal",
		["Belken - Hyjal"] = "Belken - Hyjal",
		["Elken - Hyjal"] = "Elken - Hyjal",
		["Palken - Hyjal"] = "Palken - Hyjal",
	},
	["profiles"] = {
		["Relken - Hyjal"] = {
			["install_complete"] = "10.14",
		},
		["Helken - Hyjal"] = {
			["install_complete"] = "10.08",
		},
		["Alken - Khaz Modan"] = {
		},
		["Zimtadari - Aegwynn"] = {
			["install_complete"] = "8.22",
		},
		["Alken - Hyjal"] = {
			["cooldown"] = {
				["enable"] = false,
			},
			["install_complete"] = "10.07",
		},
		["Alkin - Hyjal"] = {
			["install_complete"] = "8.22",
		},
		["Belken - Hyjal"] = {
			["cooldown"] = {
				["enable"] = false,
			},
			["install_complete"] = "10.14",
		},
		["Elken - Hyjal"] = {
			["cooldown"] = {
				["enable"] = false,
			},
			["general"] = {
				["normTex"] = "Minimalist",
			},
			["install_complete"] = "10.07",
		},
		["Palken - Hyjal"] = {
			["theme"] = "class",
			["install_complete"] = "10.07",
		},
	},
}
