class FlameBall : WolfFastProjectile
{
	Default
	{
		Alpha 1.0;
		Speed 56;
		Damage 4;
		Scale 0.5;
		Radius 3;
		Height 6;
		//MissileType "FlameTrail";
		RenderStyle "Add";
		DamageType "Flame";
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
		RenderStyle "Add";
		Speed 0;
		MissileType "FlameTrail";
		+NOBLOCKMAP
		+NOGRAVITY
		+NOTELEPORT
		+CANNOTPUSH
		+NODAMAGETHRUST
		Scale 0.5;
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
		//MissileType "PlayerFlameTrail";
	}
	
	States
	{
		Spawn:
			FBOL AB 1 BRIGHT A_FadeOut(0.064);
		Death:
			//TNT1 A 0 A_DropItem("FlameImpact");
			FLAM CFGH 2 Bright;
			// TNT1 A 0 A_SpawnItem("FlameImpact", 0, 0, false, 0);
			Stop;
	}
}

// class PlayerFlameTrail : FlameTrail
// { 
// 	Default
// 	{
// 		MissileType "PlayerFlameTrail";
// 		Scale 0.28;
// 	}
	
// 	States
// 	{
// 		Spawn:
// 			FBOL A 3 BRIGHT A_FadeOut(0.32);
// 			Loop;
// 		Death:
// 			FLAM CFGH 2 Bright;
// 			Stop;
// 	}
// }

class FlameImpact : Actor
{
	Default
	{
		Alpha 10;
		Radius 32;
		Height 32;
		RenderStyle "Add";
		Scale 0.5;
		Gravity 0.5; // 0.2
		Obituary "Blazko got blazed.";
		ExplosionRadius 480;
	}
	
	States
	{
		Spawn:
			FLBE ABCD 2 Bright A_Explode(8, 64);
		See:
			FLBE DEFG 2 Bright A_Explode(8, 64);
		Death:
			FLBE HIJK 2 Bright
			{
				A_Explode(8, 64);
				A_FadeOut(0.08);
			}
			Stop;
	}
}