# BG3_ArgentBloodline
This is a mod for Baldur's Gate 3 with the goal of adding a force/abjuration-based subclass to the sorcerer class. The initial template was created through the Polymath software released by ImADoctorNotA on Nexusmods.

## Subclass Abilities:
* **Starting Spells (Lvl 1)**
  - You know the Magic Missile spell as well as two cantrip versions of the spell. These do not count against your maximum spells known
  - Magic Missile: Weakened
	    - 1d4+CharismaMod Force damage
		- You gain a number of darts based on your character level
			- 1 dart from level 1-4
			- 2 darts from level 5-9
			- 3 darts from level 10+
  -	Magic Missile: Unstable
		- 1d4+CharismaMod Force damage
		- Unlike the normal spell, you must make a spell attack roll against each target
		- Can only be used once per long rest
		- You fire a number of darts based on your character level
			- 3 darts from level 1-2
			- 4 darts from level 3-4
			- 5 darts from level 5-6
			- 6 darts from level 7-8
			- 7 darts from level 9-10
			- 8 darts from level 11-12
			
* **Energized (Lvl 1)**
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
  	-	While in this state, damaging spells with the force damage type gain a damage bonus equal to your Charisma modifier
  	-	(Alt. Version): While in this state, damaging spells with the force damage type gain +X damage (X scales with sorcerer level)
  		-	+2 damage at level 6
  	 	-	+3 damage at level 9	

* **Energy Admix (Lvl 6)**
	- Toggle
	- Converts damage spell's damage type to force damage
	- Currently does not affect damage-over-time spells nor causes spells to benefit from Forceful Surge

* **Ethereal Overlord (Lvl 12)**
	- Adds the following abilities/bonuses while Forceful Surge is active
 	- Gain resistance to all damage types
 	- Once per turn you may use the Ethereal Jaunt ability as a bonus action to teleport 22m (60ft)

## TODO:
* Fix minor bugs with Energy Admix (hard given how little I know about SE)

## Bugs:
* Implement a fix for Energy Admix + Forceful Surge bug where FS's damage bonus doesn't apply if EA is used
* Implement a fix for Energy Admix bug where it doesn't apply to damage over time spells (EX: Wall of Fire, Phantasmal Force, Blade Cloud, etc)

## Credits
* deggertsen who create the initial template for Forceful Surge and showed me the BG3 Search Engine which greatly accelerated developement for this mod
* darkcharl who made Metamagic Extended: Transmute Spell which was modified for Energy Admix
* OblivionKnightMage who made Magic Missile Madness which was modified for Magic Missile variant cantrips
* Gycicada and Baaleos who made the Magus Class and the Shadow Sorcerer mods respectively which I often referenced when making this mod for formatting
* ImADoctorNotA who made Polymath which was used to create the base file structure for this mod