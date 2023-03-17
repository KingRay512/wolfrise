class FlameBall : WolfFastProjectile
{
	Default
	{
		Speed 56;
		Damage 4;
		Scale 0.64;
		Radius 3;
		Height 6;
		MissileType "FlameTrail";
		DamageType "Flame";
		// SeeSound "FLAMFIRE";
		DeathSound "projectiles/pulsedeath";
	}
	
	States
	{
		Spawn:
			FBOL AB 1 BRIGHT A_FadeOut(0.064);
		Death:
			FLAM CFGH 2 Bright;
			TNT1 A 0 A_SpawnItem("FlameImpact", 0, 0, false, 0);
			Stop;
	}
}

class FlameTrail : WolfFastProjectile
{ 
	Default
	{
		Alpha 0.32; //.75
		RenderStyle "Add";
		Speed 0;
		MissileType "FlameTrail";
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 0.64;
	}
	
	States
	{
		Spawn:
			FBOL A 3 BRIGHT A_FadeOut(0.32);
			Loop;
		Death:
			FLAM CFGH 2 Bright;
			Stop;
	}
}

class PlayerFlameBall : FlameBall
{
	Default
	{
		Speed 48;
		Damage 4;
		Scale 0.28;
		Radius 6;
		Height 12;
		MissileType "PlayerFlameTrail";
	}
	
	States
	{
		Spawn:
			FBOL AB 1 BRIGHT A_FadeOut(0.064);
		Death:
			//TNT1 A 0 A_DropItem("FlameImpact");
			FLAM CFGH 2 Bright;
			TNT1 A 0 A_SpawnItem("FlameImpact", 0, 0, false, 0);
			Stop;
	}
}

class PlayerFlameTrail : FlameTrail
{ 
	Default
	{
		MissileType "PlayerFlameTrail";
		Scale 0.28;
	}
	
	States
	{
		Spawn:
			FBOL A 3 BRIGHT A_FadeOut(0.32);
			Loop;
		Death:
			FLAM CFGH 2 Bright;
			Stop;
	}
}

class FlameImpact : Actor
{
	Default
	{
		Radius 32;
		Height 32;
		Alpha 1.0;
		RenderStyle "Add";
		Scale 0.88;
		Gravity 0.2;
		Obituary "Blazko got blazed.";
		ExplosionRadius 640;
	}
	
	States
	{
		Spawn:
			FLBE ABCD 2 Bright A_Explode(8, 64);
		See:
			FLBE DEFGDEFGDEFG 2 Bright A_Explode(8, 64);
		Death:
			FLBE HIJK 2 Bright
			{
				A_Explode(8, 64);
				A_FadeOut(0.048);
			}
			Stop;
	}
}

class FlameTrap : FlameBall
{
	Default
	{
		MissileType "";
		Height 48;
		Radius 24;
		Scale 1.6;
		Damage 100;
		DeathSound "";
	}
	
	States
	{
		Spawn:
			FBOL A 1 BRIGHT;
			Loop;
	}
}