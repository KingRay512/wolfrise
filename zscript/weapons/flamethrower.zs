class WolfFlameThrower : WolfWeapon
{
	action void A_FlameFire()
	{
		A_PlaySound("weapons/flame/fire");
		A_Recoil(0.048);
		A_FireProjectile("PlayerFlameBall", 0, 1, 0, 12, 0, 0);
	}
	
// 	action void A_PulseAltFire()
// 	{
// 		A_PlaySound("weapons/pulse/fire2");
// 		A_Recoil(2.24);
// 		A_FireProjectile("PulseBall", 6, 1, -6, 8, 0, 0);
// 		A_FireProjectile("PulseBall", 3, 1, -3, 8, 0, 0);
// 		A_FireProjectile("PulseBall", -3, 1, 3, 8, 0, 0);
// 		A_FireProjectile("PulseBall", -6, 1, 6, 8, 0, 0);
// 		A_SetPitch(pitch - 2.5, SPF_INTERPOLATE);
// 	}
	
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoUse2 1;
		Weapon.AmmoGive 16;
		Weapon.AmmoType "GasCan";
		Weapon.AmmoType2 "GasCan";
		Inventory.Pickupmessage "You got a Flamethrower";
		Inventory.PickUpSound "pickups/weapongrab";
		Tag "Flamethrower";
		Weapon.BobRangeX 0.0;
		Weapon.BobRangeY 0.75;
		//Weapon.BobSpeed 1.5;
	}
	
	States
	{
		Ready:
			FLMG A 1 A_WeaponReady;
			Loop;
		Select:
			TNT1 A 0 A_PlaySound("weapons/pulse/equip");
		Selecting:
			FLMG A 1 A_Raise(25);
			Loop;
		Deselect:
			FLMG A 1 A_Lower(25);
			Loop;
		Fire:
			FLMG BC 1 A_FlameFire();
			Goto Ready;
// 		AltFire:
// 			TNT1 A 0 A_CheckReload;
// 			RIPP B 1;
// 			RIPP C 1;
// 			RIPP D 1 A_PulseAltFire();
// 			RIPP C 1;
// 			RIPP B 2;
// 			Goto Ready;
		Spawn:
			FLMG P -1;
			Stop;
	}
}