# BG3_ArgentBloodline
This is a mod for Baldur's Gate 3 with the goal of adding a force/abjuration-based subclass to the sorcerer class. The initial template was created through the Polymath software released by ImADoctorNotA on Nexusmods.

## Subclass Abilities:

* **Energized (Lvl 1) - DONE**
  - When not wearing armor your AC is 13+Dex
 * **Amped Shield (Lvl 1)**
  	- Proficiency/Short Rest
   		- Currently set up with a separate Action Resource, this needs to be changed if possible
  	- You may cast the Shield spell without expending a spell slot

* **Forceful Surge (Lvl 6)**
  	-	Bonus action
  	-	X uses per Long Rest (X scales with sorcerer level)
  		-	3 uses at level 6
  	 	- 	4 uses at level 9
  	  	- 	5 uses at level 12	 
  	-	While in this state, damaging spells with the force damage type gain +X damage (X scales with sorcerer level)
  		-	+2 damage at level 6
  	 	-	+3 damage at level 9	

* **Energy Admix (Lvl 6)**
	- Toggle
	- Converts damage spell's damage type to force damage

* **Ethereal Overlord (Lvl 12)**
	- Adds the following abilities/bonuses while Forceful Surge is active
 	- Gain resistance to all damage types
 	- Once per turn you may use the Ethereal Jaunt ability as a bonus action to teleport 22m (60ft)

## TODO:
* Create StatusGroups for FORCEFUL_SURGE and ETHEREAL_OVERLORD
* Find a way to add Ethereal Step (Frenzied Strike) to Ethereal Overlord
* Readd Amped Shield from V3 files
* Create Energy Admix
* Create Levelmaps for: Forge Surge Points, Amped Shield Points, Forceful Surge Damage
* Edit Name and Desc in ArgentBloodlineV4.xml
* Edit Progression.lsx
* Edit SpellLists.lsx
* Add Transmute Spell (Force) Metamagic / passive for 6th level
* Testing


## Notes: 
* All of these should be theoretically possible within the game as other examples of these abilities exist, mostly from rage and frenzy
* Rage adds a scaling damage bonus to melee attacks, Lvl 6 Draconic Bloodline's Elemental Affinity adds Cha to spells of the same type. Just need to find a way to combine them
* Frenzy replaced Rage once you take the subclass at 3rd level, the same should be possible with F.S. and E.O.
* The damage resistance just needs to be moved from F.S. to E.O.
* Frenzy adds the extra attack action as a bonus action while raging, this should also be possible to add Ethereal Jaunt (which is coded already as Target_EtherealJaunt) instead
