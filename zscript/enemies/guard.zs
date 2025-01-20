class Guard : WolfGuard
{
	Default
	{
		obituary "%o was shot by a Guard.";
		Health 40;
		Radius 21;
		Height 56;
		Mass 300;
		Speed 14;
		dropitem "SmallAmmo";
		Painchance 180;
		Maxtargetrange 2048;
		DeathSound "enemies/guard/die";
		SeeSound "enemies/guard/see";
		PainSound "UBERPAIN";
		BloodType "BloodPuff1";
		Scale 1.0;
	}
	
	States
	{
		Spawn:
			NZ04 A 2 A_Look;
			Loop;
		See:
			NZ04 BCDE 4 A_Chase;
			Loop;
		Missile:
			NZ04 F 20 A_FaceTarget;
			NZ04 G 4;
			NZ04 H 4
			{
				A_PlaySound("weapons/luger/fire");
				A_SpawnProjectile("NaziBullet", 48, 0, random(-4, 4));
			}
			NZ04 G 4 A_FaceTarget;
			NZ04 H 4
			{
				A_PlaySound("weapons/luger/fire");
				A_SpawnProjectile("NaziBullet", 48, 0, random(-4, 4));
			}
			NZ04 G 4 A_FaceTarget;
			NZ04 H 4
			{
				A_PlaySound("weapons/luger/fire");
				A_SpawnProjectile("NaziBullet", 48, 0, random(-4, 4));
			}
			Goto See;
		Pain:
			NZ04 I 10 
			{
				A_Pain();
			}
			Goto See;
		Death:
			NZ04 J 4
			{
				A_GiveInventory("WolfScore", 1000, AAPTR_PLAYER1);
				A_Scream();
				A_NoBlocking();
				A_SpawnDebris("BloodPuff2", false, random(0.75, 1.25), random(0.75, 1.25));
			}
			NZ04 JKLM 4;
			NZ04 N -1;
			Stop;
// 		Death.Flame:
// 			TNT1 A 0
// 			{
// 				A_NoBlocking();
// 			}
// 			BURN ABCDEFGHIJKLMNOPQSTU 4;
// 			BURN V -1;
// 			Stop;
		Death.ExplosiveDamage:
			TNT1 A 0
			{
				A_GiveInventory("WolfScore", 1000, AAPTR_PLAYER1);
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