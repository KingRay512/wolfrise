class Flameguard : WolfGuard
{
	Default
	{
		//$Category Enemies
		ReactionTime 1;
		obituary "%o was roasted by a Flame Trooper";
		DamageFactor "Flame", 0.075;
		DamageFactor "KnifeDamage", 0.16;
		health 800;
		radius 20;
		height 60;
		mass 1000;
		speed 11;
		scale 1.025;
		+NORADIUSDMG
	}
	
	States
	{
		Spawn:
			FGRD A 4 A_Look;
			loop;
		See:
			FGRD AABBCCDD 4 A_Chase;
			loop;
		Missile:
			FGRD E 30 A_FaceTarget;
		Firing:
			FGRD E 1
			{
				A_PlaySound("weapons/flame/fire");
				A_SpawnProjectile("FlameBall", 32, 0, 0);
			}
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 0);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -8);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -7);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -6);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -5);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -4);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -3);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -2);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, -1);
			FGRD E 1 A_SpawnProjectile("FlameBall", 32, 0, 0);
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 2000, AAPTR_PLAYER1);
			FGRD F 5 A_Scream;
			FGRD G 5 A_NoBlocking;
			FGRD H 5;
			FGRD I -1;
			stop;
	}
}