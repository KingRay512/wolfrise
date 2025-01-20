class NaziLaserTarget : WolfFastProjectile
{
	Default
	{
		RenderStyle "Add";
		Radius 0;
		Height 0;
		Speed 200;
		Damage 0;
		Scale 0.24;	// Scale 2.4
		MissileType "NaziLaserTrail";
		SeeSound "weapons/warning";
		Projectile;
		+RANDOMIZE
		+DONTSPLASH
		+BOSS
		-RIPPER
	}
	
	States
	{
		Spawn:
			LASR A 1 BRIGHT;
			Loop;
		Death:
			LASR A 5 Bright /*A_SetScale(0.64, 0.64)*/;
			Stop;
	}
}

class NaziLaserTrail : WolfFastProjectile
{
	Default
	{
		Alpha 1.0; //.75
		RenderStyle "Add";
		Scale 0.24;	// Scale 2.4
		+DONTSPLASH
		-RIPPER
	}
	
	States
	{
		Spawn:
		LASR AAAAAAAAAAAA 1 BRIGHT
		{
			A_FadeOut(0.025);
		}
		Loop;
	}
}