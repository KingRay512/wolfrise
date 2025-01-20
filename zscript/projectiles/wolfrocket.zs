class WolfRocket : FastProjectile
{
	Default
	{
		Radius 16;
		Height 8;
		Speed 48;
		Damage 64;
		Projectile;
		Scale 1.92;
		DamageType "ExplosiveDamage";
		MissileType "WolfRocketTrail";
		SeeSound "weapons/tiger/fire";
		DeathSound "weapons/tiger/explode";
		Obituary "%o blew it";
		MissileHeight 8;
		+RANDOMIZE
		+ROCKETTRAIL
	}
	
	States
	{
		Spawn:
			CRCK A 1 BRIGHT;
			Loop;
		Death:
			//TNT1 A 0 A_SetScale(1.0);
			BNG3 A 1 Bright A_Explode(120, 160);	// 64, 200
			BNG3 BCDEFGH 1 Bright;
			Stop;
	}
}

class NaziRocket : WolfRocket
{
	Default
	{
		Scale 0.88;
		Speed 22;
		Damage 64;
	}

	States
	{
		Spawn:
			CRCK A 1 BRIGHT;
			Loop;
		Death:
			//TNT1 A 0 A_SetScale(1.0);
			BNG3 A 1 Bright A_Explode(80, 250);	// 64, 200
			BNG3 BCDEFGH 1 Bright;
			Stop;
	}
}

class WolfRocketTrail : BulletTrail
{ 
	Default
	{
		RenderStyle "Normal";
		Alpha 0.64; //.75
		Scale 0.5;
	}
	
	States
	{
	Spawn:
		// EBO2 AB 2 BRIGHT A_FadeOut(0.088);
		ROCK B 1 A_FadeOut(0.25);
		Loop;
	}
}

class ClassicRocket : WolfRocket
{
	Default
	{
		Speed 32;
		Scale 1.2;
		MissileType "WolfRocketTrail";
	}
	
	States
	{
		Spawn:
			CRCK A 1 BRIGHT;
			Loop;
		Death:
			TNT1 A 0 A_SetScale(2.1);
			ROCK D 2 Bright A_Explode(120, 256);	// 64, 200
			ROCK EFGH 3 Bright;
			Stop;
	}
}

class Explosion : Rocket
{
	Default
	{
	}
	
	States
	{
		Spawn:
			MISL BC 3 bright;
			TNT1 A 0 A_PlaySound("weapons/tiger/explode");
			MISL D 3 bright A_Explode;
			stop;
	}
}