class DeathKnight : Actor
{
	Default
	{
		//$Category Enemies
		obituary "%o was purified by the Death Knight";
		Health 48000;
		Radius 48;
		Height 88;
		Mass 5000;
		Speed 25;
		DamageFactor "KnifeDamage", 0.001;
		DamageFactor "ExplosiveDamage", 0.75;
		dropitem "GatlingGun";
		Maxtargetrange 8192;
		DeathSound "bosses/trans/death";
		SeeSound "bosses/trans/sight";
		Scale 1.5;	// 1.6
		+BOSS
	}
	
	States
	{
		Spawn:
			DTK3 A 3 A_Look;
			Loop;
		See:
			DTK3 BBCCDDEE 3 A_Chase;
			Loop;
		Missile:
			DTK3 F 16
			{
				A_FaceTarget();
				A_PlaySound("weapons/venom/spinup");
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			DTK3 G 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
			}
			DTK3 H 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, 40, -10);
			}
			DTK3 I 1
			{
				A_PlaySound("weapons/venom/fire");
				A_SpawnProjectile("NaziBullet", 64, -48, random(-5, 0));
				A_SpawnProjectile("NaziBullet", 64, 48, random(0, 5));
				A_SpawnProjectile("NaziRocket", 80, -40, 10);
			}
			Goto See;
		Death:
			TNT1 A 0 A_GiveInventory("WolfScore", 5000, AAPTR_PLAYER1);
			DTK3 J 6
			{
				A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
				A_NoBlocking();
				A_Scream();
			}
			DTK3 KLMNO 6;
			DTK3 P -1;
			Stop;
	}
}