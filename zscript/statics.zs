class SwastikaFlag1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Health 1;
		Radius 32;	// 4
		Height 128;	// 4
		Mass 9999;
		+FLATSPRITE
		+NOBLOOD
		+NOGRAVITY
		+SHOOTABLE
		+SPAWNCEILING
		+DONTFALL
	}
		
	States
	{
		Spawn:
			FLAG A -1;
			Stop;
		Death:
			TNT1 A 0
			{
				A_SpawnDebris("FloatingAsh", 0, random(0.01, 0.04), random(0.01, 0.04));	// random(0.5, 2.0)
			}
			FLAG B -1;
			Stop;
		Death.Flame:
			TNT1 A 0 A_SpawnDebris("FloatingAsh", 0, random(0.01, 0.04), random(0.01, 0.04));
			FBRN ABCDEFGHIJKLM 3 BRIGHT;
			FLAG B -1;
			Stop;
	}
}

class SwastikaFlag2 : SwastikaFlag1
{
	Default
	{
		Radius 20;
		Height 4;
	}

	States
	{
		Spawn:
			FLAG C -1;
			Stop;
	}
}

class Vent1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Health 1;
		Radius 24;
		Height 64;
		Scale 1.0;
		Mass 999999;
		DeathSound "scenaric/vent/break";
		+SOLID
		+SHOOTABLE
		+FLATSPRITE
		+NOBLOOD
	}
		
	States
	{
		Spawn:
			VENT A -1;
			Stop;
		Death:
			VENT B -1
			{
				A_NoBlocking();
				A_Scream();
			}
			Stop;
	}
}

class GlassWindow : Vent1
{
	Default
	{
		Radius 32;
		Height 64;
		Scale 1.0;
	}
	
	States
	{
		Spawn:
			GLAS A -1;
			Stop;
		Death:
			TNT1 A 0 A_Scream();
			GLAS BC 3;
			GLAS D 3
			{
				A_NoBlocking();
				A_SpawnDebris("BrokenGlass", false, random(0.8, 1.4), random(0.8, 1.4));
				A_SpawnDebris("BrokenGlass", false, random(1.0, 1.6), random(1.0, 1.6));
			}
			Stop;
	}
}

class SuitOfArmour : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 32;
		Height 104;
		Scale 1.8;
		+SOLID
	}
		
	States
	{
		Spawn:
			SUIT A -1;
			Stop;
	}
}

class RailTrack1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 64;
		Height 1;
		Scale 2.0;
		+FLATSPRITE
		+NOGRAVITY
		-SOLID;
	}
		
	States
	{
		Spawn:
			TRAK A -1;
			Stop;
	}
}

class EagleDecal1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 4;
		Height 4;
		+FLATSPRITE
		+NOGRAVITY
	}
		
	States
	{
		Spawn:
			EAGL A -1;
			Stop;
	}
}

class EagleDecal_Black : EagleDecal1
{
	States
	{
		Spawn:
			EAGL D -1;
			Stop;
	}
}

class EagleDecal_Black2 : EagleDecal_Black
{
	States
	{
		Spawn:
			EAGL E -1;
			Stop;
	}
}

class Achtung2 : EagleDecal1
{
	States
	{
		Spawn:
			ACHT B -1;
			Stop;
	}
}

class SteelBox : Achtung2
{
	States
	{
		Spawn:
			SBOX A -1;
			Stop;
	}
}

class EagleFlag1 : SwastikaFlag1
{
	Default
	{
		//$Category Decoration / Objects
		Mass 9999;
	}
		
	States
	{
		Spawn:
			EAGL B -1;
			Stop;
		Death:
			TNT1 A 0
			{
				A_SpawnDebris("FloatingAsh", 0, random(0.01, 0.04), random(0.01, 0.04));	// random(0.5, 2.0)
			}
			EAGL C -1;
			Stop;
		Death.Flame:
			TNT1 A 0
			{
				A_SpawnDebris("FloatingAsh", 0, random(0.01, 0.04), random(0.01, 0.04));	// random(0.5, 2.0)
			}
			EAGL C -1;
			Stop;
	}
}

class Bones1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 34;
		Height 14;
		Scale 1.28;
	}
		
	States
	{
		Spawn:
			BONE A -1;
			Stop;
	}
}

class Bones2 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 34;
		Height 14;
		Scale 1.28;
	}
		
	States
	{
		Spawn:
			BONE B -1;
			Stop;
	}
}

class HangingSkeleton : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 18;
		Height 82;
		Scale 1.28;
		+SOLID
		+NOGRAVITY
		+SPAWNCEILING
	}
		
	States
	{
		Spawn:
			SKEL A -1;
			Stop;
	}
}

class LayingSkeleton : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 21;
		Height 12;
		Scale 1.28;
	}
		
	States
	{
		Spawn:
			SKEL B -1;
			Stop;
	}
}

class FloorLamp1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 18;
		Height 56;
		Scale 1.33;
		+SOLID
	}
		
	States
	{
		Spawn:
			LAM2 A -1;
			Stop;
	}
}

class BrokenBarrel : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 20;
		Height 48;
		Scale 1.36;
		+SOLID
	}
		
	States
	{
		Spawn:
			BARL A -1;
			Stop;
	}
}

class Barrel1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 20;
		Height 48;
		Scale 1.36;
		+SOLID
	}
		
	States
	{
		Spawn:
			BARL B -1;
			Stop;
	}
}

class Barrel2 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 32;
		Height 48;
		Scale 1.36;
		+SOLID
	}
		
	States
	{
		Spawn:
			BARL C -1;
			Stop;
	}
}

class KitchenUtensils : Actor
{
	Default
	{
		Radius 28;
		Height 25;
		Scale 1.2;
		+NOGRAVITY
		+SPAWNCEILING
	}
	
	States
	{
		Spawn:
			UTEN A -1;
			Stop;
	}
}

class KitchenUtensils2 : Actor
{
	Default
	{
		Radius 32;
		Height 30;
		Scale 1.2;
		+NOGRAVITY
		+SPAWNCEILING
	}
	
	States
	{
		Spawn:
			UTEN B -1;
			Stop;
	}
}

class Stove1 : Actor
{
	Default
	{
		Radius 36;
		Height 112;
		Scale 1.6;
		+SOLID
	}
	
	States
	{
		Spawn:
			STOV ABCB 2;
			Loop;
	}
}

class PotPlant : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 24;
		Height 88;
		Scale 1.76;
		+SOLID
	}
	
	States
	{
		Spawn:
			PLN3 A -1;
			Stop;
	}
}

class PotPlant2 : PotPlant
{
	States
	{
		Spawn:
			PLN2 A -1;
			Stop;
	}
}

class TableAndChair1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 24;
		Height 36;
		Scale 1.2;
		+SOLID
	}
	
	States
	{
		Spawn:
			TAB2 A -1;
			Stop;
	}
}

class Chair1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 21;
		Height 50;
		Scale 1.6;
		+SOLID
		+PUSHABLE
	}
	
	States
	{
		Spawn:
			POL1 A -1;
			Stop;
	}
}

class SwingingCage1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 20;
		Height 144;
		Scale 1.2;
		+SOLID
		+NOGRAVITY
		+SPAWNCEILING
	}

	States
	{
		Spawn:
			CAGE A 8;
			CAGE BCDEFGH 3;
			CAGE I 8;
			CAGE HGFEDCB 3;
			Loop;
	}
}

class SwingingCage2 : SwingingCage1
{
	States
	{
		Spawn:
			CAGE A 10;
			CAGE BCDEFGH 5;
			CAGE I 10;
			CAGE HGFEDCB 5;
			Loop;
	}
}

class MechProp : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 48;
		Height 96;
		Scale 1.75;
		+SOLID
	}
	
	States
	{
		Spawn:
			MECH Z -1;
			Stop;
	}
}

class SpearBeam : Actor
{
	Default
	{
		Radius 32;
		Height 512;
		-SOLID;
	}
	
	States
	{
		Spawn:
			BEAM A -1;
			Stop;
	}
}

class Achtung : Actor
{
	Default
	{
		Radius 0;
		Height 0;
		-SOLID;
		+NOGRAVITY;
		+FLATSPRITE;
	}
	
	States
	{
		Spawn:
			ACHT A -1;
			Stop;
	}
}

class CompScreen1 : Achtung2
{
	States
	{
		Spawn:
			COMP A -1;
			Stop;
	}
}

class SwastikaLight1 : Achtung
{	
	States
	{
		Spawn:
			SWAS A -1;
			Stop;
	}
}

class OSAEagle : Achtung
{
	States
	{
		Spawn:
			OSAH A -1;
			Stop;
	}
}

class WinterTree1 : Actor
{
	Default
	{
		Scale 1.5;
		Radius 50;
		Height 192;
		+SOLID
	}
	
	States
	{
		Spawn:
		WINT A -1;
		Stop;
	}
}

class WinterTree2 : WinterTree1
{
	States
	{
		Spawn:
		WINT B -1;
		Stop;
	}
}

class WinterTree3 : WinterTree1
{
	States
	{
		Spawn:
		WINT C -1;
		Stop;
	}
}

class WinterTree4 : WinterTree1
{
	States
	{
		Spawn:
		WINT D -1;
		Stop;
	}
}

class WinterTree5 : WinterTree1
{
	States
	{
		Spawn:
		WINT E -1;
		Stop;
	}
}

class WinterTree6 : WinterTree1
{
	States
	{
		Spawn:
		WINT F -1;
		Stop;
	}
}

class WinterTree7 : WinterTree1
{
	States
	{
		Spawn:
		WINT G -1;
		Stop;
	}
}

class LabBoard1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 21;
		Height 57;
		Mass 9999;
		+FLATSPRITE
		+NOGRAVITY
		+DONTFALL
	}
		
	States
	{
		Spawn:
			LABB A -1;
			Stop;
	}
}

class LabBoard2 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 26;
		Height 51;
		Mass 9999;
		+FLATSPRITE
		+NOGRAVITY
		+DONTFALL
	}
		
	States
	{
		Spawn:
			LABB B -1;
			Stop;
	}
}

class Wreath : Achtung2
{
	States
	{
		Spawn:
			WRTH A -1;
			Stop;
	}
}

//////////////////////
// FOR CLASSIC MAPS
//////////////////////

class ClassicColumn1 : Actor
{
	Default
	{
		Scale 2;
		Radius 64;
		Height 128;
		+SOLID
	}
	
	States
	{
		Spawn:
		COLW A -1;
		Stop;
	}
}

class ClassicColumn2 : ClassicColumn1
{
	States
	{
		Spawn:
		PIL2 A -1;
		Stop;
	}
}

class ClassicLightBlue : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Height 22;
		Radius 18;
		Scale 2.0;
		+NOGRAVITY
		+SPAWNCEILING
	}

	States
	{
		Spawn:
			LIT5 A -1;
			Stop;
	}
}

class Slime : Actor
{
	Default
	{
		//$Category Wolfenstein / Hazards
		Radius 32;
		Height 10;
		Scale 1.0;
		Obituary "%o stepped in slime!";
		+BUMPSPECIAL
		Activation THINGSPEC_Activate;
	}
	
	States
	{
		Spawn:
			SLIM A 2 A_Jump(255, "Active");
			//SLIM A 2 BRIGHT A_Explode(8, 28);
			Loop;
		Active:
			SLIM A 2 BRIGHT A_Explode(8, 28);
			Loop;
	}
}

class Landmine : FastProjectile
{
	Default
	{
		Radius 28;
		Height 64;
		Speed 0;
		Scale 2.4;
	}
	
	States
	{
		Spawn:
			MINE A 1 A_Jump(255, "Active");
			//SLIM A 2 BRIGHT A_Explode(8, 28);
			Loop;
		Active:
			MINE A 1 BRIGHT A_Explode(200, 48);
			Loop;
	}
}