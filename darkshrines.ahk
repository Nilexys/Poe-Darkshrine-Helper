GetClipboardContents(DropNewlines = False)
{
    Result =
    If Not DropNewlines
    {
        Loop, Parse, Clipboard, `n, `r
        {
            Result := Result . A_LoopField . "`r`n"
        }
    }
    Else
    {   
        Loop, Parse, Clipboard, `n, `r
        {
            Result := Result . A_LoopField
        }
    }
    return Result
}


Parse_item(Item)
{
	Result_bis := Result



	;##### Permanent shrine effects",

	If(RegExMatch(Item, "i)^.*% reduced Enemy Stun Threshold$"))
		Result := Result . "`rpermanent massive shrine buff"

	If(RegExMatch(Item, "i)^.*% increased Attack Speed$"))
		Result := Result . "`rpermanent acceleration shrine"

	If(RegExMatch(Item, "i)^\+.* to maximum Life$"))
		Result := Result . "`rpermanent diamond shrine"

	If(RegExMatch(Item, "i)^\+.*% Chance to Block$"))
		Result := Result . "`rpermanent impenetrable shrine"

	If(RegExMatch(Item, "i)^\+.*% Chance to Block with Shields$"))
		Result := Result . "`rpermanent impenetrable shrine"

	If(RegExMatch(Item, "i)^.*% additional Chance to Block with Staves$"))
		Result := Result . "`rpermanent impenetrable shrine"

	If(RegExMatch(Item, "i)^.*% additional Block Chance while Dual Wielding$"))
		Result := Result . "`rpermanent impenetrable shrine"

	If(RegExMatch(Item, "i)^\+.* Mana Gained on Kill$"))
		Result := Result . "`rpermanent replenishing shrine"

	If(RegExMatch(Item, "i)^.*% increased Monster Movement Speed$"))
		Result := Result . "`rpermanent divine shrine"

	If(RegExMatch(Item, "i)^.*% increased Monster Attack Speed$"))
		Result := Result . "`rpermanent divine shrine"

	If(RegExMatch(Item, "i)^.*% increased Monster Cast Speed$"))
		Result := Result . "`rpermanent divine shrine"

	If(RegExMatch(Item, "i)^Monsters have .*% increased Area of Effect$"))
		Result := Result . "`rpermanent echoing shrine"

	If(RegExMatch(Item, "i)^.*% increased Accuracy Rating$"))
		If RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rpermanent shrouded shrine"

	If(RegExMatch(Item, "i)^.*% increased Melee Damage$"))
		Result := Result . "`rpermanent brutal shrine"



	;##### Spawns a strongbox somewhere in the area",

	If(RegExMatch(Item, "i)^Players Recover Life, Mana and Energy Shield .*% slower$"))
		Result := Result . "`rregular strongbox"

	If(RegExMatch(Item, "i)^Players have no Life or Mana Regeneration$"))
		Result := Result . "`rregular strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Melee Gems$"))
		Result := Result . "`rlarge strongbox"

	If(RegExMatch(Item, "i)^.*% increased Physical Damage$"))
		Result := Result . "`rblacksmith's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Bow Gems$"))
		Result := Result . "`rblacksmith's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Stun Recovery$"))
		Result := Result . "`rarmourer's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Lightning Gems$"))
		Result := Result . "`rornate strongbox"

	If(RegExMatch(Item, "i)^.*% increased Physical Damage with .*$"))
		Result := Result . "`rartisan's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Physical Weapon Damage while .*$"))
		Result := Result . "`rartisan's strongbox"

	If(RegExMatch(Item, "i)^.*% additional Chance to Block Spells (with|while) .*$"))
		Result := Result . "`rarcanist's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Fire Gems$"))
		Result := Result . "`rgemcutter's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Flask Life Recovery Rate$"))
		Result := Result . "`rchemist's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Cold Gems$"))
		Result := Result . "`rjeweller's strongbox"

	If(RegExMatch(Item, "i)^Monsters Fracture$"))
		Result := Result . "`rcartographer's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Damage over Time$"))
		Result := Result . "`rPerandus Bank (unique jeweller's strongbox)"

	If(RegExMatch(Item, "i)^Area contains many Totems$"))
		Result := Result . "`rKaom's Cache (unique armourer's strongbox)"

	If(RegExMatch(Item, "i)^.*% increased Monster Damage$"))
		Result := Result . "`rStrange Barrel (unique strongbox)"

	If(RegExMatch(Item, "i)^Players have Elemental Equilibrium$"))
		Result := Result . "`rEmpyrean Apparatus (unique cartographer's strongbox)"



	;##### Adds a tempest (also adds 15IIQ)",

	If(RegExMatch(Item, "i)^Adds .*-.* Lightning Damage$"))
		Result := Result . "`rGalvanizing tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Lightning Damage to Attacks$"))
		Result := Result . "`rGalvanizing tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Lightning Damage to Spells$"))
		Result := Result . "`rGalvanizing tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Fire Damage$"))
		Result := Result . "`rSeething tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Fire Damage to Attacks$"))
		Result := Result . "`rSeething tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Fire Damage to Spells$"))
		Result := Result . "`rSeething tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Cold Damage$"))
		Result := Result . "`rShivering tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Cold Damage to Attacks$"))
		Result := Result . "`rShivering tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Cold Damage to Spells$"))
		Result := Result . "`rShivering tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Chaos Damage to Attacks$"))
		Result := Result . "`rCorrupting tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Physical Damage Reduction$"))
		Result := Result . "`rBattering tempest"

	If(RegExMatch(Item, "i)^Monsters are Immune to Curses$"))
		Result := Result . "`rBlasphemous tempest"

	If(RegExMatch(Item, "i)^Area contains two Unique Bosses$"))
		Result := Result . "`rEchoing tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Fire Resistance$"))
		Result := Result . "`rMolten tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Lightning Resistance$"))
		Result := Result . "`rElectrocuting tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Cold Resistance$"))
		Result := Result . "`rGlacial tempest"



	;##### Spawns monsters",

	If(RegExMatch(Item, "i)^.*% increased Evasion and Energy Shield$"))
		Result := Result . "`rinvasion boss"

	If(RegExMatch(Item, "i)^\+.* to maximum Energy Shield$"))
		Result := Result . "`rduplicates all rare monsters"

	If(RegExMatch(Item, "i)^\+.* to Evasion Rating$"))
		If not RegExMatch(Type, "i)(ring|amulet)")
		Result := Result . "`rspawns several groups of monsters"

	If(RegExMatch(Item, "i)^.*% increased Evasion Rating$"))
		If not RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rspawns several groups of monsters"

	If(RegExMatch(Item, "i)^.*% increased Armour and Evasion$"))
		Result := Result . "`rspawns several groups of magic monsters"

	If(RegExMatch(Item, "i)^\+.* to Evasion Rating$"))
		If RegExMatch(Type, "i)(ring|amulet)")
		Result := Result . "`r3 rare monsters spawn near the shrine"

	If(RegExMatch(Item, "i)^.*% increased Evasion Rating$"))
		If RegExMatch(Type, "i)(jewel)")
		Result := Result . "`r3 rare monsters spawn near the shrine"

	If(RegExMatch(Item, "i)^.*% of Physical Attack Damage Leeched as Life$"))
		Result := Result . "`rspawns several rare devourers throughout the area"

	If(RegExMatch(Item, "i)^Area is inhabited by Sea Witches and their Spawn$"))
		Result := Result . "`rspawns Murk Fiends throughout the area"

	If(RegExMatch(Item, "i)^.*% increased Armour and Energy Shield$"))
		Result := Result . "`rspawns 4 Kaom's totems"

	If(RegExMatch(Item, "i)^.*% increased Attack Speed (with|while) .*$"))
		Result := Result . "`rsummons hostile animated weapons"



	;##### Spawns a rogue exile",

	If(RegExMatch(Item, "i)^\+.* to All Attributes$"))
		Result := Result . "`rspawns a random rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Strength$"))
		Result := Result . "`rspawns a marauder rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Dexterity$"))
		Result := Result . "`rspawns a ranger rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Intelligence$"))
		Result := Result . "`rspawns a witch rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Dexterity and Intelligence$"))
		Result := Result . "`rspawns a shadow rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Strength and Intelligence$"))
		Result := Result . "`rspawns a templar rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Strength and Dexterity$"))
		Result := Result . "`rspawns a duelist rogue exile"



	;##### Spawns warbands",

	If(RegExMatch(Item, "i)^\+.*% to all Elemental Resistances$"))
		Result := Result . "`rspawns multiple warbands"

	If(RegExMatch(Item, "i)^\+.*% to Lightning Resistance$"))
		Result := Result . "`rspawns 1 group of Brinerots"

	If(RegExMatch(Item, "i)^\+.*% to Cold Resistance$"))
		Result := Result . "`rspawns 1 group of Mutewinds"

	If(RegExMatch(Item, "i)^\+.*% to Fire Resistance$"))
		Result := Result . "`rspawns 1 group of Redblades"

	If(RegExMatch(Item, "i)^\+.*% to Chaos Resistance$"))
		Result := Result . "`rchaos warband leader"

	If(RegExMatch(Item, "i)^Area has patches of chilled ground$"))
		Result := Result . "`rdoes what it says"

	If(RegExMatch(Item, "i)^Area has patches of burning ground$"))
		Result := Result . "`rdoes what it says"

	If(RegExMatch(Item, "i)^Area has patches of shocking ground$"))
		Result := Result . "`rdoes what it says"



	;##### Spawns a tormented spirit",

	If(RegExMatch(Item, "i)^Monsters deal .*% extra Damage as Lightning$"))
		Result := Result . "`rspawns a Tormented Storm Cultist"

	If(RegExMatch(Item, "i)^\+.* to maximum Mana$"))
		Result := Result . "`rspawns a Tormented Necromancer"

	If(RegExMatch(Item, "i)^.*% increased Mana Regeneration Rate$"))
		Result := Result . "`rspawns a Tormented Emblezzler"

	If(RegExMatch(Item, "i)^Monsters deal .*% extra Damage as Cold$"))
		Result := Result . "`rspawns a Tormented Aurora Cultist"

	If(RegExMatch(Item, "i)^\+.*% increased Cast Speed while .*$"))
		Result := Result . "`rspawns a Tormented Forger"

	If(RegExMatch(Item, "i)^\+.*% to Fire and Cold Resistances$"))
		Result := Result . "`rspawns a Tormented Vaal Cultist"

	If(RegExMatch(Item, "i)^\+.*% to Fire and Lightning Resistances$"))
		Result := Result . "`rspawns a Tormented Vaal Cultist"

	If(RegExMatch(Item, "i)^\+.*% to Cold and Lightning Resistances$"))
		Result := Result . "`rspawns a Tormented Vaal Cultist"

	If(RegExMatch(Item, "i)^Unique Boss deals .*% increased Damage$"))
		Result := Result . "`rspawns a Tormented Seditionist"

	If(RegExMatch(Item, "i)^Unique Boss has .*% increased Attack and Cast Speed$"))
		Result := Result . "`rspawns a Tormented Seditionist"

	If(RegExMatch(Item, "i)^Monsters Poison on Hit$"))
		Result := Result . "`rspawns a Tormented Poisoner"

	If(RegExMatch(Item, "i)^Monsters deal .*% extra Damage as Fire$"))
		Result := Result . "`rspawns a Tormented Arsonist"

	If(RegExMatch(Item, "i)^.*% increased Attack and Cast Speed$"))
		Result := Result . "`rspawns a Tormented Thug"



	;##### Modifies your items",

	If(RegExMatch(Item, "i)^.*% increased Cast Speed$"))
		Result := Result . "`rAll unequipped items are scoured and you are rewarded with alchemy/transmute orbs"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance$"))
		Result := Result . "`rone white item in your inventory is turned to rare"

	If(RegExMatch(Item, "i)^.*% increased Global Critical Strike Chance$"))
		Result := Result . "`rone white item in your inventory is turned to rare"

	If(RegExMatch(Item, "i)^.*% increased Global Critical Strike Multiplier$"))
		Result := Result . "`rone random item (equipped or inventory, including flasks) gains 20% quality"

	If(RegExMatch(Item, "i)^.*% increased Light Radius$"))
		Result := Result . "`ridentifies all items"

	If(RegExMatch(Item, "i)^Quality: \+20%$"))
		Result := Result . "`rrandom item gets a skin"

	If(RegExMatch(Item, "i)^Mirrored$"))
		Result := Result . "`rpossibly rerolls an implicit mod on one item?"



	;##### Drops currency or items",

	If(RegExMatch(Item, "i)^.*% increased Freeze Duration on Enemies$"))
		Result := Result . "`rdrops 40 Armourer's Scraps"

	If(RegExMatch(Item, "i)^.*% chance to Freeze$"))
		Result := Result . "`rdrops 40 Armourer's Scraps"

	If(RegExMatch(Item, "i)^.*% increased Ignite Duration on Enemies$"))
		Result := Result . "`rdrops 20 Blacksmith's Whetstones"

	If(RegExMatch(Item, "i)^.*% chance to Ignite$"))
		Result := Result . "`rdrops 20 Blacksmith's Whetstones"

	If(RegExMatch(Item, "i)^\+.* to Maximum Number of Skeletons$"))
		Result := Result . "`rdrops 40 Orbs of Transmutation"

	If(RegExMatch(Item, "i)^.*% Fire Damage Leeched as Life$"))
		Result := Result . "`rdrops 20 Chance Orbs"

	If(RegExMatch(Item, "i)^.*% Cold Damage Leeched as Life$"))
		Result := Result . "`rdrops 20 Chance Orbs"

	If(RegExMatch(Item, "i)^.*% Lightning Damage Leeched as Life$"))
		Result := Result . "`rdrops 20 Chance Orbs"

	If(RegExMatch(Item, "i)^Equipped Animated Guardian Drops Item on Death$"))
		Result := Result . "`rdrops 10 Vaal Orbs"

	If(RegExMatch(Item, "i)^.*% increased Shock Duration on Enemies$"))
		Result := Result . "`rdrops 20x Cartographer's Chisels"

	If(RegExMatch(Item, "i)^.*% chance to Shock$"))
		Result := Result . "`rdrops 20x Cartographer's Chisels"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Elemental Skills$"))
		Result := Result . "`rdrops a Divine Orb"

	If(RegExMatch(Item, "i)^.*% more Monster Life$"))
		Result := Result . "`rdrops a Regal Orb after 30 seconds"

	If(RegExMatch(Item, "i)^Monsters cannot be Stunned$"))
		Result := Result . "`rdrops a Regal Orb after 30 seconds"

	If(RegExMatch(Item, "i)^Area is inhabited by 2 additional Rogue Exiles$"))
		Result := Result . "`rSLOWLY drops lots of whetstones, scraps, baubles, chisels and GCPs"

	If(RegExMatch(Item, "i)^\+.* Energy Shield gained for each Enemy hit by your Attacks$"))
		Result := Result . "`rdrops a Divination Card"

	If(RegExMatch(Item, "i)^.*% increased Energy Shield Recharge Rate$"))
		Result := Result . "`rdrops a Divination Card"

	If(RegExMatch(Item, "i)^.*% more Rare Monsters$"))
		Result := Result . "`rdrops 5 white jewels on the ground"

	If(RegExMatch(Item, "i)^Rare Monsters each have a Nemesis Mod$"))
		Result := Result . "`rdrops 5 white jewels on the ground"

	If(RegExMatch(Item, "i)^.*% increased Rarity of Items found$"))
		Result := Result . "`rfills inventory with scroll fragments"

	If(RegExMatch(Item, "i)^.*% increased Spell Damage while .*$"))
		Result := Result . "`rreplaces all items on the ground with their vendor price"



	;##### Random monster drops extra items",

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with One Handed Melee Weapons$"))
		Result := Result . "`rone mob drops 5 rare daggers"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance for Spells$"))
		If not RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rone mob drops 5 rare staves"

	If(RegExMatch(Item, "i)^.*% increased Melee Critical Strike Multiplier$"))
		Result := Result . "`rone mob drops 5 rare maces"

	If(RegExMatch(Item, "i)^.*% increased Melee Critical Strike Chance$"))
		Result := Result . "`rone mob drops 5 rare two-handed maces"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance for Spells$"))
		If RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rone mob drops 5 rare wands"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with One Handed Melee Weapons$"))
		Result := Result . "`rone mob drops 5 rare claws"

	If(RegExMatch(Item, "i)^.*% increased Cast Speed with Fire Skills$"))
		Result := Result . "`rone mob drops 5 rare amulets"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Fire Skills$"))
		Result := Result . "`rone mob drops 5 rare amulets"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Fire Skills$"))
		Result := Result . "`rone mob drops 5 rare amulets"

	If(RegExMatch(Item, "i)^.*% increased Projectile Damage$"))
		Result := Result . "`rrandom mob drops 5 rare jewels"

	If(RegExMatch(Item, "i)^.*% increased Cast Speed with Cold Skills$"))
		Result := Result . "`rrandom mob drops 5 rare rings"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Cold Skills$"))
		Result := Result . "`rrandom mob drops 5 rare rings"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Cold Skills$"))
		Result := Result . "`rrandom mob drops 5 rare rings"

	If(RegExMatch(Item, "i)^.*% increased Cast Speed with Lightning Skills$"))
		Result := Result . "`rrandom mob drops 5 rare belts"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Lightning Skills$"))
		Result := Result . "`rrandom mob drops 5 rare belts"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Lightning Skills$"))
		Result := Result . "`rrandom mob drops 5 rare belts"

	If(RegExMatch(Item, "i)^.*% increased Melee Physical Damage while holding a Shield$"))
		Result := Result . "`rrandom mob drops 5 rare shields"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Two Handed Melee Weapons$"))
		Result := Result . "`rrandom mob drops 5 rare bows"

	If(RegExMatch(Item, "i)^.*% increased Weapon Critical Strike Chance while Dual Wielding$"))
		Result := Result . "`rrandom mob drops 5 rare swords"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier while Dual Wielding$"))
		Result := Result . "`rrandom mob drops 5 rare two-handed swords"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier for Spells$"))
		Result := Result . "`rrandom mob drops 5 rare sceptres"

	If(RegExMatch(Item, "i)^.*% increased Trap Damage$"))
		Result := Result . "`rrandom mob drops 10 rare items"

	If(RegExMatch(Item, "i)^.*% increased Trap Throwing Speed$"))
		Result := Result . "`rrandom mob drops 10 rare items"

	If(RegExMatch(Item, "i)^.*% chance to Knock Enemies Back on hit$"))
		Result := Result . "`rrandom mob drops lots of wisdom scrolls"

	If(RegExMatch(Item, "i)^.*% increased Totem Damage$"))
		Result := Result . "`rrandom mob drops a large amount of currency"

	If(RegExMatch(Item, "i)^Totems gain \+.*% to all Elemental Resistances$"))
		Result := Result . "`rrandom mob drops a large amount of currency"

	If(RegExMatch(Item, "i)^.*% increased Mine Laying Speed$"))
		Result := Result . "`rmobs have a chance to drop sacrifice fragments"

	If(RegExMatch(Item, "i)^.*% increased Mine Damage$"))
		Result := Result . "`rmobs have a chance to drop sacrifice fragments"

	If(RegExMatch(Item, "i)^Players are cursed with Enfeeble$"))
		Result := Result . "`rrandom monster drops a unique item"

	If(RegExMatch(Item, "i)^Players are cursed with Temporal Chains$"))
		Result := Result . "`rrandom monster drops a unique item"

	If(RegExMatch(Item, "i)^Players are cursed with Elemental Weakness$"))
		Result := Result . "`rrandom monster drops a unique item"

	If(RegExMatch(Item, "i)^Players are cursed with Vulnerability$"))
		Result := Result . "`rrandom monster drops a unique item"

	If(RegExMatch(Item, "i)^Monsters reflect .*% of Elemental Damage$"))
		Result := Result . "`rrare mobs killed within the next ~20 seconds drop a unique"

	If(RegExMatch(Item, "i)^Monsters reflect .*% of Physical Damage$"))
		Result := Result . "`rrare mobs killed within the next ~20 seconds drop a unique"



	;##### Adds a map mod to the area (includes IIQ/IIR of the corresponding mod)",

	If(RegExMatch(Item, "i)^.*% increased Energy Shield$"))
		Result := Result . "`rMagic Monster Packs each have a Bloodline Mod"

	If(RegExMatch(Item, "i)^.*% increased maximum Energy Shield$"))
		Result := Result . "`rMagic Monster Packs each have a Bloodline Mod"

	If(RegExMatch(Item, "i)^\+.* to Armour$"))
		Result := Result . "`rRare Monsters each have a Nemesis Mod"

	If(RegExMatch(Item, "i)^.*% increased Chaos Damage$"))
		Result := Result . "`rMonsters Poison on Hit"

	If(RegExMatch(Item, "i)^Adds .*-.* Physical Damage$"))
		Result := Result . "`rMonsters Fracture"

	If(RegExMatch(Item, "i)^Adds .*-.* Physical Damage to Attacks$"))
		Result := Result . "`rMonsters Fracture"

	If(RegExMatch(Item, "i)^Area has increased monster variety$"))
		Result := Result . "`r+80% Monster Fire Resistance"

	If(RegExMatch(Item, "i)^Area is inhabited by Undead$"))
		Result := Result . "`r+80% Monster Cold Resistance"

	If(RegExMatch(Item, "i)^.*% increased Cold Damage$"))
		Result := Result . "`rMonsters deal 90-110% extra Damage as Cold"

	If(RegExMatch(Item, "i)^.*% increased Fire Damage$"))
		Result := Result . "`rMonsters deal 90-110% extra Damage as Fire"

	If(RegExMatch(Item, "i)^.*% increased Lightning Damage$"))
		Result := Result . "`rMonsters deal 90-110% extra Damage as Lightning"

	If(RegExMatch(Item, "i)^\+.* to Accuracy Rating$"))
		Result := Result . "`rMonsters fire 4 additional Projectiles"

	If(RegExMatch(Item, "i)^.*% increased Projectile Speed$"))
		Result := Result . "`rMonsters' skills Chain 2 additional times"

	If(RegExMatch(Item, "i)^\+.* Life gained on Kill$"))
		Result := Result . "`r40-49% more Monster Life"

	If(RegExMatch(Item, "i)^.*% increased Armour$"))
		Result := Result . "`rSlaying Enemies close together can attract monsters from Beyond"

	If(RegExMatch(Item, "i)^Area is inhabited by Skeletons$"))
		Result := Result . "`rMonsters gain 3 Frenzy Charges every 20 seconds"

	If(RegExMatch(Item, "i)^.*% increased maximum Mana$"))
		Result := Result . "`rPlayers Recover Life, Mana and Energy Shield 60% slower"

	If(RegExMatch(Item, "i)^.*% reduced Mana Cost of Skills$"))
		Result := Result . "`r-(12-16)% maximum Player Resistances"

	If(RegExMatch(Item, "i)^\+.* Life gained for each Enemy hit by Attacks$"))
		Result := Result . "`rKill streaks award you with Rampage bonuses"

	If(RegExMatch(Item, "i)^Area is inhabited by Goatmen$"))
		Result := Result . "`rMonsters have 40% increased Area of Effect"

	If(RegExMatch(Item, "i)^Area is inhabited by Demons$"))
		Result := Result . "`rMonsters have 360-400% increased Critical Strike Chance, Monsters have 35% increased Critical Strike Multiplier"

	If(RegExMatch(Item, "i)^Area is inhabited by ranged monsters$"))
		Result := Result . "`r25-30% increased Monster Damage"

	If(RegExMatch(Item, "i)^Area is inhabited by Animals$"))
		Result := Result . "`r25-30% more Monster Life, Monsters cannot be Stunned"



	;##### Misc area modifiers",

	If(RegExMatch(Item, "i)^.*% increased maximum Life$"))
		Result := Result . "`rcheck all clickables in the area"

	If(RegExMatch(Item, "i)^Unique Boss has .*% increased Life$"))
		Result := Result . "`revery enemy's health is reduced to 1"

	If(RegExMatch(Item, "i)^Unique Boss has .*% increased Area of Effect$"))
		Result := Result . "`revery enemy's health is reduced to 1"

	If(RegExMatch(Item, "i)^.*% increased Elemental Damage with Weapons$"))
		Result := Result . "`rall weapons will drop with 20% quality"

	If(RegExMatch(Item, "i)^Minions deal .*% increased Damage$"))
		Result := Result . "`rall enemies are immobilized"

	If(RegExMatch(Item, "i)^Minions have .*% Chance to Block$"))
		Result := Result . "`rall enemies are immobilized"

	If(RegExMatch(Item, "i)^Minions have .*% increased maximum Life$"))
		Result := Result . "`rall enemies are immobilized"

	If(RegExMatch(Item, "i)^Minions have \+.*% to all Elemental Resistances$"))
		Result := Result . "`rall enemies are immobilized"

	If(RegExMatch(Item, "i)^-.*% maximum Player Resistances$"))
		Result := Result . "`r100% increased experience gained"

	If(RegExMatch(Item, "i)^Slaying Enemies close together can attract monsters from Beyond$"))
		Result := Result . "`rall enemies affected by a random spirit's touch (all by the same one)"

	If(RegExMatch(Item, "i)^.*% more Magic Monsters$"))
		Result := Result . "`rsome of the monsters become allied with you"

	If(RegExMatch(Item, "i)^Magic Monster Packs each have a Bloodline Mod$"))
		Result := Result . "`rsome of the monsters become allied with you"

	If(RegExMatch(Item, "i)^\+.* Mana gained for each Enemy hit by your Attacks$"))
		Result := Result . "`rarea turns dark (similar to act 2 event)"



	;##### Opens 6 portals to another map",

	If(RegExMatch(Item, "i)^Corrupted$"))
		Result := Result . "`ropens portals to a vaal side area"

	If(RegExMatch(Item, "i)^\+.*% to Quality of Socketed Support Gems$"))
		Result := Result . "`ropens portals to Coward's Trial"

	If(RegExMatch(Item, "i)^Causes Bleeding On Hit$"))
		Result := Result . "`ropens portals to Vaults of Atziri"

	If(RegExMatch(Item, "i)^Area is inhabited by 1 additional Invasion Boss$"))
		Result := Result . "`ropens portals to Acton's Nightmare"

	If(RegExMatch(Item, "i)^Hits can't be Evaded$"))
		Result := Result . "`ropens portals to Maelström of Chaos"

	If(RegExMatch(Item, "i)^-.* to Mana Cost of Skills$"))
		Result := Result . "`ropens portals to Oba's Cursed Trove"

	If(RegExMatch(Item, "i)^\+1 to Level of Support Gems in this item$"))
		Result := Result . "`ropens portals to Whakawairua Tuahu"

	If(RegExMatch(Item, "i)^.*% increased Life Leeched per second$"))
		Result := Result . "`ropens portals to Mao Kun"



	;##### Fishing",



	;##### Misc effects",

	If(RegExMatch(Item, "i)^Monsters gain .* Endurance Charge(s)? every 20 seconds$"))
		Result := Result . "`rclears all your vendors"

	If(RegExMatch(Item, "i)^Monsters gain .* Power Charge(s)? every 20 seconds$"))
		Result := Result . "`rclears all your vendors"

	If(RegExMatch(Item, "i)^Monsters gain .* Frenzy Charge(s)? every 20 seconds$"))
		Result := Result . "`rclears all your vendors"

	If(RegExMatch(Item, "i)^.* Life Regenerated per second$"))
		Result := Result . "`rrefills flasks"

	If(RegExMatch(Item, "i)^.*% increased Flask Charges gained$"))
		Result := Result . "`rno mana costs"

	If(RegExMatch(Item, "i)^.*% reduced Flask Charges used$"))
		Result := Result . "`rno mana costs"

	If(RegExMatch(Item, "i)^.*% increased Area Damage$"))
		Result := Result . "`rsockets a new random jewel in your passive tree (even in unallocated nodes)"

	If(RegExMatch(Item, "i)^.*% increased Stun Duration on Enemies$"))
		Result := Result . "`rcreates a (friendly) clone of yourself"

	If(RegExMatch(Item, "i)^.*% reduced Attribute Requirements$"))
		Result := Result . "`rthe item you sacrificed appears in the next shrine"

	If(RegExMatch(Item, "i)^.*% increased Movement Speed$"))
		Result := Result . "`rgain sacrificed item stats"

	If(RegExMatch(Item, "i)^Reflects .* Physical Damage to Melee Attackers$"))
		Result := Result . "`rheadhunter effect (get powers from slain enemies)"

	If(RegExMatch(Item, "i)^.*% of Physical Attack Damage Leeched as Mana$"))
		Result := Result . "`rputs a map into the map device in eternal laboratory"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Gems$"))
		Result := Result . "`rresets all dailies"

	If(RegExMatch(Item, "i)^Monsters fire .* additional Projectiles$"))
		Result := Result . "`rsummons an allied Grandmaster"

	If(RegExMatch(Item, "i)^Monsters' skills Chain 2 additional times$"))
		Result := Result . "`rsummons an allied Grandmaster"

	If(RegExMatch(Item, "i)^Monsters have .*% increased Critical Strike Chance$"))
		Result := Result . "`rempties all flasks"

	If(RegExMatch(Item, "i)^Monsters have .*% increased Critical Strike Multiplier$"))
		Result := Result . "`rempties all flasks"

	If(RegExMatch(Item, "i)^Monsters have .*% chance to Avoid Elemental Status Ailments$"))
		Result := Result . "`rspawns another Darkshrine"

	If(RegExMatch(Item, "i)^Monsters are immune to Elemental Status Ailments$"))
		Result := Result . "`rspawns another Darkshrine"

	If(RegExMatch(Item, "i)^.*% increased Spell Damage$"))
		Result := Result . "`ra random darkshrine effect"

	If(RegExMatch(Item, "i)^Unidentified$"))
		Result := Result . "`rsame effect as if the item is identified first"



	;##### Unknown effects",

	If(RegExMatch(Item, "i)^.*% increased Flask effect duration$"))
		Result := Result . "`runknown (possibly fills Vaal skills?)"

	IfInString Result_bis, %Result%
		Result := Result . "`rUNKNOWN : " . Item
}

ParseAffix(Item)
{


	;##### Permanent shrine effects",

	If(RegExMatch(Item, "i)^.*% reduced Enemy Stun Threshold$"))
		Result := Result . "`rCourage stands tall`r	permanent massive shrine buff"

	If(RegExMatch(Item, "i)^.*% increased Attack Speed$"))
		Result := Result . "`rDeath doesn't wait`r	permanent acceleration shrine"

	If(RegExMatch(Item, "i)^\+.* to maximum Life$"))
		Result := Result . "`rDeliver pain exquisite`r	permanent diamond shrine"

	If(RegExMatch(Item, "i)^\+.*% Chance to Block$"))
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"

	If(RegExMatch(Item, "i)^\+.*% Chance to Block with Shields$"))
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"

	If(RegExMatch(Item, "i)^.*% additional Chance to Block with Staves$"))
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"

	If(RegExMatch(Item, "i)^.*% additional Block Chance while Dual Wielding$"))
		Result := Result . "`rNone shall stop you`r	permanent impenetrable shrine"

	If(RegExMatch(Item, "i)^\+.* Mana Gained on Kill$"))
		Result := Result . "`rRestore that which was lost`r	permanent replenishing shrine"

	If(RegExMatch(Item, "i)^.*% increased Monster Movement Speed$"))
		Result := Result . "`rBecome the nightmare`r	permanent divine shrine"

	If(RegExMatch(Item, "i)^.*% increased Monster Attack Speed$"))
		Result := Result . "`rBecome the nightmare`r	permanent divine shrine"

	If(RegExMatch(Item, "i)^.*% increased Monster Cast Speed$"))
		Result := Result . "`rBecome the nightmare`r	permanent divine shrine"

	If(RegExMatch(Item, "i)^Monsters have .*% increased Area of Effect$"))
		Result := Result . "`rLet your rage flow freely`r	permanent echoing shrine"

	If(RegExMatch(Item, "i)^.*% increased Accuracy Rating$"))
		If RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rShroud your path in the fog of war`r	permanent shrouded shrine"

	If(RegExMatch(Item, "i)^.*% increased Melee Damage$"))
		Result := Result . "`rHit hard, hit once`r	permanent brutal shrine"



	;##### Spawns a strongbox somewhere in the area",

	If(RegExMatch(Item, "i)^Players Recover Life, Mana and Energy Shield .*% slower$"))
		Result := Result . "`rA miser's trove awaits you`r	regular strongbox"

	If(RegExMatch(Item, "i)^Players have no Life or Mana Regeneration$"))
		Result := Result . "`rA miser's trove awaits you`r	regular strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Melee Gems$"))
		Result := Result . "`rA hoard awaits you`r	large strongbox"

	If(RegExMatch(Item, "i)^.*% increased Physical Damage$"))
		Result := Result . "`rThe secrets of the forge await you`r	blacksmith's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Bow Gems$"))
		Result := Result . "`rThe secrets of the forge await you`r	blacksmith's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Stun Recovery$"))
		Result := Result . "`rThe garb of the warrior awaits you`r	armourer's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Lightning Gems$"))
		Result := Result . "`rA valued prize awaits you`r	ornate strongbox"

	If(RegExMatch(Item, "i)^.*% increased Physical Damage with .*$"))
		Result := Result . "`rTrue craftsmanship awaits you`r	artisan's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Physical Weapon Damage while .*$"))
		Result := Result . "`rTrue craftsmanship awaits you`r	artisan's strongbox"

	If(RegExMatch(Item, "i)^.*% additional Chance to Block Spells (with|while) .*$"))
		Result := Result . "`rA trove of magic awaits you`r	arcanist's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Fire Gems$"))
		Result := Result . "`rPower awaits you`r	gemcutter's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Flask Life Recovery Rate$"))
		Result := Result . "`rThe secrets of chemistry await you`r	chemist's strongbox"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Cold Gems$"))
		Result := Result . "`rTrinkets await you`r	jeweller's strongbox"

	If(RegExMatch(Item, "i)^Monsters Fracture$"))
		Result := Result . "`rA map of all the world awaits you`r	cartographer's strongbox"

	If(RegExMatch(Item, "i)^.*% increased Damage over Time$"))
		Result := Result . "`rThe treasures of the wealthy await you`r	Perandus Bank (unique jeweller's strongbox)"

	If(RegExMatch(Item, "i)^Area contains many Totems$"))
		Result := Result . "`rThe secrets of the ancestors await you`r	Kaom's Cache (unique armourer's strongbox)"

	If(RegExMatch(Item, "i)^.*% increased Monster Damage$"))
		Result := Result . "`rSensible objects await you`r	Strange Barrel (unique strongbox)"

	If(RegExMatch(Item, "i)^Players have Elemental Equilibrium$"))
		Result := Result . "`rLocations far and wide await you`r	Empyrean Apparatus (unique cartographer's strongbox)"



	;##### Adds a tempest (also adds 15IIQ)",

	If(RegExMatch(Item, "i)^Adds .*-.* Lightning Damage$"))
		Result := Result . "`rA storm approaches`r	Galvanizing tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Lightning Damage to Attacks$"))
		Result := Result . "`rA storm approaches`r	Galvanizing tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Lightning Damage to Spells$"))
		Result := Result . "`rA storm approaches`r	Galvanizing tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Fire Damage$"))
		Result := Result . "`rA wind brings a scent of smoke`r	Seething tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Fire Damage to Attacks$"))
		Result := Result . "`rA wind brings a scent of smoke`r	Seething tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Fire Damage to Spells$"))
		Result := Result . "`rA wind brings a scent of smoke`r	Seething tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Cold Damage$"))
		Result := Result . "`rAn icy wind whips up around you`r	Shivering tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Cold Damage to Attacks$"))
		Result := Result . "`rAn icy wind whips up around you`r	Shivering tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Cold Damage to Spells$"))
		Result := Result . "`rAn icy wind whips up around you`r	Shivering tempest"

	If(RegExMatch(Item, "i)^Adds .*-.* Chaos Damage to Attacks$"))
		Result := Result . "`rYou catch a faint smell of corruption on the wind`r	Corrupting tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Physical Damage Reduction$"))
		Result := Result . "`rYou feel buffeted by a strong gust`r	Battering tempest"

	If(RegExMatch(Item, "i)^Monsters are Immune to Curses$"))
		Result := Result . "`rYou catch a foul smell on the wind`r	Blasphemous tempest"

	If(RegExMatch(Item, "i)^Area contains two Unique Bosses$"))
		Result := Result . "`rYou hear a voice on the wind`r	Echoing tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Fire Resistance$"))
		Result := Result . "`rA wind brings a whiff of ash`r	Molten tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Lightning Resistance$"))
		Result := Result . "`rThe air feels charged somehow`r	Electrocuting tempest"

	If(RegExMatch(Item, "i)^\+.*% Monster Cold Resistance$"))
		Result := Result . "`rYou feel a sudden cold breeze`r	Glacial tempest"



	;##### Spawns monsters",

	If(RegExMatch(Item, "i)^.*% increased Evasion and Energy Shield$"))
		Result := Result . "`rA strange foe from a strange land`r	invasion boss"

	If(RegExMatch(Item, "i)^\+.* to maximum Energy Shield$"))
		Result := Result . "`rPrepared for trouble? How about double?`r	duplicates all rare monsters"

	If(RegExMatch(Item, "i)^\+.* to Evasion Rating$"))
		If not RegExMatch(Type, "i)(ring|amulet)")
		Result := Result . "`rBeware those who lie in ambush`r	spawns several groups of monsters"

	If(RegExMatch(Item, "i)^.*% increased Evasion Rating$"))
		If not RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rBeware those who lie in ambush`r	spawns several groups of monsters"

	If(RegExMatch(Item, "i)^.*% increased Armour and Evasion$"))
		Result := Result . "`rSurprise is a problem only for the unprepared`r	spawns several groups of magic monsters"

	If(RegExMatch(Item, "i)^\+.* to Evasion Rating$"))
		If RegExMatch(Type, "i)(ring|amulet)")
		Result := Result . "`rAlways watch your back`r	3 rare monsters spawn near the shrine"

	If(RegExMatch(Item, "i)^.*% increased Evasion Rating$"))
		If RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rAlways watch your back`r	3 rare monsters spawn near the shrine"

	If(RegExMatch(Item, "i)^.*% of Physical Attack Damage Leeched as Life$"))
		Result := Result . "`rThe ground beneath you tremors`r	spawns several rare devourers throughout the area"

	If(RegExMatch(Item, "i)^Area is inhabited by Sea Witches and their Spawn$"))
		Result := Result . "`rA situation is only dangerous if can't run away from it`r	spawns Murk Fiends throughout the area"

	If(RegExMatch(Item, "i)^.*% increased Armour and Energy Shield$"))
		Result := Result . "`rAncestral magic`r	spawns 4 Kaom's totems"

	If(RegExMatch(Item, "i)^.*% increased Attack Speed (with|while) .*$"))
		Result := Result . "`rNever discard a Weapon. It could be the blade that strikes you in the back`r	summons hostile animated weapons"



	;##### Spawns a rogue exile",

	If(RegExMatch(Item, "i)^\+.* to All Attributes$"))
		Result := Result . "`rAny and everything`r	spawns a random rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Strength$"))
		Result := Result . "`rAxe and Maul`r	spawns a marauder rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Dexterity$"))
		Result := Result . "`rBow and arrow`r	spawns a ranger rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Intelligence$"))
		Result := Result . "`rWand and focus`r	spawns a witch rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Dexterity and Intelligence$"))
		Result := Result . "`rDagger and claw`r	spawns a shadow rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Strength and Intelligence$"))
		Result := Result . "`rSceptre and Staff`r	spawns a templar rogue exile"

	If(RegExMatch(Item, "i)^\+.* to Strength and Dexterity$"))
		Result := Result . "`rSword and Board`r	spawns a duelist rogue exile"



	;##### Spawns warbands",

	If(RegExMatch(Item, "i)^\+.*% to all Elemental Resistances$"))
		Result := Result . "`rHeart of the Conflict`r	spawns multiple warbands"

	If(RegExMatch(Item, "i)^\+.*% to Lightning Resistance$"))
		Result := Result . "`rThe Brinerot rises`r	spawns 1 group of Brinerots"

	If(RegExMatch(Item, "i)^\+.*% to Cold Resistance$"))
		Result := Result . "`rThe Mutewind rises`r	spawns 1 group of Mutewinds"

	If(RegExMatch(Item, "i)^\+.*% to Fire Resistance$"))
		Result := Result . "`rThe Redblade rises`r	spawns 1 group of Redblades"

	If(RegExMatch(Item, "i)^\+.*% to Chaos Resistance$"))
		Result := Result . "`rThe Renegades rise`r	chaos warband leader"

	If(RegExMatch(Item, "i)^Area has patches of chilled ground$"))
		Result := Result . "`rThe Mutewind trial begins in 30 seconds. It ends if you run away. Be prepared to die.`r	does what it says"

	If(RegExMatch(Item, "i)^Area has patches of burning ground$"))
		Result := Result . "`rThe Redblade trial begins in 30 seconds. It ends if you run away. Be prepared to die.`r	does what it says"

	If(RegExMatch(Item, "i)^Area has patches of shocking ground$"))
		Result := Result . "`rThe Brinerot trial begins in 30 seconds. It ends if you run away. Be prepared to die.`r	does what it says"



	;##### Spawns a tormented spirit",

	If(RegExMatch(Item, "i)^Monsters deal .*% extra Damage as Lightning$"))
		Result := Result . "`rHe craved understanding no matter the cost`r	spawns a Tormented Storm Cultist"

	If(RegExMatch(Item, "i)^\+.* to maximum Mana$"))
		Result := Result . "`rHe loved the dead. Too much.`r	spawns a Tormented Necromancer"

	If(RegExMatch(Item, "i)^.*% increased Mana Regeneration Rate$"))
		Result := Result . "`rHe stole that which he was entrusted with`r	spawns a Tormented Emblezzler"

	If(RegExMatch(Item, "i)^Monsters deal .*% extra Damage as Cold$"))
		Result := Result . "`rHe was never bothered by the cold`r	spawns a Tormented Aurora Cultist"

	If(RegExMatch(Item, "i)^\+.*% increased Cast Speed while .*$"))
		Result := Result . "`rHe was a stickler for the details`r	spawns a Tormented Forger"

	If(RegExMatch(Item, "i)^\+.*% to Fire and Cold Resistances$"))
		Result := Result . "`rHe found power in sacrifice`r	spawns a Tormented Vaal Cultist"

	If(RegExMatch(Item, "i)^\+.*% to Fire and Lightning Resistances$"))
		Result := Result . "`rHe found power in sacrifice`r	spawns a Tormented Vaal Cultist"

	If(RegExMatch(Item, "i)^\+.*% to Cold and Lightning Resistances$"))
		Result := Result . "`rHe found power in sacrifice`r	spawns a Tormented Vaal Cultist"

	If(RegExMatch(Item, "i)^Unique Boss deals .*% increased Damage$"))
		Result := Result . "`rHe spoke the truths as he saw them`r	spawns a Tormented Seditionist"

	If(RegExMatch(Item, "i)^Unique Boss has .*% increased Attack and Cast Speed$"))
		Result := Result . "`rHe spoke the truths as he saw them`r	spawns a Tormented Seditionist"

	If(RegExMatch(Item, "i)^Monsters Poison on Hit$"))
		Result := Result . "`rHe loved the thrill of killing his enemies. From far away`r	spawns a Tormented Poisoner"

	If(RegExMatch(Item, "i)^Monsters deal .*% extra Damage as Fire$"))
		Result := Result . "`rHe loved to play with fire`r	spawns a Tormented Arsonist"

	If(RegExMatch(Item, "i)^.*% increased Attack and Cast Speed$"))
		Result := Result . "`rHis strength made him arrogant`r	spawns a Tormented Thug"



	;##### Modifies your items",

	If(RegExMatch(Item, "i)^.*% increased Cast Speed$"))
		Result := Result . "`rAll rewards have their cost`r	All unequipped items are scoured and you are rewarded with alchemy/transmute orbs"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance$"))
		Result := Result . "`rLead turns to gold`r	one white item in your inventory is turned to rare"

	If(RegExMatch(Item, "i)^.*% increased Global Critical Strike Chance$"))
		Result := Result . "`rLead turns to gold`r	one white item in your inventory is turned to rare"

	If(RegExMatch(Item, "i)^.*% increased Global Critical Strike Multiplier$"))
		Result := Result . "`rPerfection`r	one random item (equipped or inventory, including flasks) gains 20% quality"

	If(RegExMatch(Item, "i)^.*% increased Light Radius$"))
		Result := Result . "`rThe light of reason still shines`r	identifies all items"

	If(RegExMatch(Item, "i)^Quality: \+20%$"))
		Result := Result . "`rWait, what was that sound?`r	random item gets a skin"

	If(RegExMatch(Item, "i)^Mirrored$"))
		Result := Result . "`rThe little things add up`r	possibly rerolls an implicit mod on one item?"



	;##### Drops currency or items",

	If(RegExMatch(Item, "i)^.*% increased Freeze Duration on Enemies$"))
		Result := Result . "`rFortify yourself`r	drops 40 Armourer's Scraps"

	If(RegExMatch(Item, "i)^.*% chance to Freeze$"))
		Result := Result . "`rFortify yourself`r	drops 40 Armourer's Scraps"

	If(RegExMatch(Item, "i)^.*% increased Ignite Duration on Enemies$"))
		Result := Result . "`rSharpen your blade`r	drops 20 Blacksmith's Whetstones"

	If(RegExMatch(Item, "i)^.*% chance to Ignite$"))
		Result := Result . "`rSharpen your blade`r	drops 20 Blacksmith's Whetstones"

	If(RegExMatch(Item, "i)^\+.* to Maximum Number of Skeletons$"))
		Result := Result . "`rSuccess lies in having the right tools`r	drops 40 Orbs of Transmutation"

	If(RegExMatch(Item, "i)^.*% Fire Damage Leeched as Life$"))
		Result := Result . "`rRoll the dice`r	drops 20 Chance Orbs"

	If(RegExMatch(Item, "i)^.*% Cold Damage Leeched as Life$"))
		Result := Result . "`rRoll the dice`r	drops 20 Chance Orbs"

	If(RegExMatch(Item, "i)^.*% Lightning Damage Leeched as Life$"))
		Result := Result . "`rRoll the dice`r	drops 20 Chance Orbs"

	If(RegExMatch(Item, "i)^Equipped Animated Guardian Drops Item on Death$"))
		Result := Result . "`rThose who will not tempt fate lack the courage of manhood`r	drops 10 Vaal Orbs"

	If(RegExMatch(Item, "i)^.*% increased Shock Duration on Enemies$"))
		Result := Result . "`rAn accurate map makes for a rewarding journey`r	drops 20x Cartographer's Chisels"

	If(RegExMatch(Item, "i)^.*% chance to Shock$"))
		Result := Result . "`rAn accurate map makes for a rewarding journey`r	drops 20x Cartographer's Chisels"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Elemental Skills$"))
		Result := Result . "`rA gift from the divine`r	drops a Divine Orb"

	If(RegExMatch(Item, "i)^.*% more Monster Life$"))
		Result := Result . "`rGood things come to those who wait`r	drops a Regal Orb after 30 seconds"

	If(RegExMatch(Item, "i)^Monsters cannot be Stunned$"))
		Result := Result . "`rGood things come to those who wait`r	drops a Regal Orb after 30 seconds"

	If(RegExMatch(Item, "i)^Area is inhabited by 2 additional Rogue Exiles$"))
		Result := Result . "`rBetter yourself`r	SLOWLY drops lots of whetstones, scraps, baubles, chisels and GCPs"

	If(RegExMatch(Item, "i)^\+.* Energy Shield gained for each Enemy hit by your Attacks$"))
		Result := Result . "`rMore than the paper its printed on`r	drops a Divination Card"

	If(RegExMatch(Item, "i)^.*% increased Energy Shield Recharge Rate$"))
		Result := Result . "`rMore than the paper its printed on`r	drops a Divination Card"

	If(RegExMatch(Item, "i)^.*% more Rare Monsters$"))
		Result := Result . "`rNo power but what can you make of them`r	drops 5 white jewels on the ground"

	If(RegExMatch(Item, "i)^Rare Monsters each have a Nemesis Mod$"))
		Result := Result . "`rNo power but what can you make of them`r	drops 5 white jewels on the ground"

	If(RegExMatch(Item, "i)^.*% increased Rarity of Items found$"))
		Result := Result . "`rEven the wisest are given menial chores`r	fills inventory with scroll fragments"

	If(RegExMatch(Item, "i)^.*% increased Spell Damage while .*$"))
		Result := Result . "`rThe riches you sought were all around you`r	replaces all items on the ground with their vendor price"



	;##### Random monster drops extra items",

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with One Handed Melee Weapons$"))
		Result := Result . "`rKeeper of the knives`r	one mob drops 5 rare daggers"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance for Spells$"))
		If not RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rKeeper of the stave`r	one mob drops 5 rare staves"

	If(RegExMatch(Item, "i)^.*% increased Melee Critical Strike Multiplier$"))
		Result := Result . "`rKeeper of the hammer`r	one mob drops 5 rare maces"

	If(RegExMatch(Item, "i)^.*% increased Melee Critical Strike Chance$"))
		Result := Result . "`rKeeper of the maul`r	one mob drops 5 rare two-handed maces"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance for Spells$"))
		If RegExMatch(Type, "i)(jewel)")
		Result := Result . "`rKeeper of the wand`r	one mob drops 5 rare wands"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with One Handed Melee Weapons$"))
		Result := Result . "`rKeeper of the claw`r	one mob drops 5 rare claws"

	If(RegExMatch(Item, "i)^.*% increased Cast Speed with Fire Skills$"))
		Result := Result . "`rKeeper of the trinkets`r	one mob drops 5 rare amulets"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Fire Skills$"))
		Result := Result . "`rKeeper of the trinkets`r	one mob drops 5 rare amulets"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Fire Skills$"))
		Result := Result . "`rKeeper of the trinkets`r	one mob drops 5 rare amulets"

	If(RegExMatch(Item, "i)^.*% increased Projectile Damage$"))
		Result := Result . "`rKeeper of the jewels`r	random mob drops 5 rare jewels"

	If(RegExMatch(Item, "i)^.*% increased Cast Speed with Cold Skills$"))
		Result := Result . "`rKeeper of the ring`r	random mob drops 5 rare rings"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Cold Skills$"))
		Result := Result . "`rKeeper of the ring`r	random mob drops 5 rare rings"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Cold Skills$"))
		Result := Result . "`rKeeper of the ring`r	random mob drops 5 rare rings"

	If(RegExMatch(Item, "i)^.*% increased Cast Speed with Lightning Skills$"))
		Result := Result . "`rKeeper of the buckle`r	random mob drops 5 rare belts"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Chance with Lightning Skills$"))
		Result := Result . "`rKeeper of the buckle`r	random mob drops 5 rare belts"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Lightning Skills$"))
		Result := Result . "`rKeeper of the buckle`r	random mob drops 5 rare belts"

	If(RegExMatch(Item, "i)^.*% increased Melee Physical Damage while holding a Shield$"))
		Result := Result . "`rKeeper of the shield`r	random mob drops 5 rare shields"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier with Two Handed Melee Weapons$"))
		Result := Result . "`rKeeper of the bow`r	random mob drops 5 rare bows"

	If(RegExMatch(Item, "i)^.*% increased Weapon Critical Strike Chance while Dual Wielding$"))
		Result := Result . "`rKeeper of the blades`r	random mob drops 5 rare swords"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier while Dual Wielding$"))
		Result := Result . "`rKeeper of the swords`r	random mob drops 5 rare two-handed swords"

	If(RegExMatch(Item, "i)^.*% increased Critical Strike Multiplier for Spells$"))
		Result := Result . "`rKeeper of the sceptre`r	random mob drops 5 rare sceptres"

	If(RegExMatch(Item, "i)^.*% increased Trap Damage$"))
		Result := Result . "`rKeeper of the hoard`r	random mob drops 10 rare items"

	If(RegExMatch(Item, "i)^.*% increased Trap Throwing Speed$"))
		Result := Result . "`rKeeper of the hoard`r	random mob drops 10 rare items"

	If(RegExMatch(Item, "i)^.*% chance to Knock Enemies Back on hit$"))
		Result := Result . "`rKeeper of wisdom`r	random mob drops lots of wisdom scrolls"

	If(RegExMatch(Item, "i)^.*% increased Totem Damage$"))
		Result := Result . "`rKeeper of wealth`r	random mob drops a large amount of currency"

	If(RegExMatch(Item, "i)^Totems gain \+.*% to all Elemental Resistances$"))
		Result := Result . "`rKeeper of wealth`r	random mob drops a large amount of currency"

	If(RegExMatch(Item, "i)^.*% increased Mine Laying Speed$"))
		Result := Result . "`rSeek the Apex`r	mobs have a chance to drop sacrifice fragments"

	If(RegExMatch(Item, "i)^.*% increased Mine Damage$"))
		Result := Result . "`rSeek the Apex`r	mobs have a chance to drop sacrifice fragments"

	If(RegExMatch(Item, "i)^Players are cursed with Enfeeble$"))
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"

	If(RegExMatch(Item, "i)^Players are cursed with Temporal Chains$"))
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"

	If(RegExMatch(Item, "i)^Players are cursed with Elemental Weakness$"))
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"

	If(RegExMatch(Item, "i)^Players are cursed with Vulnerability$"))
		Result := Result . "`rAn unlikely guard for such valuable treasure`r	random monster drops a unique item"

	If(RegExMatch(Item, "i)^Monsters reflect .*% of Elemental Damage$"))
		Result := Result . "`rRewards are seized only by those quick enough to find them`r	rare mobs killed within the next ~20 seconds drop a unique"

	If(RegExMatch(Item, "i)^Monsters reflect .*% of Physical Damage$"))
		Result := Result . "`rRewards are seized only by those quick enough to find them`r	rare mobs killed within the next ~20 seconds drop a unique"



	;##### Adds a map mod to the area (includes IIQ/IIR of the corresponding mod)",

	If(RegExMatch(Item, "i)^.*% increased Energy Shield$"))
		Result := Result . "`rBrothers in arms`r	Magic Monster Packs each have a Bloodline Mod"

	If(RegExMatch(Item, "i)^.*% increased maximum Energy Shield$"))
		Result := Result . "`rBrothers in arms`r	Magic Monster Packs each have a Bloodline Mod"

	If(RegExMatch(Item, "i)^\+.* to Armour$"))
		Result := Result . "`rYour nemeses hunt you`r	Rare Monsters each have a Nemesis Mod"

	If(RegExMatch(Item, "i)^.*% increased Chaos Damage$"))
		Result := Result . "`rFeel the corruption in your veins`r	Monsters Poison on Hit"

	If(RegExMatch(Item, "i)^Adds .*-.* Physical Damage$"))
		Result := Result . "`rKill one head and more will rise to take its place`r	Monsters Fracture"

	If(RegExMatch(Item, "i)^Adds .*-.* Physical Damage to Attacks$"))
		Result := Result . "`rKill one head and more will rise to take its place`r	Monsters Fracture"

	If(RegExMatch(Item, "i)^Area has increased monster variety$"))
		Result := Result . "`rPyromancer's bane`r	+80% Monster Fire Resistance"

	If(RegExMatch(Item, "i)^Area is inhabited by Undead$"))
		Result := Result . "`rAuromancer's bane`r	+80% Monster Cold Resistance"

	If(RegExMatch(Item, "i)^.*% increased Cold Damage$"))
		Result := Result . "`rNo adversary in nature is more deadly than the cold`r	Monsters deal 90-110% extra Damage as Cold"

	If(RegExMatch(Item, "i)^.*% increased Fire Damage$"))
		Result := Result . "`rNo force of nature holds more fear than fire`r	Monsters deal 90-110% extra Damage as Fire"

	If(RegExMatch(Item, "i)^.*% increased Lightning Damage$"))
		Result := Result . "`rNo fury in nature is greater than that of lightning`r	Monsters deal 90-110% extra Damage as Lightning"

	If(RegExMatch(Item, "i)^\+.* to Accuracy Rating$"))
		Result := Result . "`rNothing is more intimidating on the battlefield than a wall of arrows`r	Monsters fire 4 additional Projectiles"

	If(RegExMatch(Item, "i)^.*% increased Projectile Speed$"))
		Result := Result . "`rSome challenges are best faced alone`r	Monsters' skills Chain 2 additional times"

	If(RegExMatch(Item, "i)^\+.* Life gained on Kill$"))
		Result := Result . "`rTough as nails`r	40-49% more Monster Life"

	If(RegExMatch(Item, "i)^.*% increased Armour$"))
		Result := Result . "`rTwo worls collide`r	Slaying Enemies close together can attract monsters from Beyond"

	If(RegExMatch(Item, "i)^Area is inhabited by Skeletons$"))
		Result := Result . "`rWhipped into a frenzy`r	Monsters gain 3 Frenzy Charges every 20 seconds"

	If(RegExMatch(Item, "i)^.*% increased maximum Mana$"))
		Result := Result . "`rYour natural vitality deserts you`r	Players Recover Life, Mana and Energy Shield 60% slower"

	If(RegExMatch(Item, "i)^.*% reduced Mana Cost of Skills$"))
		Result := Result . "`rYour protections fail you`r	-(12-16)% maximum Player Resistances"

	If(RegExMatch(Item, "i)^\+.* Life gained for each Enemy hit by Attacks$"))
		Result := Result . "`rYour anger rises`r	Kill streaks award you with Rampage bonuses"

	If(RegExMatch(Item, "i)^Area is inhabited by Goatmen$"))
		Result := Result . "`rSize often matters`r	Monsters have 40% increased Area of Effect"

	If(RegExMatch(Item, "i)^Area is inhabited by Demons$"))
		Result := Result . "`rYour enemies have all the luck`r	Monsters have 360-400% increased Critical Strike Chance, Monsters have 35% increased Critical Strike Multiplier"

	If(RegExMatch(Item, "i)^Area is inhabited by ranged monsters$"))
		Result := Result . "`rCareful now`r	25-30% increased Monster Damage"

	If(RegExMatch(Item, "i)^Area is inhabited by Animals$"))
		Result := Result . "`rUnflinching`r	25-30% more Monster Life, Monsters cannot be Stunned"



	;##### Misc area modifiers",

	If(RegExMatch(Item, "i)^.*% increased maximum Life$"))
		Result := Result . "`rLeave no stone unturned`r	check all clickables in the area"

	If(RegExMatch(Item, "i)^Unique Boss has .*% increased Life$"))
		Result := Result . "`rDeliver the killing blow`r	every enemy's health is reduced to 1"

	If(RegExMatch(Item, "i)^Unique Boss has .*% increased Area of Effect$"))
		Result := Result . "`rDeliver the killing blow`r	every enemy's health is reduced to 1"

	If(RegExMatch(Item, "i)^.*% increased Elemental Damage with Weapons$"))
		Result := Result . "`rAn armoury of exquisite craftsmanship`r	all weapons will drop with 20% quality"

	If(RegExMatch(Item, "i)^Minions deal .*% increased Damage$"))
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"

	If(RegExMatch(Item, "i)^Minions have .*% Chance to Block$"))
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"

	If(RegExMatch(Item, "i)^Minions have .*% increased maximum Life$"))
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"

	If(RegExMatch(Item, "i)^Minions have \+.*% to all Elemental Resistances$"))
		Result := Result . "`rFear will root even the mighty in place`r	all enemies are immobilized"

	If(RegExMatch(Item, "i)^-.*% maximum Player Resistances$"))
		Result := Result . "`rYou always were a fast learner`r	100% increased experience gained"

	If(RegExMatch(Item, "i)^Slaying Enemies close together can attract monsters from Beyond$"))
		Result := Result . "`rThe touch of the damned`r	all enemies affected by a random spirit's touch (all by the same one)"

	If(RegExMatch(Item, "i)^.*% more Magic Monsters$"))
		Result := Result . "`rMutiny in the ranks`r	some of the monsters become allied with you"

	If(RegExMatch(Item, "i)^Magic Monster Packs each have a Bloodline Mod$"))
		Result := Result . "`rMutiny in the ranks`r	some of the monsters become allied with you"

	If(RegExMatch(Item, "i)^\+.* Mana gained for each Enemy hit by your Attacks$"))
		Result := Result . "`rGreust would not approve`r	area turns dark (similar to act 2 event)"



	;##### Opens 6 portals to another map",

	If(RegExMatch(Item, "i)^Corrupted$"))
		Result := Result . "`rThe influence of the Vaal continues long after their civilization has crumbled`r	opens portals to a vaal side area"

	If(RegExMatch(Item, "i)^\+.*% to Quality of Socketed Support Gems$"))
		Result := Result . "`rA true test of nerves`r	opens portals to Coward's Trial"

	If(RegExMatch(Item, "i)^Causes Bleeding On Hit$"))
		Result := Result . "`rThe riches of a queen`r	opens portals to Vaults of Atziri"

	If(RegExMatch(Item, "i)^Area is inhabited by 1 additional Invasion Boss$"))
		Result := Result . "`rA soft melody plays`r	opens portals to Acton's Nightmare"

	If(RegExMatch(Item, "i)^Hits can't be Evaded$"))
		Result := Result . "`rTravel back in time`r	opens portals to Maelström of Chaos"

	If(RegExMatch(Item, "i)^-.* to Mana Cost of Skills$"))
		Result := Result . "`rDon't tarry`r	opens portals to Oba's Cursed Trove"

	If(RegExMatch(Item, "i)^\+1 to Level of Support Gems in this item$"))
		Result := Result . "`rA sacred place in the shadows`r	opens portals to Whakawairua Tuahu"

	If(RegExMatch(Item, "i)^.*% increased Life Leeched per second$"))
		Result := Result . "`rShiver me timbers`r	opens portals to Mao Kun"



	;##### Fishing",



	;##### Misc effects",

	If(RegExMatch(Item, "i)^Monsters gain .* Endurance Charge(s)? every 20 seconds$"))
		Result := Result . "`rNot for sale`r	clears all your vendors"

	If(RegExMatch(Item, "i)^Monsters gain .* Power Charge(s)? every 20 seconds$"))
		Result := Result . "`rNot for sale`r	clears all your vendors"

	If(RegExMatch(Item, "i)^Monsters gain .* Frenzy Charge(s)? every 20 seconds$"))
		Result := Result . "`rNot for sale`r	clears all your vendors"

	If(RegExMatch(Item, "i)^.* Life Regenerated per second$"))
		Result := Result . "`rDrink deeply`r	refills flasks"

	If(RegExMatch(Item, "i)^.*% increased Flask Charges gained$"))
		Result := Result . "`rPower without limit`r	no mana costs"

	If(RegExMatch(Item, "i)^.*% reduced Flask Charges used$"))
		Result := Result . "`rPower without limit`r	no mana costs"

	If(RegExMatch(Item, "i)^.*% increased Area Damage$"))
		Result := Result . "`rPower can be found in unexpected places`r	sockets a new random jewel in your passive tree (even in unallocated nodes)"

	If(RegExMatch(Item, "i)^.*% increased Stun Duration on Enemies$"))
		Result := Result . "`rIf you want a job done well, there is nobody better than yourself`r	creates a (friendly) clone of yourself"

	If(RegExMatch(Item, "i)^.*% reduced Attribute Requirements$"))
		Result := Result . "`rPerhaps next time`r	the item you sacrificed appears in the next shrine"

	If(RegExMatch(Item, "i)^.*% increased Movement Speed$"))
		Result := Result . "`rYou become one with your offering`r	gain sacrificed item stats"

	If(RegExMatch(Item, "i)^Reflects .* Physical Damage to Melee Attackers$"))
		Result := Result . "`rThe hunted becomes the hunter`r	headhunter effect (get powers from slain enemies)"

	If(RegExMatch(Item, "i)^.*% of Physical Attack Damage Leeched as Mana$"))
		Result := Result . "`rJourneys await you`r	puts a map into the map device in eternal laboratory"

	If(RegExMatch(Item, "i)^\+.* to Level of Socketed Gems$"))
		Result := Result . "`rThe reward for a job well done is often another job`r	resets all dailies"

	If(RegExMatch(Item, "i)^Monsters fire .* additional Projectiles$"))
		Result := Result . "`rA worthy ally`r	summons an allied Grandmaster"

	If(RegExMatch(Item, "i)^Monsters' skills Chain 2 additional times$"))
		Result := Result . "`rA worthy ally`r	summons an allied Grandmaster"

	If(RegExMatch(Item, "i)^Monsters have .*% increased Critical Strike Chance$"))
		Result := Result . "`rYour sustenance is depleted`r	empties all flasks"

	If(RegExMatch(Item, "i)^Monsters have .*% increased Critical Strike Multiplier$"))
		Result := Result . "`rYour sustenance is depleted`r	empties all flasks"

	If(RegExMatch(Item, "i)^Monsters have .*% chance to Avoid Elemental Status Ailments$"))
		Result := Result . "`rI am Twinned`r	spawns another Darkshrine"

	If(RegExMatch(Item, "i)^Monsters are immune to Elemental Status Ailments$"))
		Result := Result . "`rI am Twinned`r	spawns another Darkshrine"

	If(RegExMatch(Item, "i)^.*% increased Spell Damage$"))
		Result := Result . "`rAny effect`r	a random darkshrine effect"

	If(RegExMatch(Item, "i)^Unidentified$"))
		Result := Result . "`rUnidentified`r	same effect as if the item is identified first"



	;##### Unknown effects",

	If(RegExMatch(Item, "i)^.*% increased Flask effect duration$"))
		Result := Result . "`rAtziri's power fills you`r	unknown (possibly fills Vaal skills?)"

}

GetStartingPos(Item)
{
	compt := 1
	IfInString Item, Corrupted
		compt := compt+1
	IfInString Item, Mirrored
		compt := compt+1
	IfInString Item, Map
		compt := compt+1
	IfInString Item, Jewel
		compt := compt+1
	while compt>0
	{
		StringGetPos Pos, Item, --------, R
		StringLeft Item, Item, Pos
		compt := compt-1
	}
	return Pos
}

Split(Item, n)
{
	If(RegExMatch(Item, "^--------"))
	{
		IfInString Item, Corrupted
			Result := Result . "`ropens portals to a vaal side area"
		return
	}
	IfInString Item, `r 
	{
		StringGetPos Pos, Item, `r
		StringLeft Line, Item, Pos
        If n=1
            Parse_item(Line)
        If n=2
            ParseAffix(Line)
		StringTrimLeft Item, Item, Pos+2
		Split(Item, n)
	}
}

GetType(Item){
StringGetPos Pos, Item, `r
StringTrimLeft Item, Item, Pos+2
StringGetPos Pos, Item, `r
StringTrimLeft Item, Item, Pos+2
StringGetPos Pos, Item, `r
StringLeft Item, Item, Pos
Type := Item
}

^x::
Send {CONTROL DOWN}c{CONTROL UP}
MouseGetPos X, Y
Item := GetClipboardContents()
Global Type :=
GetType(Item)
Global Result := 
Pos := GetStartingPos(Item)
StringTrimLeft Item, Item, Pos+10
StringTrimRight Item, Item, 2
Split(Item, 1)
StringTrimLeft Result, Result, 1
Tooltip %Result%, X, Y
SetTimer, ToolTipTimer, 100
return

^w::
MouseGetPos X, Y
Item := GetClipboardContents()
Global Result := 
Pos := GetStartingPos(Item)
StringTrimLeft Item, Item, Pos+10
StringTrimRight Item, Item, 2
Split(Item, 2)
StringTrimLeft Result, Result, 1
Tooltip %Result%, X, Y
SetTimer, ToolTipTimer, 100
return

ToolTipTimer:
    MouseMoveThreshold := 40
    MouseGetPos, CurrX, CurrY
    MouseMoved := (CurrX - X)**2 + (CurrY - Y)**2 > MouseMoveThreshold**2
    If (MouseMoved)
    {
        SetTimer, ToolTipTimer, Off
        ToolTip
    }
return