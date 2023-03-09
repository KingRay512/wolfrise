class GyroPanzer : Actor
{
	Default
	{
		//$Category Enemies
		obituary "%o was outmanuevered by a Gyro-Panzer.";
		Health 800;
		Radius 50;
		Height 100;
		Mass 300;
		Speed 21;
		Painchance 180;
		Maxtargetrange 4096;
		DropItem "Explosion";
		DeathSound "UBRNZDED";
		SeeSound "UBRNZSEE";
		PainSound "UBERPAIN";
		BloodType "BloodPuff1";
		Scale 1.5;
		Monster;
		+FLOAT
		+NOGRAVITY
	}

	States
	{
		Spawn:
			GYRO ABCD 3 A_Look;
			Loop;
		See:
			GYRO ABCD 3 A_Chase;
			Loop;
		DodgeLeft:
			GYRO IJKJI 2 ThrustThing(angle-90, 4, 64, 0);
			Goto See;
		DodgeRight:
			GYRO LMNML 2 ThrustThing(angle-90, -4, 64, 0);
			Goto See;
		Missile:
			GYRO A 16
			{
				A_SpawnProjectile("NaziLaserTarget",0,0,0);
				A_FaceTarget();
			}
		Cannon:
			TNT1 A 0 A_Jump(160, "GyroMissiles");
			GYRO E 4;
			GYRO A 2 A_SpawnProjectile("PulseBall",0,0,0);
			GYRO E 4;
			GYRO A 2 A_SpawnProjectile("PulseBall",0,0,0);
			GYRO E 4;
			GYRO A 2 A_SpawnProjectile("PulseBall",0,0,0);
			GYRO E 4;
			GYRO A 2 A_SpawnProjectile("PulseBall",0,0,0);
			Goto See;
		GyroMissiles:
			GYRO F 4 A_SpawnProjectile("NaziRocket",24,-40,0);
			GYRO A 2;
			GYRO G 4 A_SpawnProjectile("NaziRocket",24,40,0);
			GYRO A 2;
			GYRO F 4 A_SpawnProjectile("NaziRocket",24,-40,0);
			GYRO A 2;
			GYRO G 4 A_SpawnProjectile("NaziRocket",24,40,0);
			GYRO A 2;
			GYRO F 4 A_SpawnProjectile("NaziRocket",24,-40,0);
			GYRO A 2;
			GYRO G 4 A_SpawnProjectile("NaziRocket",24,40,0);
			GYRO A 2;
			Goto See;
		Pain:
			TNT1 A 0 A_Jump(175, "DodgeLeft");
			TNT1 AAAA 0;
			TNT1 A 0 A_Jump(175, "DodgeRight");
			Goto See;
		Death:
			TNT1 A 0 A_NoBlocking;
			TNT1 A 0 A_GiveInventory("WolfScore", 3500, AAPTR_PLAYER1);
			Stop;
	}
}