/////////////////
// MP50
/////////////////

class MP50 : WolfWeapon
{
	action void A_FireMP50()
	{
		A_PlaySound("weapons/mp50/fire");
		A_FireBullets(1, 1, -1, 8, "BulletPuff1");
		A_SetPitch(pitch + 0.9, SPF_INTERPOLATE);
		A_GunFlash();
	}
	action void A_FireMP50Alt()
	{
		A_PlaySound("weapons/mp50/shotgun");
		A_Recoil(6.4);
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", 0, 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", 0, 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
		A_FireProjectile("PlayerBullet", random(-2, 2), 1, 0, 0, 0, random(-2, 2));
	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 16;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.Pickupmessage "You got an MP50";
		Inventory.PickUpSound "pickups/weapongrab";
// 		Weapon.BobRangeX 0.24;
// 		Weapon.BobRangeY 0.64;
// 		Weapon.BobSpeed 2.5;
		Tag "MP50";
	}
	
	States
	{
		Ready:
			TNT1 A 0 A_SetCrosshair(2);
			MP50 A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("pickups/weapongrab");
		Selecting:
			MP50 A 1 A_Raise(25);
			Loop;
		Deselect:
			MP50 A 1 A_Lower(25);
			Loop;
		Fire:
			MP50 B 1;
			MP50 D 1 A_FireMP50();
			MP50 ED 1 A_SetPitch(pitch - 0.9, SPF_INTERPOLATE);
			//MP50 D 1;
			Goto Ready;
		AltFire:
			MP50 BC 1;
			MP50 D 1 A_FireMP50Alt();
			MP50 ED 1 A_SetPitch(pitch - 4.8);
			MP50 AAAA 1 A_SetPitch(pitch + 2.0);
			MP50 A 3 A_CheckReload();	// OLD RELOAD DELAY = 8
			MP5R ABCDE 1 A_SetPitch(pitch + 0.88, SPF_INTERPOLATE);
			MP5R F 1;
			MP5R EDCBA 1 A_SetPitch(pitch - 0.88, SPF_INTERPOLATE);
			MP50 A 4;
			Goto Ready;
		Flash:
			EJEC ABCDEF 1;
			Goto LightDone;
		Spawn:
			TNT1 A 0 A_JumpIf(Args[0] == 0, "SpawnStandard");
			TNT1 A 0 A_JumpIf(Args[0] == 1, "SpawnUpright");
		SpawnStandard:
			MP50 P -1;
			Stop;
		SpawnUpright:
			MP55 Q -1;
			Stop;
	}
}