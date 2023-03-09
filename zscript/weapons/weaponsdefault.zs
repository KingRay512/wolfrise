class WolfWeapon : Weapon
{
	Default
	{
		//$Category Wolfenstein / Weapons
		//Weapon.BobStyle "InverseSmooth";
		Weapon.BobStyle "InverseAlpha"; //Inverse
		Weapon.BobRangeX 0.32;
		Weapon.BobRangeY 1.0;
		Weapon.BobSpeed 1.76; //1.92
// 		Weapon.WeaponScaleX 0.72;
// 		Weapon.WeaponScaleY 0.86;
		Scale 1.5;
		+WEAPON.NOAUTOAIM;
	}
}