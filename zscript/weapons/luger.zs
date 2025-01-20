class PlayerHasSilencer : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class PistolUnsilenced : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class PistolSilenced : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class Luger : WolfWeapon
{ 
	action void A_LugerFire()
	{
		A_AlertMonsters(20480);
		A_PlaySound("weapons/luger/fire");
		//A_FireBullets(1, 1, -1, 14, "BulletPuff1");
		A_FireProjectile("PlayerBullet", random(-2,2) , 1, 0, 0, 0);
	}
	
	action void A_LugerSilencedFire()
	{
		A_AlertMonsters(16);
		A_CheckReload();
		A_PlaySound("weapons/luger/softfire");
		A_FireBullets(1, 1, -1, 10, "BulletPuff1");
		A_SetPitch(pitch - 0.72, SPF_INTERPOLATE);
	}

	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 8;
		Weapon.AmmoType "SmallAmmo";
		Weapon.AmmoType2 "SmallAmmo";
		Inventory.PickUpSound "pickups/weapongrab";
		Tag "Luger";
		+WEAPON.NOALERT;
		+WEAPON.NOAUTOFIRE;
	}
	
	States
	{
		Ready:
			TNT1 A 0 A_JumpIfInventory("PistolSilenced", 1, "ReadySilenced");
			LUG2 A 1 A_WeaponReady;
			Loop;
		ReadySilenced:
			LUG3 A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/luger/equip");
		Selecting:
			LUG2 A 1 A_Raise(25);
			Loop;
		Deselect:
			LUG2 A 1 A_Lower(25);
			Loop;
		Fire:
			TNT1 A 0 A_JumpIfInventory("PistolSilenced", 1, "FireSilenced");
			LUG2 C 1 A_SetPitch(pitch - 0.4, SPF_INTERPOLATE);
			LUG2 D 1
			{
				A_LugerFire();
				A_GunFlash();
			}
			LUG2 EGH 1 A_SetPitch(pitch + 0.2, SPF_INTERPOLATE);
			LUG2 A 1;
			Goto Ready;
		FireNoRecoil:
			TNT1 A 0 A_JumpIfInventory("PistolSilenced", 1, "FireSilenced");
			LUG2 C 1 A_SetPitch(pitch - 0.4, SPF_INTERPOLATE);
			LUG2 D 1
			{
				A_LugerFire();
				A_GunFlash();
			}
			LUG2 EGH 1 A_SetPitch(pitch + 0.2, SPF_INTERPOLATE);
			LUG2 A 1;
			Goto Ready;
			Goto Ready;
		Flash:
			EJEC ABCDEF 1 BRIGHT;
			Goto LightDone;
		FireSilenced:
			LUG3 BC 1;
			LUG3 E 1 A_LugerSilencedFire();
			LUG3 C 1;
			LUG3 E 1 A_LugerSilencedFire();
			LUG3 C 1;
			LUG3 E 1 A_LugerSilencedFire();
			LUG3 GH 1;
			LUG3 A 2;
			Goto Ready;
		AltFire:
			TNT1 A 0 A_JumpIfInventory("PlayerHasSilencer", 1, "ChangeMode");
			TNT1 A 0 ACS_NamedExecute("LackingSilencer", 0, 0, 0, 0);
			Goto Ready;
		ChangeMode:
			TNT1 A 0 A_JumpIfInventory("PistolSilenced", 1, "Unsilence");
			TNT1 A 0 A_JumpIfInventory("PistolUnsilenced", 1, "Silence");
		Silence:
			LUG2 BG 1;
			LUGS ABCDEFGHIJKLMNO 1;
			LUGS P 1 A_PlaySound("weapons/luger/silence");
			LUGS QRSTUVWXYZ 1;
			LUGT ABCDEF 1;
			LUG3 HA 1;
			TNT1 A 0
			{
				A_GiveInventory("PistolSilenced", 1);
				A_TakeInventory("PistolUnsilenced", 1);
			}
			Goto ReadySilenced;
		Unsilence:
			LUG3 BG 1;
			LUGT FEDCBA 1;
			LUGS ZYXWVUTSRQ 1;
			LUGS P 1 A_PlaySound("weapons/luger/silence");
			LUGS ONMLKJIHGFEDCBA 1;
			LUG2 GHA 1;
			TNT1 A 0
			{
				A_TakeInventory("PistolSilenced", 1);
				A_GiveInventory("PistolUnsilenced", 1);
			}
			Goto Ready;
		Spawn:
			PIST P -1;
			Stop;
	}
}