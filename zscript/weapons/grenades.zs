class GrenadeAmmo : Ammo
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 10;	// 5
		Inventory.PickUpSound "PICKAMMO";
		Inventory.Pickupmessage "You picked up a grenade";
		Radius 18;
		Height 12;
	}
	
	States
	{
		Spawn:
			NADE P -1;
			Stop;
	}
}

class GrenadeThrow : Actor
{
	Default
	{
		Radius 5;
		Height 10;
		Speed 50;
		VSpeed 16;
		Damage 48;
		Gravity 1.5;
		Projectile;
		BounceType "Grenade";
		BounceCount 3;
		BounceFactor 0.3;	//0.64
		WallBounceFactor 0.3;
		DamageType "ExplosiveDamage";
		SeeSound "weapons/grenade/bounce";
		ActiveSound "weapons/grenade/bounce";
		DeathSound "weapons/tiger/explode";
		+MISSILE
		-NOGRAVITY
	}
	
	States
	{
		Spawn:
			NADE ABAB 3 BRIGHT;
			Loop;
		Bounce:
			NADE ABAB 3 A_PlaySound("weapons/grenade/bounce");
		Death:
			TNT1 A 0
			{
				A_AlertMonsters(960);
				A_SetScale(2.1);
			}
			ROCK D 2 Bright A_Explode(64, 200);
			ROCK EFGH 3 Bright;
			Stop;
	}
}