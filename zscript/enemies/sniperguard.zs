class SniperGuard : WolfGuard
{
	Default
	{
		obituary "%o was caught in the sights by a sniper.";
		Health 60;
		Radius 21;
		Height 56;
		Mass 300;
		Speed 12;
		dropitem "WolfRifle";
		Painchance 100;
		Maxtargetrange 8192;
		DeathSound "enemies/death2";
		SeeSound "enemies/swein";
		PainSound "UBERPAIN";
		Scale 1.0;
	}
	
	States
	{
		Spawn:
			GRD2 A 2 A_Look;
			Loop;
		See:
			GRD2 BCDE 4 A_Chase;
			Loop;
		Missile:
			GRD2 F 4 A_FaceTarget;
			GRD2 G 4 A_PlaySound("weapons/warning");
			GRD2 G 24 A_SpawnProjectile("NaziLaserTarget", 40, 0, 0);
			TNT1 A 0 A_PlaySound("weapons/rifle/fire");
			GRD2 H 4 A_SpawnProjectile("NaziBullet2", 40, 0, 0);
			Goto See;
		Pain:
			GRD2 I 5 A_Pain;
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 1250, AAPTR_PLAYER1);
			GRD2 J 4 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			GRD2 K 4 A_Scream;
			GRD2 L 4 A_NoBlocking;
			GRD2 M 4;
			GRD2 N -1;
			Stop;
	}
}

class SniperGuard_Hard : SniperGuard
{
	Default
	{
		Speed 22;
		Painchance 80;
		Maxtargetrange 25600;
		MinMissileChance 1;
	}

	States
	{
		Missile:
			GRD2 F 3 A_FaceTarget;
			GRD2 G 3 A_PlaySound("weapons/warning");
			GRD2 G 21 A_SpawnProjectile("NaziLaserTarget", 64, 0, 0);
			TNT1 A 0 A_PlaySound("weapons/rifle/fire");
			GRD2 H 2 A_CustomBulletAttack(0,0,1,15, "BulletPuff", 51200);
			Goto See;
		Pain:
			GRD2 I 2 A_Pain;
			Goto See;
	}
}