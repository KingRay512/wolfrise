class ClassicLuger : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		//Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		//Weapon.AmmoType2 "GrenadeAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Tag "Luger";
		+WEAPON.NOAUTOFIRE;
		+WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			GUN2 A 1 A_WeaponReady;
			Loop;
		Select:
			GUN2 A 1 A_Raise(500);
			Loop;
		Deselect:
			GUN2 A 1 A_Lower(500);
			Loop;
		Fire:
			GUN2 B 2;
			GUN2 C 2;
			GUN2 D 2
			{
				A_FireProjectile("PlayerBullet", random(-1,1) , 1, 0, 0, 0);
				A_PlaySound("weapons/classic/pistol");
			}
			GUN2 E 1;
			Goto Ready;
		AltFire:
			TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, "ThrowGrenade");
			Goto Ready;
		ThrowGrenade:
			GUN2 FG 1;
			GUN2 HIJ 1;
			GUN2 K 2
			{
				A_PlaySound("weapons/knife/swing");
				A_FireProjectile("GrenadeThrow", 0, 1, 0, 0);
				A_TakeInventory("GrenadeAmmo", 1);
			}
			GUN2 LMNO 1;
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}

class ClassicMachinegun : WolfWeapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Tag "Machinegun";
		+WEAPON.NOAUTOAIM;
	}
	
	States
	{
		Ready:
			GUN3 A 1 A_WeaponReady;
			Loop;
		Select:
			GUN3 A 1 A_Raise(500);
			Loop;
		Deselect:
			GUN3 A 1 A_Lower(500);
			Loop;
		Fire:
			GUN3 B 2;
			GUN3 C 1;
			GUN3 D 1
			{
				A_FireProjectile("PlayerBullet", random(-2,2) , 1, 0, 0, 0);
				A_PlaySound("weapons/classic/machinegun");
			}
			GUN3 C 1 A_ReFire();
			GUN3 B 1;	// 5
			Goto Ready;
		AltFire:
			TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, "ThrowGrenade");
			Goto Ready;
		ThrowGrenade:
			GUN3 EFGH 1;
			GUN3 I 2
			{
				A_PlaySound("weapons/knife/swing");
				A_FireProjectile("GrenadeThrow", 0, 1, 0, 0);
				A_TakeInventory("GrenadeAmmo", 1);
			}
			GUN3 JKLM 1;
			Goto Ready;
		Spawn:
			GUN3 P -1;
			Stop;
	}
}