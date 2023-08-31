class Tigerfaust : WolfWeapon
{
	action void A_TigerFistFire()
	{
		A_PlaySound("weapons/tiger/fire");
		A_FireProjectile("WolfRocket", 0, 1, 0, 0);
		A_Recoil(5.0);
		A_SetPitch(pitch - 4.8, SPF_INTERPOLATE);
	}
	
	action void A_TigerFistAlt()
	{
		A_PlaySound("weapons/tiger/altfire");
		A_FireProjectile("WolfRocket", 0, 1, 0, 0, 0, 0);
		A_FireProjectile("WolfRocket", 0, 0, 0, 0, 0, -4);
		A_FireProjectile("WolfRocket", 0, 0, 0, 0, 0, 4);
		A_FireProjectile("WolfRocket", -4, 0, 0, 0, 0, 0);
		A_FireProjectile("WolfRocket", 4, 0, 0, 0, 0, 0);
		A_Recoil(24.0);
	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 5;
		Weapon.AmmoGive 2;
		Weapon.AmmoType "WolfRockets";
		Weapon.AmmoType2 "WolfRockets";
		Inventory.PickUpSound "pickups/weapongrab";
		Inventory.Pickupmessage "You picked up a Tigerfaust (Panzerfaust's big bro)";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.72;
		//Weapon.BobSpeed 2.0;
		Tag "Tigerfaust";
	}
	
	States
	{
		Ready:
			TNT1 A 0 A_SetCrosshair(3);
			LNCG A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/tiger/equip");
		Selecting:
			LNCG A 1 A_Raise(25);
			Loop;
		Deselect:
			LNCG A 1 A_Lower(25);
			Loop;
		Fire:
			LNCG B 1;
			LNCG C 1 A_TigerFistFire();
			LNCG DEF 1 A_SetPitch(pitch + 0.75, SPF_INTERPOLATE);
			LNCG AAAAAAAAAAA 1 A_SetPitch(pitch + 0.24, SPF_INTERPOLATE);
			Goto Ready;
		AltFire:
			LNCG A 1 A_CheckReload();
			TNT1 A 0 A_PlaySound("weapons/charge");
			LNCS ABCD 3 A_Recoil(0.16);
			LNCS ABCD 2 A_Recoil(0.16);
			LNCS ABCDEFG 1 A_Recoil(0.16);
			LNCS H 1 A_TigerFistAlt();
			LNCS IIII 1 A_SetPitch(pitch - 2.0, SPF_INTERPOLATE);
			LNCS IIIIIIII 1 A_SetPitch(pitch + 1.0, SPF_INTERPOLATE);
			LNCS JKLMNO 2;
			LNCG A 8;
			Goto Ready;
		Spawn:
			LNCG Z -1;
			Stop;
	}
}