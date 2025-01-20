class WolfFlameThrower : WolfWeapon
{
	action void A_FlameFire()
	{
		A_PlaySound("weapons/flame/fire");
		A_FireProjectile("PlayerFlameBall", 0, 1, 0, 4, 0, 0);
	}
	
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
		Spawn:
			FLMG P -1;
			Stop;
	}
}