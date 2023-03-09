class Robot1 : Actor
{
	Default
	{
		//$Category Bosses
		ReactionTime 1;
		obituary "%o was terminated by a T-800";
		health 1600;
		radius 48;
		height 136;
		mass 1000;
		speed 22;
		scale 2.0;
		painchance 0;
		MaxTargetRange 4096;
		DamageFactor "KnifeDamage", 0.25;
		seesound "femboss1";
		deathsound "ROBODETH";
		MONSTER;
		+MISSILEMORE
		+MISSILEEVENMORE
		+BOSS
		+NOBLOOD
		+NOBLOODDECALS
		+NOINFIGHTING
	}
	
	States
	{
		Spawn:
			ROBO B 8 A_Look;
			loop;
		See:
			ROBO AABBCCDD 4 A_Chase;
			loop;
		Missile:
			ROBO E 24 A_FaceTarget;
		Firing:
			ROBO FFFF 1
			{
				A_PlaySound("weapons/pulse/fire");
				A_SpawnProjectile("SpaceBullet", 80, -32, 0);
			}
			ROBO E 3;
			ROBO GGGG 1
			{
				A_PlaySound("weapons/pulse/fire");
				A_SpawnProjectile("SpaceBullet", 80, 32, 0);
			}
			ROBO E 3;
			ROBO FFFF 1
			{
				A_PlaySound("weapons/pulse/fire");
				A_SpawnProjectile("SpaceBullet", 80, -32, 0);
			}
			ROBO E 3;
			ROBO GGGG 1
			{
				A_PlaySound("weapons/pulse/fire");
				A_SpawnProjectile("SpaceBullet", 80, 32, 0);
			}
			ROBO E 2;
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
			ROBO H 5 bright A_Scream;
			ROBO I 5 bright A_NoBlocking;
			ROBO JK 5 bright;
			ROBO L -1;
			stop;
		Pain:
			ROBO P 4;
			Goto See;
	}
}

class Robot1_Hard : Robot1
{
	Default
	{
		Health 2400;
		Speed 32;
	}
}

class Robot2 : Robot1
{
	Default
	{
		//$Category Bosses
		obituary "%o was terminated by a low-class robot";
		Health 2000;
		Speed 12;
		PainChance 0;
		Maxtargetrange 512;
		SeeSound "ROBO1SEE";
		DeathSound "ROBODETH";
		+BOSS
	}
	
	States
	{
		Spawn:
			ROB1 B 6 A_Look;
			Loop;
		See:
			ROB1 A 6 A_Chase;
			ROB1 B 6
			{
				A_Chase();
				A_PlaySound("ROBOSTEP");
			}
			ROB1 C 6 A_Chase;
			ROB1 D 6
			{
				A_Chase();
				A_PlaySound("ROBOSTEP");
			}
			Loop;
		Missile:
			ROB1 E 16 A_FaceTarget;
		Firing:
			TNT1 A 0 bright;
			ROB1 F 5 bright;
			TNT1 A 0 bright A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
			ROB1 G 5 bright A_PlaySound("weapons/pulse/fire");
			TNT1 A 0 bright;
			ROB1 F 5 bright;
			TNT1 A 0 bright A_SpawnProjectile("NaziLaserTarget", 48, 0, 0);
			ROB1 G 5 bright A_PlaySound("weapons/pulse/fire");
			ROB1 E 10 bright A_CPosRefire;
			Goto Firing;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 4000, AAPTR_PLAYER1);
			TNT1 A 0 A_SpawnItemEx("TerminatorShoulder", 15, 0, 90, 10, 0, 0, -50, 0);
			TNT1 A 0 A_SpawnItemEx("TerminatorShoulder", 15, 0, 90, 10, 0, 0, 50, 0);
			TNT1 A 0 A_SpawnItemEx("TerminatorShoulder", 15, 0, 90, 10, 0, 0, 0, 0);
			TNT1 A 0 A_SpawnItemEx("TerminatorShoulder", 15, 0, 90, 10, 0, 0, 32, 0);
			TNT1 A 0 A_SpawnItemEx("TerminatorShoulder", 15, 0, 90, 10, 0, 0, -48, 0);
			TNT1 A 0 A_SpawnItemEx("TerminatorShoulder", 15, 0, 90, 10, 0, 0, 64, 0);
			ROB1 H 5 bright A_Scream;
			ROB1 I 5 bright A_NoBlocking;
			ROB1 J 5 bright;
			ROB1 K -1;
			stop;
		Pain:
			ROB1 A 1;
			Goto See;
	}
}

class Robot2_Hard : Robot2
{
	Default
	{
		Health 3000;
		Speed 18;
		MaxTargetRange 1280;
	}
}