class NaziBullet : FastProjectile
{
	Default
	{
		RenderStyle "Add";
		Obituary "$OB_MPROCKET";
		Radius 6;
		Height 6;
		Speed 64;	// 32
		Damage 2;
		Scale 0.125;
		MissileType "BulletTrail";
		Projectile;
	}
	
	States
	{
		Spawn:
			BULL A 1 BRIGHT;
			Loop;
		Death:
			BULL A 0 A_SpawnDebris("BulletPuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
		XDeath:
			BULL A 0 A_SpawnDebris("BulletPuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
		Crash:
			BULL A 0 A_SpawnDebris("BulletPuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
		Melee:
			BULL A 0 A_SpawnDebris("BulletPuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
	}
}

class NaziBullet2 : NaziBullet
{
	Default
	{
		Damage 12;
		Speed 120;	// 32
		MissileType "BulletTrail";
	}
}

class NaziBullet_Hard : NaziBullet
{
	Default
	{
		Speed 80;	// 32
		MissileType "BulletTrail";
	}
}

class PlayerBullet : NaziBullet
{
	Default
	{
		Damage 12;
		Speed 192;
	}
}

class PlayerBullet2 : NaziBullet
{
	Default
	{
		Damage 64;
		Speed 350;
	}
}

class PlayerVenomBullet : PlayerBullet
{
	Default
	{
		Damage 4;
		Speed 192;
		Scale 0.16;	// 0.32
		DamageType "VenomBullet";
		//MissileType "PlayerBulletTrail";
	}
}

class BulletTrail : FastProjectile
{ 
	Default
	{
		Alpha 0.72; //.75
		RenderStyle "Add";
		Speed 0;	// 216
		Height 8;
		Radius 0;
		MissileHeight 0;
		+NOGRAVITY
		+NOINTERACTION
		+FORCEXYBILLBOARD
		Scale 0.15; // 0.32
	}
	
	States
	{
	Spawn:
		BULL A 1 BRIGHT A_FadeOut(0.25);
		Loop;
	}
}

class SpaceBullet : PlayerBullet
{
	Default
	{
		Damage 10;
		MissileType "SpaceBulletTrail";
		Scale 0.088;	// 0.24
		Speed 72;
	}
	
	States
	{
		Spawn:
			BUL9 A 1 BRIGHT;
			Loop;
		Death:
			BUL9 A 0 A_SpawnDebris("SpacePuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
		XDeath:
			BUL9 A 0 A_SpawnDebris("SpacePuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
		Crash:
			BUL9 A 0 A_SpawnDebris("SpacePuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
		Melee:
			BUL9 A 0 A_SpawnDebris("SpacePuff2", false, random(0.75, 1.5), random(0.75, 1.5));
			Stop;
	}
}

class SpaceBulletTrail : BulletTrail
{
	Default
	{
		Alpha 1.0;
		RenderStyle "Add";
		MissileType "SpaceBulletTrail";
		Scale 0.096;
		Speed 0;
	}
	
	States
	{
		Spawn:
			BUL9 A 1 BRIGHT A_FadeOut(0.08);
			Loop;
	}
}



