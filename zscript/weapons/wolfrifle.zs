class WolfRifleUnzoomed : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class WolfRifleZoomed : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class WolfRifle : WolfWeapon
{
	action void A_FireRifle()
	{
		A_PlaySound("weapons/rifle/fire");
		A_AlertMonsters();
		A_Recoil(4.0);
		A_FireProjectile("PlayerBullet2", 0, 1, 0, 0, 0);
	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "RifleAmmo";
		Weapon.AmmoType2 "RifleAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Inventory.Pickupmessage "You grabbed a rifle";
// 		Weapon.BobRangeX 0.24;
// 		Weapon.BobRangeY 0.64;
// 		Weapon.BobSpeed 2.5;
		Tag "Rifle";
		+WEAPON.NOALERT
		+WEAPON.NOAUTOFIRE
	}
	
	States
	{
		Ready:
			TNT1 A 0 A_JumpIfInventory("WolfRifleZoomed", 1, "ReadyZoomed");
			SNIP A 1 A_WeaponReady;
			Loop;
		ReadyZoomed:
			RIF4 Z 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/rifle/bolt");
		Selecting:
			SNIP A 1 A_Raise(25);
			Loop;
		Deselect:
			TNT1 A 0 A_ZoomFactor(1.0);
			TNT1 A 0 A_TakeInventory("WolfRifleZoomed", 1);
			SNIP A 1 A_Lower(25);
			Loop;
		Fire:
			TNT1 A 0 A_JumpIfInventory("WolfRifleZoomed", 1, "FireZoomed");
			SNIP B 1;
			SNIP C 1 A_FireRifle();
			SNIP DEF 1;
			SNIP G 8;
			TNT1 A 0 A_CheckReload();
			SNIP HIJKLMN 1;
			SNIP O 4
			{
				A_PlaySound("weapons/rifle/bolt");
			}
			SNIP NMLKJIHG 1;
			SNIP A 4;
			Goto Ready;
		FireZoomed:
			RIF4 U 1
			{
				A_PlaySound("weapons/rifle/fire");
				A_AlertMonsters();
				A_Recoil(1.0);
				A_FireProjectile("PlayerBullet2", 0, 1, 0, 0, 0);
			}
			RIF4 TU 1;
			RIF4 Z 4;
			SNIP AAA 1;
			SNIP A 4;
			SNIP HIJKLMN 1;
			SNIP O 1 A_PlaySound("weapons/rifle/bolt");
			SNIP NMLKJIHG 1;
			SNIP A 4;
			Goto ReadyZoomed;
		AltFire:
			TNT1 A 0 A_JumpIfInventory("WolfRifleZoomed", 1, "Unzoom");
		Zoom:
			SNIP A 1;
			SNIP A 1
			{
				A_PlaySound("weapons/switch");
				A_ZoomFactor(6.4);
				A_TakeInventory("WolfRifleUnzoomed", 1);
				A_GiveInventory("WolfRifleZoomed", 1);
			}
			Goto ReadyZoomed;
		Unzoom:
			SNIP A 1;
			SNIP A 1
			{
				A_PlaySound("weapons/switch");
				A_ZoomFactor(1.0);
				A_TakeInventory("WolfRifleZoomed", 1);
				A_GiveInventory("WolfRifleUnzoomed", 1);
			}
			Goto Ready;
		Spawn:
			RIF4 P -1;
			Stop;
	}
}

////////////////////
// FG 42
////////////////////

class FG42 : WolfWeapon
{	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "RifleAmmo";
		Weapon.AmmoType2 "RifleAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Inventory.Pickupmessage "You picked up an FG42";
// 		Weapon.BobRangeX 0.24;
// 		Weapon.BobRangeY 0.64;
// 		Weapon.BobSpeed 2.5;
		Tag "FG42";
		+WEAPON.NOALERT
		+WEAPON.NOAUTOFIRE
	}
	
	States
	{
		Ready:
			TNT1 A 0 A_JumpIfInventory("WolfRifleZoomed", 1, "ReadyZoomed");
			FG42 A 1 A_WeaponReady;
			Loop;
		ReadyZoomed:
			FG4Z F 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/fg42/equip");
		Selecting:
			FG42 A 1 A_Raise(25);
			Loop;
		Deselect:
			TNT1 A 0 A_ZoomFactor(1.0);
			TNT1 A 0 A_TakeInventory("WolfRifleZoomed", 1);
			FG42 A 1 A_Lower(25);
			Loop;
		Fire:
			TNT1 A 0 A_JumpIfInventory("WolfRifleZoomed", 1, "FireZoomed");
			FG42 B 1;
			FG42 C 1
			{
				A_PlaySound("weapons/fg42/fire");
				A_AlertMonsters();
				A_Recoil(1.44);
				//A_FireBullets(2.0, 2.0, -1, 64, "BulletPuff1");
				A_FireProjectile("PlayerBullet2", random(-1,1) , 1, 0, 0, 0);
			}
			FG42 DED 1;
			FG42 C 1;
			FG42 A 1 A_Refire();
			Goto Ready;
		FireZoomed:
			FG4Z G 2;
			FG4Z H 2
			{
				A_PlaySound("weapons/fg42/fire");
				A_AlertMonsters();
				A_Recoil(1.0);
				//A_FireBullets(0.0, 0.0, -1, 64, "BulletPuff1");
				A_FireProjectile("PlayerBullet2", 0 , 1, 0, 0, 0);
			}
			FG4Z I 2;
			FG4Z G 2 A_ReFire();
			Goto Ready;
			
		AltFire:
			TNT1 A 0 A_JumpIfInventory("WolfRifleZoomed", 1, "Unzoom");
		Zoom:
			FG4Z AB 1;
			FG4Z C 1
			{
				A_PlaySound("weapons/switch");
				A_ZoomFactor(3.0);
				A_TakeInventory("WolfRifleUnzoomed", 1);
				A_GiveInventory("WolfRifleZoomed", 1);
			}
			Goto ReadyZoomed;
		Unzoom:
			FG4Z CB 1;
			FG42 A 1
			{
				A_PlaySound("weapons/switch");
				A_ZoomFactor(1.0);
				A_TakeInventory("WolfRifleZoomed", 1);
				A_GiveInventory("WolfRifleUnzoomed", 1);
			}
			Goto Ready;
		Spawn:
			FG42 P -1;
			Stop;
	}
}