# BG3_ArgentBloodline
This is a mod for Baldur's Gate 3 with the goal of adding a force/abjuration-based subclass to the sorcerer class. The initial template was created through the Polymath software released by ImADoctorNotA on Nexusmods.

## Subclass Abilities:

* **Energized (Lvl 1) - DONE**
  - When not wearing armor your AC is 13+Dex
 * **Amped Shield (Lvl 1) - DONE**
  	- Proficiency/Short Rest
   		- Currently set up with a separate Action Resource, this needs to be changed if possible
  	- You may cast the Shield spell without expending a spell slot

* **Forceful Surge (Lvl 6) - BUGGED**
  	-	Bonus action
  	-	X uses per Long Rest (X scales with sorcerer level)
  		-	3 uses at level 6
  	 	- 	4 uses at level 9
  	  	- 	5 uses at level 12	 
  	-	While in this state, damaging spells with the force damage type gain +X damage (X scales with sorcerer level)
  		-	+2 damage at level 6
  	 	-	+3 damage at level 9	

* **Energy Admix (Lvl 6) - DONE**
	- Toggle
	- Converts damage spell's damage type to force damage

* **Ethereal Overlord (Lvl 12) - BUGGED?**
	- Adds the following abilities/bonuses while Forceful Surge is active
 	- Gain resistance to all damage types
 	- Once per turn you may use the Ethereal Jaunt ability as a bonus action to teleport 22m (60ft)

## TODO:
* ~~Create StatusGroups for FORCEFUL_SURGE and ETHEREAL_OVERLORD~~
* ~~Find a way to add Ethereal Step (Frenzied Strike) to Ethereal Overlord~~
* ~~Readd Amped Shield from V3 files~~
* ~~Create Energy Admix~~
* ~~Create Levelmaps for: Forge Surge Points, Amped Shield Points, Forceful Surge Damage~~
* ~~Edit Name and Desc in ArgentBloodlineV4.xml~~
* ~~Edit Progression.lsx (be sure to set uses for surge points and shield points)~~
* ~~Edit SpellLists.lsx~~
* ~~See if FORCEFUL_SURGE needs to be removed when ETHEREAL_OVERLORD is unlocked. Check Barbarian progression table https://bg3.norbyte.dev/search?q=RageUnlock#result-0e8daddc6f779cb637cee919674191db310e0cc9~~
* ~~May need to create a FORCEFUL_SURGE_unlock and ETHEREAL_OVERLORD_unlock~~
* Testing

## Bugs:
* ~~FIXED - Naked~~
* ~~FIXED - Missing AS, FS, and EO class features. Add start_XXXX actions for FS + EO.~~
* ~~FIXED - EO_end given at level 1~~
* ~~FIXED - Energy Admix is present but doesn't convert the damage type. Check the function in the khd scripts file~~
* ~~FIXED - Icon incorrect (is a skull so maybe the default)~~
* ~~FIXED - Modify amped shield progression so it only gives 1 instead of X~~
* ~~FIXED - Modify forceful surge progression so it only gives 1 instead of X~~
* FS doesn't boost force damage

## Notes: 
* All of these should be theoretically possible within the game as other examples of these abilities exist, mostly from rage and frenzy
* Rage adds a scaling damage bonus to melee attacks, Lvl 6 Draconic Bloodline's Elemental Affinity adds Cha to spells of the same type. Just need to find a way to combine them
* Frenzy replaced Rage once you take the subclass at 3rd level, the same should be possible with F.S. and E.O.
* The damage resistance just needs to be moved from F.S. to E.O.
* Frenzy adds the extra attack action as a bonus action while raging, this should also be possible to add Ethereal Jaunt (which is coded already as Target_EtherealJaunt) instead
* How to add Ethereal Step (It'll auto reveal when E.O. is up): https://bg3.norbyte.dev/search?q=Berserker#result-fdc912b19f9cbc78abe346560c438f5af76f1067 . TLDR: Add it to SpellLists.lsx

## Credits
* darkcharl who made Metamagic Extended: Transmute Spell which was modified for Energy Admix
* ImADoctorNotA who made Polymath which was used to create the base file structure for this mod
* deggertsen who create the initial template for Forceful Surge and showed me the BG3 Search Engine which greatly accelerated developement for this mod
