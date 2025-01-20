class WolfFastProjectile : FastProjectile
{
	Default
	{
		Projectile;
		MissileHeight -8;
	}
}

class Electrobolt : WolfFastProjectile
{
	Default
	{
		Radius 6;
		Height 12;
		Speed 40;
		FastSpeed 50;
		Damage 4;
		scale 0.8;
		Projectile;
		MissileHeight 0;
		//SeeSound "BLASTER1";
		DeathSound "BLASTHIT";
		Obituary "$OB_MPROCKET";
		+RANDOMIZE
		+ROCKETTRAIL
	}
	
	States
	{
		Spawn:
			EBOL ABCD 3 BRIGHT;
			Loop;
		Death:
			EBOL EFG 5 Bright;
			Stop;
	}
}

class ElectroboltRed : Electrobolt
{
	Default
	{
		SeeSound "FLAMFIRE";
		MissileType "Electroboltred_Trail";
	}
	
	States
	{
		Spawn:
			EBO2 AB 3 BRIGHT;
			Loop;
		Death:
			EBO2 CDE 5 Bright;
			Stop;
	}
}

class Electroboltred_Trail : BulletTrail
{ 
	Default
	{
		Alpha 0.75; //.75
		RenderStyle "Add";
		Speed 0;
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 0.32;
	}
	
	States
	{
	Spawn:
		EBO2 A 1 BRIGHT A_FadeOut(0.05);
		Loop;
	}
}

////////////////////////
// SPEAR BALL & TRAIL
////////////////////////

class SpearBall : WolfFastProjectile
{
	Default
	{
		Speed 24;	// 66
		Damage 66;	//66
		Scale 0.2;
		MissileType "SpearBallTrail";
		SeeSound "weapons/spear/attack2";
	}
	
	States
	{
		Spawn:
			SPB1 AB 3 BRIGHT;
			Loop;
		Death:
			EBO2 CDE 5 Bright;
			Stop;
	}
}

class SpearBallTrail : WolfFastProjectile
{
	Default
	{
		RenderStyle "Add";
		Alpha 0.4;
		Scale 0.2;
	}
	
	States
	{
	Spawn:
		SPB1 A 1 BRIGHT A_FadeOut(0.072);
		Loop;
	}
}

////////////////////////
// PULSE LASER & TRAIL
////////////////////////

class PulseBall : WolfFastProjectile
{
	Default
	{
		Speed 80;	// 80
		Damage 20;
		Scale 0.24;
		MissileType "PulseTrail";
		DeathSound "projectiles/pulsedeath";
	}
}

class PulseTrail : BulletTrail
{ 
	Default
	{
		Alpha 0.75; //.75
		RenderStyle "Add";
		Speed 0;
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 0.32;
	}
	
	States
	{
	Spawn:
		EBOL A 1 BRIGHT A_FadeOut(0.05);
		Loop;
	}
}

////////////////////////
// UBERBALL
////////////////////////

class UberBall : ElectroBolt
{
	Default
	{
		Height 32;
		Radius 16;
		Speed 64;
		Damage 48;
		Scale 1.0;
		MissileType "UberTrail";
		SeeSound "";
		DeathSound "projectiles/pulsedeath";
	}
	
	States
	{
		Spawn:
			UBBL AB 3 BRIGHT;
			Loop;
		Death:
			TNT1 A 0 A_SetScale(2.0, 2.0);
			TNT1 A 0
			{
				A_SpawnProjectile("PlayerZap", 0, 0, -180, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -175, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -170, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -165, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -160, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -155, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -150, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -145, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -140, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -135, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -130, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -125, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -120, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -115, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -110, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -105, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -100, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -95, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -90, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -85, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -80, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -75, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -70, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -65, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -60, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -55, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -50, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -45, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -40, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -35, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -30, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -25, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -20, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -15, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -10, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, -5, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 0, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 5, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 10, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 15, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 20, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 25, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 30, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 35, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 40, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 45, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 50, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 55, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 60, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 65, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 70, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 75, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 80, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 85, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 90, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 95, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 100, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 105, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 110, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 115, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 120, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 125, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 130, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 135, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 140, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 145, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 150, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 155, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 160, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 165, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 170, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 175, 0, 0);
				A_SpawnProjectile("PlayerZap", 0, 0, 180, 0, 0);
			}
			UBXP ABCDEF 5 BRIGHT;
			Stop;
	}
}

class UberTrail : BulletTrail
{ 
	Default
	{
		Alpha 0.48; //.75
		RenderStyle "Add";
		Speed 0;
		MissileType "UberTrail";
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 1.0;
	}
	
	States
	{
	Spawn:
		UBBL A 1 BRIGHT A_FadeOut(0.04);
		Loop;
	}
}

////////////////////////
// BASIC LASER & TRAIL
////////////////////////

class SMGBall : Pulseball
{
	Default
	{
		Speed 224;	// 80
		Damage 12;
		Scale 0.56;
		MissileType "SMGBallTrail";
		DeathSound "projectiles/pulsedeath";
	}
	
	States
	{
		Spawn:
		GBAL A 1 BRIGHT;
		Death:
		EBO2 CDE 5 Bright;
		Stop;
	}
}

class SMGBallTrail : BulletTrail
{ 
	Default
	{
		Alpha 0.96; //.75
		RenderStyle "Add";
		Speed 0;
		MissileType "SMGBallTrail";
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 0.48;
	}
	
	States
	{
	Spawn:
		GBAL A 1 BRIGHT A_FadeOut(0.096);
		Loop;
	}
}

////////////////////////
// RAIL LASER & TRAIL
////////////////////////

class RailLaser : Electrobolt
{
	Default
	{
		Alpha 1.0;
		Speed 320;	// 768
		Damage 120;
		Scale 0.48;	// 1.44
		MissileType "RailTrail";
		DeathSound "projectiles/pulsedeath";
		+RIPPER
	}
	
	States
	{
	Spawn:
		EBOL AAAA 1 BRIGHT A_FadeOut(0.032);	// 0.016
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

class RailTrail : BulletTrail
{ 
	Default
	{
		Alpha 1.0;
		RenderStyle "Add";
		Speed 0;
		MissileType "RailTrail";
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		+RIPPER
		Scale 0.64;	// 0.64
	}
	
	States
	{
	Spawn:
		EBOL AAAA 1 BRIGHT A_FadeOut(0.024);	// 0.016
		Loop;
	}
}