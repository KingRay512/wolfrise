class WolfGuard : Actor
{
	Default
	{
		//$Category Enemies
		BloodType "BloodPuff1";
		Monster;
		+MISSILEMORE
		+MISSILEEVENMORE
		DamageFactor "Flame", 4;
	}
	
	States
	{
		Death.Flame:
			TNT1 A 0
			{
				A_GiveInventory("WolfScore", 1000, AAPTR_PLAYER1);
				//A_Scream();
				A_PlaySound("enemies/burning");
				A_NoBlocking();
			}
			BURN ABCDEFGHIJKLMNOPQSTU 5;
			BURN V -1;
			Stop;
		Death.ExplosiveDamage:
			TNT1 A 0
			{
				A_NoBlocking();
				A_SpawnDebris("BloodPuff3", false, random(1.5, 2.0), random(1.5, 2.0));
				A_SpawnDebris("BoneDebris", false, random(0.25, 0.5), random(0.25, 0.5));
				A_SpawnDebris("BoneDebris2", false, random(0.75, 1.25), random(0.75, 1.25));
				A_SpawnDebris("BoneDebris3", false, random(2.0, 4.0), random(2.0, 4.0));
				A_SpawnDebris("BoneDebris4", false, random(1.0, 2.0), random(1.0, 2.0));
				A_PlaySound("enemies/gibbed");
			}
			Stop;
		Death.VenomBullet:
			TNT1 A 0
			{
				A_NoBlocking();
				A_SpawnDebris("BloodPuff3", false, random(1.5, 2.0), random(1.5, 2.0));
				A_SpawnDebris("BoneDebris", false, random(0.25, 0.5), random(0.25, 0.5));
				A_SpawnDebris("BoneDebris2", false, random(0.75, 1.25), random(0.75, 1.25));
				A_SpawnDebris("BoneDebris3", false, random(2.0, 4.0), random(2.0, 4.0));
				A_SpawnDebris("BoneDebris4", false, random(1.0, 2.0), random(1.0, 2.0));
				A_PlaySound("enemies/gibbed");
			}
			Stop;
	}
}