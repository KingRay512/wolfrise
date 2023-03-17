class WolfRocket : FastProjectile
{
	Default
	{
		Radius 16;
		Height 8;
		Speed 96;
		Damage 64;	// 48
		Projectile;
		Scale 1.2;
		DamageType "ExplosiveDamage";
		MissileType "WolfRocketTrail";
		SeeSound "weapons/tiger/fire";
		DeathSound "weapons/tiger/explode";
		Obituary "%o blew it";
		+RANDOMIZE
		+ROCKETTRAIL
	}
	
	States
	{
		Spawn:
			ROCK A 1 BRIGHT;
			Loop;
		Death:
			TNT1 A 0 A_SetScale(2.1);
			ROCK D 2 Bright A_Explode(120, 256);	// 64, 200
			ROCK EFGH 3 Bright;
			Stop;
	}
}

class WolfRocketSuper : WolfRocket
{
	Default
	{
		Speed 100;
		FastSpeed 100;
		Damage 48;
		SeeSound "SUPRRCKT";
		Scale 0.8;
	}
}

class NaziRocket : WolfRocket
{
	Default
	{
		Speed 44;
	}
}

class WolfRocketTrail : BulletTrail
{ 
	Default
	{
		Alpha 0.24; //.75
		Scale 1;
	}
	
	States
	{
	Spawn:
		EBO2 AB 2 BRIGHT A_FadeOut(0.088);
		Loop;
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