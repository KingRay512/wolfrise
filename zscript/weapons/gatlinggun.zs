class VenomOverheat : Inventory
{
	Default
	{
		Inventory.Amount 5;
		Inventory.MaxAmount 200;
	}
}

class SingleVenom : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class DualVenom : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
	}
}

class GatlingGun : WolfWeapon
{
	action void A_PulseFire()
	{
		A_PlaySound("BLASTER1");
		A_FireProjectile("PulseBall", 0, 1, 0, 0, 0, 0);
	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 25;
		Weapon.AmmoType1 "HeavyAmmo";
		Weapon.AmmoType2 "HeavyAmmo";
		Inventory.Pickupmessage "You got the Venom Chaingun!";
		Inventory.PickUpSound "WEAPPICK";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.88;
		Scale 1.5;
		//Weapon.BobSpeed 0.48;
		Tag "Venom";
		+WEAPON.NOALERT;
	}
	
	States
	{
		Ready:
			TNT1 A 0 A_SetCrosshair(8);
			TNT1 A 0 A_JumpIfInventory("DualVenom", 1, "DualReady");
			TNT1 A 0 A_TakeInventory("VenomOverheat", 1);
			VEN1 A 1 A_WeaponReady;
			Loop;
		DualReady:
			TNT1 A 0 A_SetCrosshair(8);
			TNT1 A 0 A_TakeInventory("VenomOverheat", 1);
			VEN2 A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0
			{
				A_PlaySound("weapons/venom/equip");
				A_JumpIfInventory("DualVenom", 1, "DualSelecting");
			}
		Selecting:
			VEN1 A 1 A_Raise(25);
			Loop;
		DualSelecting:
			VEN2 A 1 A_Raise(25);
			Loop;
		Deselect:
			TNT1 A 0 A_JumpIfInventory("DualVenom", 1, "DualDeselecting");
		Deselecting:
			VEN1 A 1 A_Lower(25);
			Loop;
		DualDeselecting:
			VEN2 A 1 A_Lower(25);
			Loop;
		Fire:
			TNT1 A 0 A_JumpIfInventory("DualVenom", 1, "DualFire");
			VEN1 WX 2
			{
				A_CheckReload();
				A_FireProjectile("PlayerVenomBullet", random(-1, 1), 1, 0, 12, 0, 0);
				A_FireProjectile("PlayerVenomBullet", random(-1, 1), 1, 0, 12, 0, 0);
				A_Playsound("weapons/venom/fire");
				A_AlertMonsters(2048);
				A_Recoil(0.96);
				A_SetPitch(pitch - 1.12, SPF_INTERPOLATE);
				A_GiveInventory("VenomOverheat", 6);
			}
			TNT1 A 0 A_Refire;
			Goto SpinDown;
		DualFire:
			VEN2 BC 2
			{
				A_CheckReload();
				A_FireProjectile("PlayerVenomBullet", random(-1, 0), 1, 12, 12, 0, 0);
				A_FireProjectile("PlayerVenomBullet", random(-1, 0), 1, 12, 12, 0, 0);
				A_FireProjectile("PlayerVenomBullet", random(0, 1), 1, -12, 12, 0, 0);
				A_FireProjectile("PlayerVenomBullet", random(0, 1), 1, -12, 12, 0, 0);
				A_Playsound("weapons/venom/fire");
				A_AlertMonsters(2048);
				A_Recoil(2.24);
				A_SetPitch(pitch - 1.76, SPF_INTERPOLATE);
				A_GiveInventory("VenomOverheat", 12);
			}
			TNT1 A 0 A_Refire;
			Goto DualSpinDown;
		SpinDown:
			TNT1 A 0
			{
				A_PlaySound("weapons/venom/spindown");
				A_JumpIfInventory("DualVenom", 1, "DualSpinDown");
			}
			VEN1 YAYAYA 1 A_SetPitch(pitch + 0.5, SPF_INTERPOLATE);
			VEN1 YAYAYA 2 A_SetPitch(pitch + 0.25, SPF_INTERPOLATE);
			VEN1 YAYA 3 A_SetPitch(pitch + 0.125, SPF_INTERPOLATE);
			Goto Ready;
		DualSpinDown:
			TNT1 A 0 A_PlaySound("weapons/venom/spindown");
			VEN2 DADADA 1 A_SetPitch(pitch + 0.5, SPF_INTERPOLATE);
			VEN2 DADADA 2 A_SetPitch(pitch + 0.25, SPF_INTERPOLATE);
			VEN2 DADA 3 A_SetPitch(pitch + 0.125, SPF_INTERPOLATE);
			Goto DualReady;
		AltFire:
			TNT1 A 0 A_JumpIfInventory("SingleVenom", 1, "DualEquip");
			TNT1 A 0 A_JumpIfInventory("DualVenom", 1, "SingleEquip");
		DualEquip:
			TNT1 A 0 A_PlaySound("weapons/venom/equip");
			VEN1 BCDEFGHI 1;
			VEN1 JKLMNO 1;
			VEN2 A 2
			{
				A_TakeInventory("SingleVenom", 1);
				A_GiveInventory("DualVenom", 1);
			}
			Goto DualReady;
		SingleEquip:
			TNT1 A 0 A_PlaySound("weapons/venom/equip");
			VEN1 ONMLKJI 1;
			VEN1 HGFEDCB 1;
			VEN1 A 2
			{
				A_GiveInventory("SingleVenom", 1);
				A_TakeInventory("DualVenom", 1);
			}
			Goto Ready;
		Spawn:
			GATL P -1;
			Stop;
	}
}

class SuperWeapon : WolfWeapon
{
	action void A_SuperFire()
	{
		A_PlaySound("weapons/uber/fire");
		A_FireProjectile("UberBall", 0, 0, 16, 0, 0, 0);
	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 25;
		Weapon.AmmoType "HeavyAmmo";
		Weapon.AmmoType2 "HeavyAmmo";
		Inventory.Pickupmessage "You got the Blut-Faust Gewehr 1000!";
		Inventory.PickUpSound "WEAPPICK";
		Weapon.BobRangeX 0.1;
		Weapon.BobRangeY 0.72;
		Weapon.BobSpeed 0.32;
		Tag "Blut-Faust Gewehr 1000";
	}
	
	States
	{
		Ready:
			SUPR A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_SetCrosshair(11);
			TNT1 A 0 A_PlaySound("weapons/uber/equip");
		Selecting:
			SUPR A 1 A_Raise(25);
			Loop;
		Deselect:
			SUPR A 1 A_Lower(25);
			Loop;
		Fire:
			SUPR BC 1;
			SUPR D 1	// FIRE
			{
				A_TakeInventory("HeavyAmmo", 50);
				A_SuperFire();
				A_Recoil(25.0);
			}
			SUPR EF 1 A_SetPitch(pitch - 9.6, SPF_INTERPOLATE);
			SUPR A 8;
			SUPR XY 3 A_SetPitch(pitch + 0.8, SPF_INTERPOLATE);
			SUPR XYXY 2 A_SetPitch(pitch + 0.8, SPF_INTERPOLATE);
			SUPR XYXYXY 1 A_SetPitch(pitch + 0.8, SPF_INTERPOLATE);
			SUPR XYXY 2 A_SetPitch(pitch + 0.8, SPF_INTERPOLATE);
			SUPR XY 3 A_SetPitch(pitch + 0.8, SPF_INTERPOLATE);
			Goto Ready;
		AltFire:
			SUPR XY 1
			{
				A_PlaySound("weapons/uber/altfire");
				A_FireProjectile("PlayerZap", random(-1, 1), 0, 0, 0, 0, random(-2, 4));
				A_FireProjectile("PlayerZap", random(-12, 12), 0, 0, 0, random(-4, 8));
				A_TakeInventory("HeavyAmmo", 5);
			}
			TNT1 A 0 A_Refire;
		SpinDown:
			//TNT1 A 0 A_PlaySound("weapons/venom/spindown");
			SUPR XYXY 1;
			SUPR XYXY 2;
			SUPR XYXY 3;
			Goto Ready;
		Spawn:
			GATL P -1;
			Stop;
	}
}