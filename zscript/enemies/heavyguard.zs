class HeavyGuard : WolfGuard
{
	Default
	{
		DamageFactor "KnifeDamage", 0.32;
		obituary "%o was riddled by a Heavy SS";
		Health 400;
		Radius 34;
		Height 100;
		Mass 300;
		Speed 17;
		dropitem "MP50";
		dropitem "MP50";
		dropitem "WolfSmallHelmet2";
		Painchance 0;
		Maxtargetrange 1024;
		DeathSound "enemies/gibbed";
		SeeSound "GUTENTAG";
		PainSound "UBERPAIN";
		Scale 1.25;
	}
  
	States
	{
	Spawn:
		HEAV A 10 A_Look;
		Loop;
	See:
		HEAV ABCD 3 A_Chase;
		Loop;
	Missile:
		HEAV E 24 A_FaceTarget;
		TNT1 A 0 A_Jump(176, "AltFiring");
	Firing:
		HEAV F 2
		{
			A_PlaySound("weapons/mp50/fire");
			A_CustomBulletAttack(10,0,1,3);
		}
		HEAV E 2;
		HEAV G 2
		{
			A_PlaySound("weapons/mp50/fire");
			A_CustomBulletAttack(10,0,1,3);
		}
		HEAV E 2;
		TNT1 A 0 A_CPosRefire;
		Goto Firing;
	AltFiring:
		HEAV F 24
		{
			A_PlaySound("weapons/warning");
			A_SpawnProjectile("NaziLaserTarget", 48, 24, -4);
			A_SpawnProjectile("NaziLaserTarget", 48, 24, 0);
			A_SpawnProjectile("NaziLaserTarget", 48, 24, 4);
			
			A_SpawnProjectile("NaziLaserTarget", 48, -24, -4);
			A_SpawnProjectile("NaziLaserTarget", 48, -24, 0);
			A_SpawnProjectile("NaziLaserTarget", 48, -24, 4);
		}
		HEAV F 2
		{
			A_PlaySound("weapons/mp50/shotgun");
			A_SpawnProjectile("NaziBullet", 48, 24, -4);
			A_SpawnProjectile("NaziBullet", 48, 24, -0);
			A_SpawnProjectile("NaziBullet", 48, 24, 4);
			
			A_SpawnProjectile("NaziBullet", 48, -24, -4);
			A_SpawnProjectile("NaziBullet", 48, -24, -0);
			A_SpawnProjectile("NaziBullet", 48, -24, 4);
		}
		Goto See;
	Pain:
		HEAV A 1 A_Pain;
		Goto See;
	Death:
		TNT1 A 0
		{
			A_GiveInventory("WolfScore", 2500, AAPTR_PLAYER1);
			A_Scream();
			A_NoBlocking();
		}
		HEAV H 6
		{
			A_SpawnDebris("BloodPuff3", true, random(0.32, 0.75), random(0.32, 0.75));
		}
		HEAV I 6;
		HEAV J 6;
		HEAV K -1;
		Stop;
	}
}