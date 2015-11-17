Parse_item(Item)
{
	Result_bis := Result



	;##### Permanent shrine effects",

	If(RegExMatch(Item, "i)^.{1,5}% reduced Enemy Stun Threshold$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent massive shrine buff"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Attack Speed$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent acceleration shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to maximum Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent diamond shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Chance to Block$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Chance to Block with Shields$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% additional Chance to Block with Staves$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% additional Block Chance while Dual Wielding$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Mana Gained on Kill$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent replenishing shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Movement Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rpermanent divine shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Attack Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rpermanent divine shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Cast Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rpermanent divine shrine"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% increased Area of Effect$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent echoing shrine"
	}

	If RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Accuracy Rating$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent shrouded shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rpermanent brutal shrine"
	}



	;##### Spawns a strongbox somewhere in the area",

	If(RegExMatch(Item, "i)^Players Recover Life, Mana and Energy Shield .{1,5}% slower$")){
		Result := Result . "`rregular strongbox"
	}

	If(RegExMatch(Item, "i)^Players have no Life or Mana Regeneration$")){
		Result := Result . "`rregular strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Melee Gems$")){
		Result := Result . "`rlarge strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Physical Damage$")){
		Result := Result . "`rblacksmith's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Bow Gems$")){
		Result := Result . "`rblacksmith's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Stun Recovery$")){
		Result := Result . "`rarmourer's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Lightning Gems$")){
		Result := Result . "`rornate strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Physical Damage with .*$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rartisan's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Physical Weapon Damage while .*$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rartisan's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Minion Gems$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rartisan's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% additional Chance to Block Spells (with|while) .*$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rarcanist's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Fire Gems$")){
		Result := Result . "`rgemcutter's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask Life Recovery Rate$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rchemist's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask Mana Recovery Rate$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rchemist's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Cold Gems$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rjeweller's strongbox"
	}

	If(RegExMatch(Item, "i)^Monsters Fracture$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rcartographer's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Damage$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rPerandus Bank (unique jeweller's strongbox)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Damage over Time$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rPerandus Bank (unique jeweller's strongbox)"
	}

	If(RegExMatch(Item, "i)^Area contains many Totems$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rKaom's Cache (unique armourer's strongbox)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Damage$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rStrange Barrel (unique strongbox)"
	}

	If(RegExMatch(Item, "i)^Players have Elemental Equilibrium$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rEmpyrean Apparatus (unique cartographer's strongbox)"
	}



	;##### Adds a tempest (also adds 15% IIQ)",

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Lightning Damage$")){
		Result := Result . "`rGalvanizing tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Lightning Damage to Attacks$")){
		Result := Result . "`rGalvanizing tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Lightning Damage to Spells$")){
		Result := Result . "`rGalvanizing tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Fire Damage$")){
		Result := Result . "`rSeething tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Fire Damage to Attacks$")){
		Result := Result . "`rSeething tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Fire Damage to Spells$")){
		Result := Result . "`rSeething tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Cold Damage$")){
		Result := Result . "`rShivering tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Cold Damage to Attacks$")){
		Result := Result . "`rShivering tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Cold Damage to Spells$")){
		Result := Result . "`rShivering tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Chaos Damage$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rCorrupting tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Physical Damage Reduction$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBattering tempest"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Enemy Block Chance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBattering tempest"
	}

	If(RegExMatch(Item, "i)^Monsters are Immune to Curses$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBlasphemous tempest"
	}

	If(RegExMatch(Item, "i)^Area contains two Unique Bosses$")){
		Result := Result . "`rEchoing tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Fire Resistance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMolten tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Lightning Resistance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rElectrocuting tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Cold Resistance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rGlacial tempest"
	}



	;##### Spawns monsters",

	If(RegExMatch(Item, "i)^.{1,5}% increased Evasion and Energy Shield$")){
		Result := Result . "`rinvasion boss"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to maximum Energy Shield$")){
		Result := Result . "`rduplicates all rare monsters"
	}

	If not RegExMatch(Type, "i)(ring|amulet)")
	If(RegExMatch(Item, "i)^\+.{1,5} to Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rspawns several groups of monsters"
	}

	If not RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rspawns several groups of monsters"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour and Evasion$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rspawns several groups of magic monsters"
	}

	If RegExMatch(Type, "i)(ring|amulet)")
	If(RegExMatch(Item, "i)^\+.{1,5} to Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r3 rare monsters spawn near the shrine"
	}

	If RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r3 rare monsters spawn near the shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Physical Attack Damage Leeched as Life$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rspawns several rare devourers throughout the area"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Sea Witches and their Spawn$")){
		Result := Result . "`rspawns Murk Fiends throughout the area"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour and Energy Shield$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rspawns 4 Kaom's totems"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Attack Speed (with|while) .*$")){
		Result := Result . "`rsummons hostile animated weapons"
	}

	If(RegExMatch(Item, "i)^Players have Blood Magic$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rsummons a hostile Grandmaster"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour, Evasion and Energy Shield$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rsummons Abaxoth"
	}



	;##### Spawns a rogue exile",

	If(RegExMatch(Item, "i)^\+.{1,5} to All Attributes$")){
		Result := Result . "`rspawns a random rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Strength$")){
		Result := Result . "`rspawns a marauder rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Dexterity$")){
		Result := Result . "`rspawns a ranger rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Intelligence$")){
		Result := Result . "`rspawns a witch rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Dexterity and Intelligence$")){
		Result := Result . "`rspawns a shadow rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Strength and Intelligence$")){
		Result := Result . "`rspawns a templar rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Strength and Dexterity$")){
		Result := Result . "`rspawns a duelist rogue exile"
	}



	;##### Spawns warbands",

	If(RegExMatch(Item, "i)^\+.{1,5}% to all Elemental Resistances$")){
		Result := Result . "`rspawns multiple warbands"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Lightning Resistance$")){
		Result := Result . "`rspawns one group of Brinerots"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Cold Resistance$")){
		Result := Result . "`rspawns one group of Mutewinds"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Fire Resistance$")){
		Result := Result . "`rspawns one group of Redblades"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Chaos Resistance$")){
		Result := Result . "`rspawns one group of Renegades"
	}

	If(RegExMatch(Item, "i)^Area has patches of chilled ground$")){
		Result := Result . "`rdoes what it says"
	}

	If(RegExMatch(Item, "i)^Area has patches of burning ground$")){
		Result := Result . "`rdoes what it says"
	}

	If(RegExMatch(Item, "i)^Area has patches of shocking ground$")){
		Result := Result . "`rdoes what it says"
	}



	;##### Spawns a tormented spirit",

	If(RegExMatch(Item, "i)^Monsters deal .{1,5}% extra Damage as Lightning$")){
		Result := Result . "`rspawns a Tormented Storm Cultist"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to maximum Mana$")){
		Result := Result . "`rspawns a Tormented Necromancer"
	}

	If(RegExMatch(Item, "i)^Area has patches of desecrated ground$")){
		Result := Result . "`rspawns a Tormented Necromancer"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Mana Regeneration Rate$")){
		Result := Result . "`rspawns a Tormented Emblezzler"
	}

	If(RegExMatch(Item, "i)^Monsters deal .{1,5}% extra Damage as Cold$")){
		Result := Result . "`rspawns a Tormented Aurora Cultist"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed while .*$")){
		Result := Result . "`rspawns a Tormented Forger"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Fire and Cold Resistances$")){
		Result := Result . "`rspawns a Tormented Vaal Cultist"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Fire and Lightning Resistances$")){
		Result := Result . "`rspawns a Tormented Vaal Cultist"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Cold and Lightning Resistances$")){
		Result := Result . "`rspawns a Tormented Vaal Cultist"
	}

	If(RegExMatch(Item, "i)^Unique Boss deals .{1,5}% increased Damage$")){
		Result := Result . "`rspawns a Tormented Seditionist"
	}

	If(RegExMatch(Item, "i)^Unique Boss has .{1,5}% increased Attack and Cast Speed$")){
		Result := Result . "`rspawns a Tormented Seditionist"
	}

	If(RegExMatch(Item, "i)^Monsters Poison on Hit$")){
		Result := Result . "`rspawns a Tormented Poisoner"
	}

	If(RegExMatch(Item, "i)^Monsters deal .{1,5}% extra Damage as Fire$")){
		Result := Result . "`rspawns a Tormented Arsonist"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Attack and Cast Speed$")){
		Result := Result . "`rspawns a Tormented Thug"
	}



	;##### Modifies your items",

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rAll unequipped items are scoured and you are rewarded with alchemy/transmute orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance$")){
		Result := Result . "`rone white item in your inventory is turned to rare"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Global Critical Strike Chance$")){
		Result := Result . "`rone white item in your inventory is turned to rare"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Global Critical Strike Multiplier$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rone random item (equipped or inventory, including flasks) gains 20% quality"
	}

	If not RegExMatch(Type, "i)(creased Accuracy Rating)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Light Radius$")){
		Result := Result . "`ridentifies all items"
	}

	If(RegExMatch(Item, "i)^type-jewel$")){
		Result := Result . "`ridentifies all items"
	}

	If(RegExMatch(Item, "i)^Quality: \+20%$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom item gets a skin"
	}

	If(RegExMatch(Item, "i)^Mirrored$")){
		Result := Result . "`rrandomizes the numerical value of implicit mod on a random item"
	}



	;##### Drops currency or items",

	If(RegExMatch(Item, "i)^.{1,5}% increased Freeze Duration on Enemies$")){
		Result := Result . "`rdrops 40 Armourer's Scraps"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Freeze$")){
		Result := Result . "`rdrops 40 Armourer's Scraps"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Ignite Duration on Enemies$")){
		Result := Result . "`rdrops 20 Blacksmith's Whetstones"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Ignite$")){
		Result := Result . "`rdrops 20 Blacksmith's Whetstones"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Maximum Number of Skeletons$")){
		Result := Result . "`rdrops 40 Orbs of Transmutation"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Fire Damage Leeched as Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops 20 Chance Orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Cold Damage Leeched as Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops 20 Chance Orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Lightning Damage Leeched as Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops 20 Chance Orbs"
	}

	If(RegExMatch(Item, "i)^Equipped Animated Guardian Drops Item on Death$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rdrops 10 Vaal Orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Shock Duration on Enemies$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rdrops 20x Cartographer's Chisels"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Shock$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rdrops 20x Cartographer's Chisels"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Elemental Skills$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rdrops a Divine Orb"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Elemental Skills$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rdrops a Divine Orb"
	}

	If(RegExMatch(Item, "i)^.{1,5}% more Monster Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops a Regal Orb after 30 seconds"
	}

	If(RegExMatch(Item, "i)^Monsters cannot be Stunned$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops a Regal Orb after 30 seconds"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by 2 additional Rogue Exiles$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rSLOWLY drops lots of whetstones, scraps, baubles, chisels and GCPs"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Energy Shield gained for each Enemy hit by your Attacks$")){
		Result := Result . "`rdrops a Divination Card"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Energy Shield Recharge Rate$")){
		Result := Result . "`rdrops a Divination Card"
	}

	If(RegExMatch(Item, "i)^.{1,5}% faster start of Energy Shield Recharge$")){
		Result := Result . "`rdrops a Divination Card"
	}

	If(RegExMatch(Item, "i)^.{1,5}% more Rare Monsters$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops 5 white jewels on the ground"
	}

	If(RegExMatch(Item, "i)^Rare Monsters each have a Nemesis Mod$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rdrops 5 white jewels on the ground"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Rarity of Items found$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rfills inventory with scroll fragments"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Spell Damage while .*$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rreplaces all items on the ground with their vendor price"
	}



	;##### Random monster drops extra items",

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with One Handed Melee Weapons$")){
		Result := Result . "`rone mob drops 5 rare daggers"
	}

	If not RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance for Spells$")){
		Result := Result . "`rone mob drops 5 rare staves"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Two Handed Melee Weapons$")){
		Result := Result . "`rone mob drops 5 rare maces"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Critical Strike Multiplier$")){
		Result := Result . "`rone mob drops 5 rare maces"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Critical Strike Chance$")){
		Result := Result . "`rone mob drops 5 rare two-handed maces"
	}

	If RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance for Spells$")){
		Result := Result . "`rone mob drops 5 rare wands"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with One Handed Melee Weapons$")){
		Result := Result . "`rone mob drops 5 rare claws"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed with Fire Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rone mob drops 5 rare amulets"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Fire Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rone mob drops 5 rare amulets"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Fire Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rone mob drops 5 rare amulets"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Projectile Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops 5 rare jewels"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed with Cold Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops 5 rare rings"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Cold Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops 5 rare rings"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Cold Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops 5 rare rings"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed with Lightning Skills$")){
		Result := Result . "`rrandom mob drops 5 rare belts"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Lightning Skills$")){
		Result := Result . "`rrandom mob drops 5 rare belts"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Lightning Skills$")){
		Result := Result . "`rrandom mob drops 5 rare belts"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Physical Damage while holding a Shield$")){
		Result := Result . "`rrandom mob drops 5 rare shields"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Two Handed Melee Weapons$")){
		Result := Result . "`rrandom mob drops 5 rare bows"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Weapon Critical Strike Chance while Dual Wielding$")){
		Result := Result . "`rrandom mob drops 5 rare swords"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier while Dual Wielding$")){
		Result := Result . "`rrandom mob drops 5 rare two-handed swords"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier for Spells$")){
		Result := Result . "`rrandom mob drops 5 rare sceptres"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Trap Damage$")){
		Result := Result . "`rrandom mob drops 10 rare items"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Trap Throwing Speed$")){
		Result := Result . "`rrandom mob drops 10 rare items"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Knock Enemies Back on hit$")){
		Result := Result . "`rrandom mob drops lots of wisdom scrolls"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Totem Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops a large amount of currency"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Totem Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops a large amount of currency"
	}

	If(RegExMatch(Item, "i)^Totems gain \+.{1,5}% to all Elemental Resistances$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom mob drops a large amount of currency"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Mine Laying Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rmobs have a chance to drop sacrifice fragments"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Mine Damage$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rmobs have a chance to drop sacrifice fragments"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Enfeeble$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Temporal Chains$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Elemental Weakness$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Vulnerability$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrandom monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Monsters reflect .{1,5}% of Elemental Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrare mobs killed within the next ~20 seconds drop a unique"
	}

	If(RegExMatch(Item, "i)^Monsters reflect .{1,5}% of Physical Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rrare mobs killed within the next ~20 seconds drop a unique"
	}



	;##### Adds a map mod to the area (includes IIQ/IIR of the corresponding mod)",

	If(RegExMatch(Item, "i)^.{1,5}% increased Energy Shield$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rdoubles the size of magic monster packs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased maximum Energy Shield$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rdoubles the size of magic monster packs"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Armour$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rRare Monsters each have a Nemesis Mod"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Chaos Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters Poison on Hit"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Chaos Damage to Attacks$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters Poison on Hit"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Physical Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters Fracture"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Physical Damage to Attacks$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters Fracture"
	}

	If(RegExMatch(Item, "i)^Area has increased monster variety$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r+80% Monster Fire Resistance"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Undead$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r+80% Monster Cold Resistance"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cold Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters deal 90-110% extra Damage as Cold"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Fire Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters deal 90-110% extra Damage as Fire"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Lightning Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters deal 90-110% extra Damage as Lightning"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Accuracy Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters fire 4 additional Projectiles"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Projectile Speed$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters' skills Chain 2 additional times"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Life gained on Kill$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r40-49% more Monster Life"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Humanoids$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r40-49% more Monster Life"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rSlaying Enemies close together can attract monsters from Beyond"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Skeletons$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters gain 3 Frenzy Charges every 20 seconds"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased maximum Mana$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rPlayers Recover Life, Mana and Energy Shield 60% slower"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Mana Cost of Skills$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r-(12-16)% maximum Player Resistances"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Life gained for each Enemy hit by Attacks$")){
		Result := Result . "`rKill streaks award you with Rampage bonuses"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Life gained for each Enemy hit by your Attacks$")){
		Result := Result . "`rKill streaks award you with Rampage bonuses"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Goatmen$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters have 40% increased Area of Effect"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Demons$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMonsters have 360-400% increased Critical Strike Chance, Monsters have 35% increased Critical Strike Multiplier"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by ranged monsters$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r25-30% increased Monster Damage"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Animals$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`r25-30% more Monster Life, Monsters cannot be Stunned"
	}



	;##### Misc area modifiers",

	If(RegExMatch(Item, "i)^.{1,5}% increased maximum Life$")){
		Result := Result . "`rcheck all clickables in the area"
	}

	If(RegExMatch(Item, "i)^Unique Boss has .{1,5}% increased Life$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`revery enemy's health is reduced to 1"
	}

	If(RegExMatch(Item, "i)^Unique Boss has .{1,5}% increased Area of Effect$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`revery enemy's health is reduced to 1"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Elemental Damage with Weapons$")){
		Result := Result . "`rall weapons will drop with 20% quality"
	}

	If(RegExMatch(Item, "i)^Minions deal .{1,5}% increased Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rall enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^Minions have .{1,5}% Chance to Block$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rall enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^Minions have .{1,5}% increased maximum Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rall enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^Minions have \+.{1,5}% to all Elemental Resistances$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rall enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^-.{1,5}% maximum Player Resistances$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`r100% increased experience gained"
	}

	If(RegExMatch(Item, "i)^Slaying Enemies close together can attract monsters from Beyond$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rall enemies affected by a random spirit's touch (all by the same one)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% more Magic Monsters$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rsome of the monsters become allied with you"
	}

	If(RegExMatch(Item, "i)^Magic Monster Packs each have a Bloodline Mod$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rsome of the monsters become allied with you"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Mana gained for each Enemy hit by your Attacks$")){
		Result := Result . "`rarea turns dark (similar to act 2 event)"
	}



	;##### Opens 6 portals to another map",

	If(RegExMatch(Item, "i)^Corrupted$")){
		Result := Result . "`ropens portals to a vaal side area"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Quality of Socketed Support Gems$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Coward's Trial"
	}

	If(RegExMatch(Item, "i)^Causes Bleeding On Hit$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`ropens portals to Vaults of Atziri"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by 1 additional Invasion Boss$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Acton's Nightmare"
	}

	If(RegExMatch(Item, "i)^Hits can't be Evaded$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Maelström of Chaos"
	}

	If(RegExMatch(Item, "i)^-.{1,5} to Mana Cost of Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Oba's Cursed Trove"
	}

	If(RegExMatch(Item, "i)^\+1 to Level of Support Gems in this item$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Whakawairua Tuahu"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Life Leeched per second$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Mao Kun"
	}

	If(RegExMatch(Item, "i)^Cannot be Frozen$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`ropens portals to Olmec's Sanctum"
	}



	;##### Fishing",



	;##### Misc effects",

	If(RegExMatch(Item, "i)^Monsters gain .{1,5} Endurance Charge(s)? every 20 seconds$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rclears all your vendors"
	}

	If(RegExMatch(Item, "i)^Monsters gain .{1,5} Power Charge(s)? every 20 seconds$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rclears all your vendors"
	}

	If(RegExMatch(Item, "i)^Monsters gain .{1,5} Frenzy Charge(s)? every 20 seconds$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rclears all your vendors"
	}

	If(RegExMatch(Item, "i)^.{1,5} Life Regenerated per second$")){
		Result := Result . "`rrefills flasks"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask Charges gained$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rno mana costs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Flask Charges used$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rno mana costs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Area Damage$")){
		Result := Result . "`rsockets a new random jewel in your passive tree (even in unallocated nodes)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Stun Duration on Enemies$")){
		Result := Result . "`rcreates a (friendly) clone of yourself"
	}

	If(RegExMatch(Item, "i)^Cannot Leech Life from Monsters$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rget extra reputation (or an instant level up?) with a master in your hideout"
	}

	If(RegExMatch(Item, "i)^Cannot Leech Mana from Monsters$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rget extra reputation (or an instant level up?) with a master in your hideout"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Attribute Requirements$")){
		Result := Result . "`rthe item you sacrificed appears in the next shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Movement Speed$")){
		Result := Result . "`rgain sacrificed item stats"
	}

	If(RegExMatch(Item, "i)^Reflects .{1,5} Physical Damage to Melee Attackers$")){
		Result := Result . "`rheadhunter effect (get powers from slain enemies)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Physical Attack Damage Leeched as Mana$")){
		Result := Result . "`rputs a map into the map device in eternal laboratory"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Gems$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rresets all dailies"
	}

	If(RegExMatch(Item, "i)^Monsters fire .{1,5} additional Projectiles$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rsummons an allied Grandmaster"
	}

	If(RegExMatch(Item, "i)^Monsters' skills Chain 2 additional times$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rsummons an allied Grandmaster"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% increased Critical Strike Chance$")){
		Result := Result . "`rempties all flasks"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% increased Critical Strike Multiplier$")){
		Result := Result . "`rempties all flasks"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% chance to Avoid Elemental Status Ailments$")){
		Result := Result . "`rdoubles the number of Darkshrines in the area"
	}

	If(RegExMatch(Item, "i)^Monsters are immune to Elemental Status Ailments$")){
		Result := Result . "`rdoubles the number of Darkshrines in the area"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Spell Damage$")){
		Result := Result . "`ra random darkshrine effect"
	}

	If(RegExMatch(Item, "i)^Unidentified$")){
		Result := Result . "`rsame effect as if the item is identified first"
	}



	;##### Unknown effects",

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask effect duration$")){
		Result := Result . "`runknown (possibly fills Vaal skills?)"
	}

	IfInString Result_bis, %Result%
		Result := Result . "`rUNKNOWN : " . Item
}

ParseAffix(Item)
{


	;##### Permanent shrine effects",

	If(RegExMatch(Item, "i)^.{1,5}% reduced Enemy Stun Threshold$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rCourage stands tall`r	permanent massive shrine buff"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Attack Speed$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rDeath doesn't wait`r	permanent acceleration shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to maximum Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rDeliver pain exquisite`r	permanent diamond shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Chance to Block$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Chance to Block with Shields$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% additional Chance to Block with Staves$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% additional Block Chance while Dual Wielding$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Mana Gained on Kill$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rRestore that which was lost`r	permanent replenishing shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Movement Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rBecome the nightmare`r	permanent divine shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Attack Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rBecome the nightmare`r	permanent divine shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Cast Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rBecome the nightmare`r	permanent divine shrine"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% increased Area of Effect$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rLet your rage flow freely`r	permanent echoing shrine"
	}

	If RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Accuracy Rating$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rShroud your path in the fog of war`r	permanent shrouded shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rHit hard, hit once`r	permanent brutal shrine"
	}



	;##### Spawns a strongbox somewhere in the area",

	If(RegExMatch(Item, "i)^Players Recover Life, Mana and Energy Shield .{1,5}% slower$")){
		Result := Result . "`rA miser's trove awaits you`r	regular strongbox"
	}

	If(RegExMatch(Item, "i)^Players have no Life or Mana Regeneration$")){
		Result := Result . "`rA miser's trove awaits you`r	regular strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Melee Gems$")){
		Result := Result . "`rA hoard awaits you`r	large strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Physical Damage$")){
		Result := Result . "`rThe secrets of the forge await you`r	blacksmith's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Bow Gems$")){
		Result := Result . "`rThe secrets of the forge await you`r	blacksmith's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Stun Recovery$")){
		Result := Result . "`rThe garb of the warrior awaits you`r	armourer's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Lightning Gems$")){
		Result := Result . "`rA valued prize awaits you`r	ornate strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Physical Damage with .*$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rTrue craftsmanship awaits you`r	artisan's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Physical Weapon Damage while .*$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rTrue craftsmanship awaits you`r	artisan's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Minion Gems$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rTrue craftsmanship awaits you`r	artisan's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% additional Chance to Block Spells (with|while) .*$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rA trove of magic awaits you`r	arcanist's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Fire Gems$")){
		Result := Result . "`rPower awaits you`r	gemcutter's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask Life Recovery Rate$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rThe secrets of chemistry await you`r	chemist's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask Mana Recovery Rate$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rThe secrets of chemistry await you`r	chemist's strongbox"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Cold Gems$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rTrinkets await you`r	jeweller's strongbox"
	}

	If(RegExMatch(Item, "i)^Monsters Fracture$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rA map of all the world awaits you`r	cartographer's strongbox"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Damage$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThe treasures of the wealthy await you`r	Perandus Bank (unique jeweller's strongbox)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Damage over Time$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThe treasures of the wealthy await you`r	Perandus Bank (unique jeweller's strongbox)"
	}

	If(RegExMatch(Item, "i)^Area contains many Totems$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThe secrets of the ancestors await you`r	Kaom's Cache (unique armourer's strongbox)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Monster Damage$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rSensible objects await you`r	Strange Barrel (unique strongbox)"
	}

	If(RegExMatch(Item, "i)^Players have Elemental Equilibrium$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rLocations far and wide await you`r	Empyrean Apparatus (unique cartographer's strongbox)"
	}



	;##### Adds a tempest (also adds 15% IIQ)",

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Lightning Damage$")){
		Result := Result . "`rA storm approaches`r	Galvanizing tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Lightning Damage to Attacks$")){
		Result := Result . "`rA storm approaches`r	Galvanizing tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Lightning Damage to Spells$")){
		Result := Result . "`rA storm approaches`r	Galvanizing tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Fire Damage$")){
		Result := Result . "`rA wind brings a scent of smoke`r	Seething tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Fire Damage to Attacks$")){
		Result := Result . "`rA wind brings a scent of smoke`r	Seething tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Fire Damage to Spells$")){
		Result := Result . "`rA wind brings a scent of smoke`r	Seething tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Cold Damage$")){
		Result := Result . "`rAn icy wind whips up around you`r	Shivering tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Cold Damage to Attacks$")){
		Result := Result . "`rAn icy wind whips up around you`r	Shivering tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Cold Damage to Spells$")){
		Result := Result . "`rAn icy wind whips up around you`r	Shivering tempest"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Chaos Damage$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rYou catch a faint smell of corruption on the wind`r	Corrupting tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Physical Damage Reduction$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYou feel buffeted by a strong gust`r	Battering tempest"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Enemy Block Chance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYou feel buffeted by a strong gust`r	Battering tempest"
	}

	If(RegExMatch(Item, "i)^Monsters are Immune to Curses$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYou catch a foul smell on the wind`r	Blasphemous tempest"
	}

	If(RegExMatch(Item, "i)^Area contains two Unique Bosses$")){
		Result := Result . "`rYou hear a voice on the wind`r	Echoing tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Fire Resistance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rA wind brings a whiff of ash`r	Molten tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Lightning Resistance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rThe air feels charged somehow`r	Electrocuting tempest"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% Monster Cold Resistance$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYou feel a sudden cold breeze`r	Glacial tempest"
	}



	;##### Spawns monsters",

	If(RegExMatch(Item, "i)^.{1,5}% increased Evasion and Energy Shield$")){
		Result := Result . "`rA strange foe from a strange land`r	invasion boss"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to maximum Energy Shield$")){
		Result := Result . "`rPrepared for trouble? How about double?`r	duplicates all rare monsters"
	}

	If not RegExMatch(Type, "i)(ring|amulet)")
	If(RegExMatch(Item, "i)^\+.{1,5} to Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBeware those who lie in ambush`r	spawns several groups of monsters"
	}

	If not RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBeware those who lie in ambush`r	spawns several groups of monsters"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour and Evasion$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rSurprise is a problem only for the unprepared`r	spawns several groups of magic monsters"
	}

	If RegExMatch(Type, "i)(ring|amulet)")
	If(RegExMatch(Item, "i)^\+.{1,5} to Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rAlways watch your back`r	3 rare monsters spawn near the shrine"
	}

	If RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Evasion Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rAlways watch your back`r	3 rare monsters spawn near the shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Physical Attack Damage Leeched as Life$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rThe ground beneath you tremors`r	spawns several rare devourers throughout the area"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Sea Witches and their Spawn$")){
		Result := Result . "`rA situation is only dangerous if can't run away from it`r	spawns Murk Fiends throughout the area"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour and Energy Shield$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rAncestral magic`r	spawns 4 Kaom's totems"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Attack Speed (with|while) .*$")){
		Result := Result . "`rNever discard a Weapon. It could be the blade that strikes you in the back`r	summons hostile animated weapons"
	}

	If(RegExMatch(Item, "i)^Players have Blood Magic$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rA worthy adversary`r	summons a hostile Grandmaster"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour, Evasion and Energy Shield$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rYou sense a great evil`r	summons Abaxoth"
	}



	;##### Spawns a rogue exile",

	If(RegExMatch(Item, "i)^\+.{1,5} to All Attributes$")){
		Result := Result . "`rAny and everything`r	spawns a random rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Strength$")){
		Result := Result . "`rAxe and Maul`r	spawns a marauder rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Dexterity$")){
		Result := Result . "`rBow and arrow`r	spawns a ranger rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Intelligence$")){
		Result := Result . "`rWand and focus`r	spawns a witch rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Dexterity and Intelligence$")){
		Result := Result . "`rDagger and claw`r	spawns a shadow rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Strength and Intelligence$")){
		Result := Result . "`rSceptre and Staff`r	spawns a templar rogue exile"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Strength and Dexterity$")){
		Result := Result . "`rSword and Board`r	spawns a duelist rogue exile"
	}



	;##### Spawns warbands",

	If(RegExMatch(Item, "i)^\+.{1,5}% to all Elemental Resistances$")){
		Result := Result . "`rHeart of the Conflict`r	spawns multiple warbands"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Lightning Resistance$")){
		Result := Result . "`rThe Brinerot rises`r	spawns one group of Brinerots"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Cold Resistance$")){
		Result := Result . "`rThe Mutewind rises`r	spawns one group of Mutewinds"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Fire Resistance$")){
		Result := Result . "`rThe Redblade rises`r	spawns one group of Redblades"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Chaos Resistance$")){
		Result := Result . "`rThe Renegades rise`r	spawns one group of Renegades"
	}

	If(RegExMatch(Item, "i)^Area has patches of chilled ground$")){
		Result := Result . "`rThe Mutewind trial begins in 30 seconds. It ends if you run away. Be prepared to die.`r	does what it says"
	}

	If(RegExMatch(Item, "i)^Area has patches of burning ground$")){
		Result := Result . "`rThe Redblade trial begins in 30 seconds. It ends if you run away. Be prepared to die.`r	does what it says"
	}

	If(RegExMatch(Item, "i)^Area has patches of shocking ground$")){
		Result := Result . "`rThe Brinerot trial begins in 30 seconds. It ends if you run away. Be prepared to die.`r	does what it says"
	}



	;##### Spawns a tormented spirit",

	If(RegExMatch(Item, "i)^Monsters deal .{1,5}% extra Damage as Lightning$")){
		Result := Result . "`rHe craved understanding no matter the cost`r	spawns a Tormented Storm Cultist"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to maximum Mana$")){
		Result := Result . "`rHe loved the dead. Too much.`r	spawns a Tormented Necromancer"
	}

	If(RegExMatch(Item, "i)^Area has patches of desecrated ground$")){
		Result := Result . "`rHe loved the dead. Too much.`r	spawns a Tormented Necromancer"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Mana Regeneration Rate$")){
		Result := Result . "`rHe stole that which he was entrusted with`r	spawns a Tormented Emblezzler"
	}

	If(RegExMatch(Item, "i)^Monsters deal .{1,5}% extra Damage as Cold$")){
		Result := Result . "`rHe was never bothered by the cold`r	spawns a Tormented Aurora Cultist"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed while .*$")){
		Result := Result . "`rHe was a stickler for the details`r	spawns a Tormented Forger"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Fire and Cold Resistances$")){
		Result := Result . "`rHe found power in sacrifice`r	spawns a Tormented Vaal Cultist"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Fire and Lightning Resistances$")){
		Result := Result . "`rHe found power in sacrifice`r	spawns a Tormented Vaal Cultist"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Cold and Lightning Resistances$")){
		Result := Result . "`rHe found power in sacrifice`r	spawns a Tormented Vaal Cultist"
	}

	If(RegExMatch(Item, "i)^Unique Boss deals .{1,5}% increased Damage$")){
		Result := Result . "`rHe spoke the truths as he saw them`r	spawns a Tormented Seditionist"
	}

	If(RegExMatch(Item, "i)^Unique Boss has .{1,5}% increased Attack and Cast Speed$")){
		Result := Result . "`rHe spoke the truths as he saw them`r	spawns a Tormented Seditionist"
	}

	If(RegExMatch(Item, "i)^Monsters Poison on Hit$")){
		Result := Result . "`rHe loved the thrill of killing his enemies. From far away`r	spawns a Tormented Poisoner"
	}

	If(RegExMatch(Item, "i)^Monsters deal .{1,5}% extra Damage as Fire$")){
		Result := Result . "`rHe loved to play with fire`r	spawns a Tormented Arsonist"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Attack and Cast Speed$")){
		Result := Result . "`rHis strength made him arrogant`r	spawns a Tormented Thug"
	}



	;##### Modifies your items",

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rAll rewards have their cost`r	All unequipped items are scoured and you are rewarded with alchemy/transmute orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance$")){
		Result := Result . "`rLead turns to gold`r	one white item in your inventory is turned to rare"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Global Critical Strike Chance$")){
		Result := Result . "`rLead turns to gold`r	one white item in your inventory is turned to rare"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Global Critical Strike Multiplier$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rPerfection`r	one random item (equipped or inventory, including flasks) gains 20% quality"
	}

	If not RegExMatch(Type, "i)(creased Accuracy Rating)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Light Radius$")){
		Result := Result . "`rThe light of reason still shines`r	identifies all items"
	}

	If(RegExMatch(Item, "i)^type-jewel$")){
		Result := Result . "`rThe light of reason still shines`r	identifies all items"
	}

	If(RegExMatch(Item, "i)^Quality: \+20%$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rWait, what was that sound?`r	random item gets a skin"
	}

	If(RegExMatch(Item, "i)^Mirrored$")){
		Result := Result . "`rThe little things add up`r	randomizes the numerical value of implicit mod on a random item"
	}



	;##### Drops currency or items",

	If(RegExMatch(Item, "i)^.{1,5}% increased Freeze Duration on Enemies$")){
		Result := Result . "`rFortify yourself`r	drops 40 Armourer's Scraps"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Freeze$")){
		Result := Result . "`rFortify yourself`r	drops 40 Armourer's Scraps"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Ignite Duration on Enemies$")){
		Result := Result . "`rSharpen your blade`r	drops 20 Blacksmith's Whetstones"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Ignite$")){
		Result := Result . "`rSharpen your blade`r	drops 20 Blacksmith's Whetstones"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Maximum Number of Skeletons$")){
		Result := Result . "`rSuccess lies in having the right tools`r	drops 40 Orbs of Transmutation"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Fire Damage Leeched as Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rRoll the dice`r	drops 20 Chance Orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Cold Damage Leeched as Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rRoll the dice`r	drops 20 Chance Orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Lightning Damage Leeched as Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rRoll the dice`r	drops 20 Chance Orbs"
	}

	If(RegExMatch(Item, "i)^Equipped Animated Guardian Drops Item on Death$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThose who will not tempt fate lack the courage of manhood`r	drops 10 Vaal Orbs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Shock Duration on Enemies$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rAn accurate map makes for a rewarding journey`r	drops 20x Cartographer's Chisels"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Shock$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rAn accurate map makes for a rewarding journey`r	drops 20x Cartographer's Chisels"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Elemental Skills$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rA gift from the divine`r	drops a Divine Orb"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Elemental Skills$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rA gift from the divine`r	drops a Divine Orb"
	}

	If(RegExMatch(Item, "i)^.{1,5}% more Monster Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rGood things come to those who wait`r	drops a Regal Orb after 30 seconds"
	}

	If(RegExMatch(Item, "i)^Monsters cannot be Stunned$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rGood things come to those who wait`r	drops a Regal Orb after 30 seconds"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by 2 additional Rogue Exiles$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rBetter yourself`r	SLOWLY drops lots of whetstones, scraps, baubles, chisels and GCPs"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Energy Shield gained for each Enemy hit by your Attacks$")){
		Result := Result . "`rMore than the paper its printed on`r	drops a Divination Card"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Energy Shield Recharge Rate$")){
		Result := Result . "`rMore than the paper its printed on`r	drops a Divination Card"
	}

	If(RegExMatch(Item, "i)^.{1,5}% faster start of Energy Shield Recharge$")){
		Result := Result . "`rMore than the paper its printed on`r	drops a Divination Card"
	}

	If(RegExMatch(Item, "i)^.{1,5}% more Rare Monsters$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rNo power but what can you make of them`r	drops 5 white jewels on the ground"
	}

	If(RegExMatch(Item, "i)^Rare Monsters each have a Nemesis Mod$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rNo power but what can you make of them`r	drops 5 white jewels on the ground"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Rarity of Items found$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rEven the wisest are given menial chores`r	fills inventory with scroll fragments"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Spell Damage while .*$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rThe riches you sought were all around you`r	replaces all items on the ground with their vendor price"
	}



	;##### Random monster drops extra items",

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with One Handed Melee Weapons$")){
		Result := Result . "`rKeeper of the knives`r	one mob drops 5 rare daggers"
	}

	If not RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance for Spells$")){
		Result := Result . "`rKeeper of the stave`r	one mob drops 5 rare staves"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Two Handed Melee Weapons$")){
		Result := Result . "`rKeeper of the axe`r	one mob drops 5 rare maces"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Critical Strike Multiplier$")){
		Result := Result . "`rKeeper of the hammer`r	one mob drops 5 rare maces"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Critical Strike Chance$")){
		Result := Result . "`rKeeper of the maul`r	one mob drops 5 rare two-handed maces"
	}

	If RegExMatch(Type, "i)(jewel)")
	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance for Spells$")){
		Result := Result . "`rKeeper of the wand`r	one mob drops 5 rare wands"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with One Handed Melee Weapons$")){
		Result := Result . "`rKeeper of the claw`r	one mob drops 5 rare claws"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed with Fire Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the trinkets`r	one mob drops 5 rare amulets"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Fire Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the trinkets`r	one mob drops 5 rare amulets"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Fire Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the trinkets`r	one mob drops 5 rare amulets"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Projectile Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the jewels`r	random mob drops 5 rare jewels"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed with Cold Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the ring`r	random mob drops 5 rare rings"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Cold Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the ring`r	random mob drops 5 rare rings"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Cold Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of the ring`r	random mob drops 5 rare rings"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cast Speed with Lightning Skills$")){
		Result := Result . "`rKeeper of the buckle`r	random mob drops 5 rare belts"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Chance with Lightning Skills$")){
		Result := Result . "`rKeeper of the buckle`r	random mob drops 5 rare belts"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Lightning Skills$")){
		Result := Result . "`rKeeper of the buckle`r	random mob drops 5 rare belts"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Melee Physical Damage while holding a Shield$")){
		Result := Result . "`rKeeper of the shield`r	random mob drops 5 rare shields"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier with Two Handed Melee Weapons$")){
		Result := Result . "`rKeeper of the bow`r	random mob drops 5 rare bows"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Weapon Critical Strike Chance while Dual Wielding$")){
		Result := Result . "`rKeeper of the blades`r	random mob drops 5 rare swords"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier while Dual Wielding$")){
		Result := Result . "`rKeeper of the swords`r	random mob drops 5 rare two-handed swords"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Critical Strike Multiplier for Spells$")){
		Result := Result . "`rKeeper of the sceptre`r	random mob drops 5 rare sceptres"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Trap Damage$")){
		Result := Result . "`rKeeper of the hoard`r	random mob drops 10 rare items"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Trap Throwing Speed$")){
		Result := Result . "`rKeeper of the hoard`r	random mob drops 10 rare items"
	}

	If(RegExMatch(Item, "i)^.{1,5}% chance to Knock Enemies Back on hit$")){
		Result := Result . "`rKeeper of wisdom`r	random mob drops lots of wisdom scrolls"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Totem Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of wealth`r	random mob drops a large amount of currency"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Totem Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of wealth`r	random mob drops a large amount of currency"
	}

	If(RegExMatch(Item, "i)^Totems gain \+.{1,5}% to all Elemental Resistances$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rKeeper of wealth`r	random mob drops a large amount of currency"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Mine Laying Speed$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rSeek the Apex`r	mobs have a chance to drop sacrifice fragments"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Mine Damage$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rSeek the Apex`r	mobs have a chance to drop sacrifice fragments"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Enfeeble$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Temporal Chains$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Elemental Weakness$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Players are cursed with Vulnerability$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"
	}

	If(RegExMatch(Item, "i)^Monsters reflect .{1,5}% of Elemental Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rRewards are seized only by those quick enough to find them`r	rare mobs killed within the next ~20 seconds drop a unique"
	}

	If(RegExMatch(Item, "i)^Monsters reflect .{1,5}% of Physical Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rRewards are seized only by those quick enough to find them`r	rare mobs killed within the next ~20 seconds drop a unique"
	}



	;##### Adds a map mod to the area (includes IIQ/IIR of the corresponding mod)",

	If(RegExMatch(Item, "i)^.{1,5}% increased Energy Shield$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBrothers in arms`r	doubles the size of magic monster packs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased maximum Energy Shield$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rBrothers in arms`r	doubles the size of magic monster packs"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Armour$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYour nemeses hunt you`r	Rare Monsters each have a Nemesis Mod"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Chaos Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rFeel the corruption in your veins`r	Monsters Poison on Hit"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Chaos Damage to Attacks$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rFeel the corruption in your veins`r	Monsters Poison on Hit"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Physical Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rKill one head and more will rise to take its place`r	Monsters Fracture"
	}

	If(RegExMatch(Item, "i)^Adds .{1,5}-.{1,5} Physical Damage to Attacks$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rKill one head and more will rise to take its place`r	Monsters Fracture"
	}

	If(RegExMatch(Item, "i)^Area has increased monster variety$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rPyromancer's bane`r	+80% Monster Fire Resistance"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Undead$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rAuromancer's bane`r	+80% Monster Cold Resistance"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Cold Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rNo adversary in nature is more deadly than the cold`r	Monsters deal 90-110% extra Damage as Cold"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Fire Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rNo force of nature holds more fear than fire`r	Monsters deal 90-110% extra Damage as Fire"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Lightning Damage$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rNo fury in nature is greater than that of lightning`r	Monsters deal 90-110% extra Damage as Lightning"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Accuracy Rating$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rNothing is more intimidating on the battlefield than a wall of arrows`r	Monsters fire 4 additional Projectiles"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Projectile Speed$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rSome challenges are best faced alone`r	Monsters' skills Chain 2 additional times"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Life gained on Kill$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rTough as nails`r	40-49% more Monster Life"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Humanoids$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rTough as nails`r	40-49% more Monster Life"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Armour$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rTwo worls collide`r	Slaying Enemies close together can attract monsters from Beyond"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Skeletons$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rWhipped into a frenzy`r	Monsters gain 3 Frenzy Charges every 20 seconds"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased maximum Mana$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYour natural vitality deserts you`r	Players Recover Life, Mana and Energy Shield 60% slower"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Mana Cost of Skills$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYour protections fail you`r	-(12-16)% maximum Player Resistances"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Life gained for each Enemy hit by Attacks$")){
		Result := Result . "`rYour anger rises`r	Kill streaks award you with Rampage bonuses"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Life gained for each Enemy hit by your Attacks$")){
		Result := Result . "`rYour anger rises`r	Kill streaks award you with Rampage bonuses"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Goatmen$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rSize often matters`r	Monsters have 40% increased Area of Effect"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Demons$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rYour enemies have all the luck`r	Monsters have 360-400% increased Critical Strike Chance, Monsters have 35% increased Critical Strike Multiplier"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by ranged monsters$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rCareful now`r	25-30% increased Monster Damage"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by Animals$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rUnflinching`r	25-30% more Monster Life, Monsters cannot be Stunned"
	}



	;##### Misc area modifiers",

	If(RegExMatch(Item, "i)^.{1,5}% increased maximum Life$")){
		Result := Result . "`rLeave no stone unturned`r	check all clickables in the area"
	}

	If(RegExMatch(Item, "i)^Unique Boss has .{1,5}% increased Life$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rDeliver the killing blow`r	every enemy's health is reduced to 1"
	}

	If(RegExMatch(Item, "i)^Unique Boss has .{1,5}% increased Area of Effect$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rDeliver the killing blow`r	every enemy's health is reduced to 1"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Elemental Damage with Weapons$")){
		Result := Result . "`rAn armoury of exquisite craftsmanship`r	all weapons will drop with 20% quality"
	}

	If(RegExMatch(Item, "i)^Minions deal .{1,5}% increased Damage$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^Minions have .{1,5}% Chance to Block$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^Minions have .{1,5}% increased maximum Life$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^Minions have \+.{1,5}% to all Elemental Resistances$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"
	}

	If(RegExMatch(Item, "i)^-.{1,5}% maximum Player Resistances$")){
		Importance := Importance> 8 ? Importance: 8
		Result := Result . "`rYou always were a fast learner`r	100% increased experience gained"
	}

	If(RegExMatch(Item, "i)^Slaying Enemies close together can attract monsters from Beyond$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThe touch of the damned`r	all enemies affected by a random spirit's touch (all by the same one)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% more Magic Monsters$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMutiny in the ranks`r	some of the monsters become allied with you"
	}

	If(RegExMatch(Item, "i)^Magic Monster Packs each have a Bloodline Mod$")){
		Importance := Importance> 4 ? Importance: 4
		Result := Result . "`rMutiny in the ranks`r	some of the monsters become allied with you"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} Mana gained for each Enemy hit by your Attacks$")){
		Result := Result . "`rGreust would not approve`r	area turns dark (similar to act 2 event)"
	}



	;##### Opens 6 portals to another map",

	If(RegExMatch(Item, "i)^Corrupted$")){
		Result := Result . "`rThe influence of the Vaal continues long after their civilization has crumbled`r	opens portals to a vaal side area"
	}

	If(RegExMatch(Item, "i)^\+.{1,5}% to Quality of Socketed Support Gems$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rA true test of nerves`r	opens portals to Coward's Trial"
	}

	If(RegExMatch(Item, "i)^Causes Bleeding On Hit$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThe riches of a queen`r	opens portals to Vaults of Atziri"
	}

	If(RegExMatch(Item, "i)^Area is inhabited by 1 additional Invasion Boss$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rA soft melody plays`r	opens portals to Acton's Nightmare"
	}

	If(RegExMatch(Item, "i)^Hits can't be Evaded$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rTravel back in time`r	opens portals to Maelström of Chaos"
	}

	If(RegExMatch(Item, "i)^-.{1,5} to Mana Cost of Skills$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rDon't tarry`r	opens portals to Oba's Cursed Trove"
	}

	If(RegExMatch(Item, "i)^\+1 to Level of Support Gems in this item$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rA sacred place in the shadows`r	opens portals to Whakawairua Tuahu"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Life Leeched per second$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rShiver me timbers`r	opens portals to Mao Kun"
	}

	If(RegExMatch(Item, "i)^Cannot be Frozen$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rVaal guardians survive long after their empire has fallen`r	opens portals to Olmec's Sanctum"
	}



	;##### Fishing",



	;##### Misc effects",

	If(RegExMatch(Item, "i)^Monsters gain .{1,5} Endurance Charge(s)? every 20 seconds$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rNot for sale`r	clears all your vendors"
	}

	If(RegExMatch(Item, "i)^Monsters gain .{1,5} Power Charge(s)? every 20 seconds$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rNot for sale`r	clears all your vendors"
	}

	If(RegExMatch(Item, "i)^Monsters gain .{1,5} Frenzy Charge(s)? every 20 seconds$")){
		Importance := Importance> 3 ? Importance: 3
		Result := Result . "`rNot for sale`r	clears all your vendors"
	}

	If(RegExMatch(Item, "i)^.{1,5} Life Regenerated per second$")){
		Result := Result . "`rDrink deeply`r	refills flasks"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask Charges gained$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rPower without limit`r	no mana costs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Flask Charges used$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rPower without limit`r	no mana costs"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Area Damage$")){
		Result := Result . "`rPower can be found in unexpected places`r	sockets a new random jewel in your passive tree (even in unallocated nodes)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Stun Duration on Enemies$")){
		Result := Result . "`rIf you want a job done well, there is nobody better than yourself`r	creates a (friendly) clone of yourself"
	}

	If(RegExMatch(Item, "i)^Cannot Leech Life from Monsters$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rThe forsaken favour you`r	get extra reputation (or an instant level up?) with a master in your hideout"
	}

	If(RegExMatch(Item, "i)^Cannot Leech Mana from Monsters$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rThe forsaken favour you`r	get extra reputation (or an instant level up?) with a master in your hideout"
	}

	If(RegExMatch(Item, "i)^.{1,5}% reduced Attribute Requirements$")){
		Result := Result . "`rPerhaps next time`r	the item you sacrificed appears in the next shrine"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Movement Speed$")){
		Result := Result . "`rYou become one with your offering`r	gain sacrificed item stats"
	}

	If(RegExMatch(Item, "i)^Reflects .{1,5} Physical Damage to Melee Attackers$")){
		Result := Result . "`rThe hunted becomes the hunter`r	headhunter effect (get powers from slain enemies)"
	}

	If(RegExMatch(Item, "i)^.{1,5}% of Physical Attack Damage Leeched as Mana$")){
		Result := Result . "`rJourneys await you`r	puts a map into the map device in eternal laboratory"
	}

	If(RegExMatch(Item, "i)^\+.{1,5} to Level of Socketed Gems$")){
		Importance := Importance> 7 ? Importance: 7
		Result := Result . "`rThe reward for a job well done is often another job`r	resets all dailies"
	}

	If(RegExMatch(Item, "i)^Monsters fire .{1,5} additional Projectiles$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rA worthy ally`r	summons an allied Grandmaster"
	}

	If(RegExMatch(Item, "i)^Monsters' skills Chain 2 additional times$")){
		Importance := Importance> 6 ? Importance: 6
		Result := Result . "`rA worthy ally`r	summons an allied Grandmaster"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% increased Critical Strike Chance$")){
		Result := Result . "`rYour sustenance is depleted`r	empties all flasks"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% increased Critical Strike Multiplier$")){
		Result := Result . "`rYour sustenance is depleted`r	empties all flasks"
	}

	If(RegExMatch(Item, "i)^Monsters have .{1,5}% chance to Avoid Elemental Status Ailments$")){
		Result := Result . "`rI am Twinned`r	doubles the number of Darkshrines in the area"
	}

	If(RegExMatch(Item, "i)^Monsters are immune to Elemental Status Ailments$")){
		Result := Result . "`rI am Twinned`r	doubles the number of Darkshrines in the area"
	}

	If(RegExMatch(Item, "i)^.{1,5}% increased Spell Damage$")){
		Result := Result . "`rAny effect`r	a random darkshrine effect"
	}

	If(RegExMatch(Item, "i)^Unidentified$")){
		Result := Result . "`rUnidentified`r	same effect as if the item is identified first"
	}



	;##### Unknown effects",

	If(RegExMatch(Item, "i)^.{1,5}% increased Flask effect duration$")){
		Result := Result . "`rAtziri's power fills you`r	unknown (possibly fills Vaal skills?)"
	}

}

