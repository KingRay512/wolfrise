class BulletSister : WolfGuard
{
	Default
	{
		obituary "%o was shown no mercy by the Sisters of Persecution";
		Health 3000;
		Radius 30;
		Height 62;
		Mass 500;
		Speed 22;
		DamageFactor "KnifeDamage", 0.048;
		DamageFactor "ExplosiveDamage", 1.2;
		dropitem "GatlingGun";
		dropitem "WolfGoldKey";
		Maxtargetrange 4096;
		DeathSound "bosses/trans/death";
		SeeSound "bosses/trans/sight";
		Scale 1.033;	// 1.6
		+BOSS
	}
	
	States
	{
		Spawn:
			FEMB A 3 A_Look;
			Loop;
		See:
			FEMB AABBCCDD 3 A_Chase;
			Loop;
		Missile:
			FEMB E 16
			{
				A_FaceTarget();
				A_PlaySound("weapons/venom/spinup");
			}
		Firing:
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(16, 14));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(14, 12));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(12, 10));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(10, 8));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(8, 6));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(6, 4));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(4, 2));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(2, 0));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(0, -2));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-2, -4));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-4, -6));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-6, -8));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-8, -10));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-10, -12));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-12, -14));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-14, -16));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-16, -14));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-14, -12));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-12, -10));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-10, -8));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-8, -6));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-6, -4));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-4, -2));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(-2, -0));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(0, 2));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(2, 4));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(4, 6));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(6, 8));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(8, 10));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(10, 12));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(12, 14));
			}
			FEMB FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 48, -16, random(14, 16));
			}
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
			FEMB H 6 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			FEMB I 6 A_NoBlocking;
			FEMB J 6 A_Scream;
			FEMB K -1;
			Stop;
	}
}

class PyroSister : BulletSister
{
	Default
	{
		//$Category Enemies
		obituary "%o was shown no mercy by the Sisters of Persecution";
		Health 3500;
		Radius 48;
		Height 80;
		Mass 500;
		Speed 30;
		DamageFactor "KnifeDamage", 0.048;
		DamageFactor "ExplosiveDamage", 1.2;
		DamageFactor "Flame", 0.4;
		dropitem "Flamethrower";
		Maxtargetrange 4096;
		DeathSound "bosses/trans/death";
		SeeSound "bosses/trans/sight";
		BloodType "BloodPuff1";
		MinMissileChance 1;
		Monster;
		+BOSS
		+MISSILEMORE
		+MISSILEEVENMORE
		+CANUSEWALLS
	}
	
	States
	{
		Spawn:
			FEM2 A 10 A_Look;
			Loop;
		See:
			FEM2 ABCD 6 A_Chase;
			Loop;
		Missile:
			FEM2 E 22
			{
				A_FaceTarget();
				A_PlaySound("weapons/venom/spinup");
			}
		Firing: 
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(6, 4));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(4, 2));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(2, 0));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(0, -2));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(-2, -4));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(-4, -6));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(-4, -2));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(-2, -0));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(0, 2));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(2, 4));
			}
			FEM2 FG 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("FlameBall", 64, -32, random(4, 6));
			}
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
			FEM2 H 6 A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			FEM2 I 6 A_NoBlocking;
			FEM2 J 6 A_Scream;
			FEM2 K -1;
			Stop;
	}
}

class BulletSister_Hard : BulletSister
{
	Default
	{
		//$Category Enemies
		Health 5000;
		Maxtargetrange 16384;
	}
}

class PyroSister_Hard : PyroSister
{
	Default
	{
		//$Category Enemies
		Health 5000;
		Maxtargetrange 16384;
	}
}