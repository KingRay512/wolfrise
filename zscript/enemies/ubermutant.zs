class UberMutant : Actor
{
	Default
	{
		//$Category Enemies
		obituary "%o becomes the Ubermutan't new victim";
		Health 7500;
		Radius 48;
		Height 112;
		Mass 500;
		Speed 32;
		DamageFactor "KnifeDamage", 0.048;
		DamageFactor "ExplosiveDamage", 1.2;
		Maxtargetrange 2048;
		//DeathSound "bosses/UBRMs/death";
		//SeeSound "bosses/UBRMs/sight";
		BloodType "BloodPuff1";
		MinMissileChance 1;
		Scale 1.92;
		Monster;
		+BOSS
		+MISSILEMORE
		+MISSILEEVENMORE
		+CANUSEWALLS
	}
	
	States
	{
		Spawn:
			UBRM A 10 A_Look;
			Loop;
		See:
			UBRM BCD 3 A_Chase;
			Loop;
		Missile:
			UBRM E 22
			{
				A_FaceTarget();
				A_PlaySound("weapons/venom/spinup");
			}
		Firing:
			UBRM F 4
			{
				A_SpawnProjectile("NaziBullet", 52, -32, random(8, 0));
				A_PlaySound("weapons/venom/fire");
			}
			UBRM G 4
			{
				A_SpawnProjectile("NaziBullet", 52, 32, random(-8, 0));
				A_PlaySound("weapons/venom/fire");
			}
			UBRM H 4
			{
				A_SpawnProjectile("NaziBullet", 52, 32, random(-8, 0));
				A_PlaySound("weapons/venom/fire");
			}
			UBRM G 4
			{
				A_SpawnProjectile("NaziBullet", 52, 32, random(-8, 0));
				A_PlaySound("weapons/venom/fire");
			}
			TNT1 A 0 A_CPosRefire;
			Goto Firing;
		Death:
			UBRM H 2
			{
				A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
				A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
				A_NoBlocking();
				A_Scream();
			}
			UBRM HIJKLMNOP 2;
			UBRM Q -1;
			Stop;
	}
}

class UberMutant_Hard : UberMutant
{
	Default
	{
		//$Category Enemies
		Health 9500;
		Speed 64;
	}
}