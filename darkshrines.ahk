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