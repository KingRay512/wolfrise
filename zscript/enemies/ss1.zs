class SS1 : WolfGuard
{
	Default
	{
		obituary "%o was riddled by an SS.";
		Health 250;
		Radius 21;
		Height 56;
		Mass 300;
		Speed 20;
		dropitem "ClassicMachinegun";
		Painchance 192;
		Maxtargetrange 2048;
		MinMissileChance 1;
		DeathSound "enemies/ss/die";
		SeeSound "enemies/ss/see";
		PainSound "UBERPAIN";
		BloodType "BloodPuff2";
		Scale 1.0;
		ReactionTime 12;
	}
  
	States
	{
	Spawn:
		NZ33 A 4 A_Look;
		Loop;
	See:
		NZ33 BBCCDDEE 4 A_Chase;
		Loop;
	Missile:
		NZ33 F 20 A_FaceTarget;
	Firing:
		NZ33 F 2;
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		NZ33 G 2;
		NZ33 H 2
		{
			A_FaceTarget();
			A_PlaySound("weapons/mp50/fire");
			A_SpawnProjectile("NaziBullet", 48, 0, random(-2, 2));
		}
		Goto See;
	Pain:
		NZ33 I 8 A_Pain;
		Goto See;
	Death:
		TNT1 A 0
		{
			A_GiveToTarget("WolfScore", 1500);
			A_Scream();
			A_NoBlocking();
		}
		NZ33 J 4 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
		NZ33 KLM 4;
		NZ33 N -1;
		Stop;
	Death.ExplosiveDamage:
		TNT1 A 0
		{
			A_GiveInventory("WolfScore", 1500, AAPTR_PLAYER1);
			A_Scream();
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