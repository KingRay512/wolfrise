class Commander1 : Actor
{
	Default
	{
		//$Category Enemies
		ReactionTime 8;
		obituary "%o was tracked down by a Commander";
		DamageFactor "Flame", 0.075;
		DamageFactor "KnifeDamage", 0.16;
		health 2500;
		radius 40;
		height 112;
		mass 1000;
		speed 18;
		scale 1.6;
		MaxTargetRange 16384;
		MONSTER;
		+BOSS
		+NOINFIGHTING
		+NORADIUSDMG
		+MISSILEMORE
		+MISSILEEVENMORE
	}
	
	States
	{
		Spawn:
			COM1 A 8 A_Look;
			loop;
		See:
			COM1 AABBCCDD 4 A_Chase;
			loop;
		Missile:
			COM1 E 16 A_FaceTarget;
			TNT1 A 0 A_Jump(128, "AltFiring");
		Firing:
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 3 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 3 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 3 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 3 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			Goto See;
		AltFiring:
			COM1 E 16
			{
				A_SpawnProjectile("NaziLaserTarget", 64, 8, 24, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, 12, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, 0, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, -12, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, -24, 0, 0);
			}
			COM1 F 4
			{
				A_SpawnProjectile("NaziRocket", 64, 8, 24, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, 12, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, 0, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, -12, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, -24, 0, 0);
			}
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 2000, AAPTR_PLAYER1);
			COM1 G 5 A_Scream;
			COM1 H 5 A_NoBlocking;
			COM1 I 5;
			COM1 J -1;
			stop;
	}
}

class Commander1_Hard : Commander1
{
	Default
	{
		Health 3500;
		Speed 24;
	}
	
	States
	{
		Missile:
			COM1 E 16 A_FaceTarget;
			TNT1 A 0 A_Jump(176, "AltFiring");
		Firing:
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			COM1 E 2 A_FaceTarget;
			COM1 F 2 A_SpawnProjectile("NaziRocket", 64, 8, random(-6, 6), 0, 0);
			Goto See;
		AltFiring:
			COM1 E 10
			{
				A_SpawnProjectile("NaziLaserTarget", 64, 8, 24, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, 12, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, 0, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, -12, 0, 0);
				A_SpawnProjectile("NaziLaserTarget", 64, 8, -24, 0, 0);
			}
			COM1 F 2
			{
				A_SpawnProjectile("NaziRocket", 64, 8, 24, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, 12, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, 0, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, -12, 0, 0);
				A_SpawnProjectile("NaziRocket", 64, 8, -24, 0, 0);
			}
			Goto See;
		}
}