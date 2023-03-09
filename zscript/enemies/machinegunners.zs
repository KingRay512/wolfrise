class Machinegunner1 : WolfGuard
{
	Default
	{
		//$Category Enemies
		obituary "%o was shot by a Machinegunner.";
		Health 110;
		Radius 22;
		Height 68;
		Mass 300;
		Speed 14;
		dropitem "WolfRifle2";
		Painchance 100;
		Maxtargetrange 1024;
		DeathSound "UBRNZDED";
		SeeSound "UBRNZSEE";
		PainSound "UBERPAIN";
		BloodType "BloodPuff1";
		MaxStepHeight 16;
		Scale 1.33;
		Monster;
		MinMissileChance 1;
		+DONTHARMSPECIES
		+NOINFIGHTING
		+MISSILEMORE
		+MISSILEEVENMORE
	}
  
	States
	{
	Spawn:
		NZ45 A 10 A_Look;
		Loop;
	See:
		NZ45 BBCCDDEE 3 A_Chase;
		Loop;
	Missile:
		NZ45 F 1 A_PlaySound("weapons/warning");	
		NZ45 F 1 A_FaceTarget;
		NZ45 F 1 A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
		NZ45 F 1 A_FaceTarget;
		NZ45 F 1 A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
		NZ45 F 1 A_FaceTarget;
		NZ45 F 1 A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
		NZ45 F 1 A_FaceTarget;
		NZ45 F 1 A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
		NZ45 F 16 A_FaceTarget;
	Firing:
		NZ45 G 2;
		TNT1 A 0 A_PlaySound("weapons/fg42/fire");
		NZ45 H 2 A_CustomBulletAttack(4,0,1,4);
		TNT1 A 0 A_CPosRefire;
		Goto Firing;
	Pain:
		NZ45 I 3 A_Pain;
		Goto See;
	Death:
		TNT1 A 0 A_GiveToTarget("WolfScore", 1500);
		NZ45 J 4;
		NZ45 K 4 A_Scream;
		NZ45 L 4 A_NoBlocking;
		NZ45 M 4;
		NZ45 N -1;
		Stop;
	}
}


class Machinegunner1_Hard : Machinegunner1
{
	Default
	{
		Health 180;
		Speed 18;
		Painchance 64;
		Maxtargetrange 4096;
	}
}