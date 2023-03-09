class KnifePuff1 : BulletPuff
{
	Default
	{
		AttackSound "weapons/knife/impact";
		Gravity 3.2;
		Speed 4;
		VSpeed 4;
		Mass 32;
		Projectile;
		+NOBLOCKMAP
		+NOEXTREMEDEATH 
		+FORCEXYBILLBOARD
		+DONTSPLASH
		+BLOODSPLATTER
		-NOGRAVITY
	}
	
	States
	{
		Spawn:
			TNT1 A 0 A_PlaySound("weapons/knife/impact");
			PUFF ABCD 1 BRIGHT;
			Stop;
		Melee:
			PUFF ABCD 1 BRIGHT;
			Stop;
		Death:
			PUFF ABCD 1 BRIGHT;
			Stop;
		XDeath:
			PUFF ABCD 1 BRIGHT;
			Stop;
	}
}

class BulletPuff1 : KnifePuff1
{
	Default
	{
		RenderStyle "Add";
		SeeSound "RICOCHET";
		AttackSound "RICOCHET";
		Radius 2;
		Height 2;
		Scale 1.5;
		Gravity 1.2;
		Speed 4;
		VSpeed 4;
		Mass 8;
		+NOBLOCKMAP
		+NOTELEPORT
		+NODAMAGETHRUST
		+RANDOMIZE
		+Missile
		-SOLID
		+DOOMBOUNCE
	}
	
	States
	{
		Spawn:
			TNT1 A 0 A_PlaySound("RICOCHET");
			PUFF ABCD 1 BRIGHT;
			Stop;
		Melee:
			PUFF ABCD 1 BRIGHT;
			Stop;
		Death:
			PUFF ABCD 1 BRIGHT;
			Stop;
		XDeath:
			PUFF ABCD 1 BRIGHT;
			Stop;
	}
}

class BulletPuff2 : SpacePuff2
{
	Default
	{
		Health 12;	// 24
		RenderStyle "Add";
		SeeSound "RICOCHET";
		AttackSound "RICOCHET";
		Alpha 1.0;
		Scale 0.064;	// 0.56
		Gravity 1.44;
		Speed 1;
		VSpeed 1;
		ReactionTime 250;
		BounceFactor 1.75;
		WallBounceFactor 0.9;
		BounceCount 1;
	}
	
	States
	{
		Spawn:
			TNT1 A 0 A_Jump(255, "Spawn2");
		Spawn2:
			SPRK BBBBBBBB 4 A_CountDown;
			Loop;
		Death:
			SPRK BBBBBB 2 BRIGHT A_FadeOut(0.024);
			Stop;
		XDeath:
			SPRK BBBBBB 2 BRIGHT A_FadeOut(0.024);
			Stop;
		Melee:
			SPRK BBBBBB 2 BRIGHT A_FadeOut(0.024);
			Stop;
		Crash:
			SPRK BBBBBB 2 BRIGHT A_FadeOut(0.024);
			Stop;
	}
}

class SpacePuff2 : BulletPuff1
{
	Default
	{
		Health 24;	// 24
		RenderStyle "Add";
		SeeSound "projectiles/pulsedeath";
		AttackSound "projectiles/pulsedeath";
		Alpha 1.0;
		Scale 1.2;	// 0.56
		Gravity 0.96;
		Speed 1;
		VSpeed 1;
		ReactionTime 250;
		BounceFactor 1.75;
		WallBounceFactor 0.9;
		BounceCount 1;
	}
	
	States
	{
		Spawn:
			TNT1 A 0 A_Jump(255, "Spawn2");
		Spawn2:
			SPRK AAAAAAAA 4 A_CountDown;
			Loop;
		Death:
			SPRK AAAAAA 2 BRIGHT A_FadeOut(0.024);
			Stop;
		XDeath:
			SPRK AAAAAA 2 BRIGHT A_FadeOut(0.024);
			Stop;
		Melee:
			SPRK AAAAAA 2 BRIGHT A_FadeOut(0.024);
			Stop;
		Crash:
			SPRK AAAAAA 2 BRIGHT A_FadeOut(0.024);
			Stop;
	}
}

class BloodPuff1 : Actor	// MEDIUM BLOOD
{
	Default
	{
		Health 270;
		RenderStyle "Normal";
		Alpha 1.0;
		Scale 1.12;	// 0.72
		Gravity 0.88;
		Speed 1;
		VSpeed 1;
		ReactionTime 250;
		+RANDOMIZE
		+Missile
		+NoBlockmap
		-SOLID
	}
	
	States
	{
		Spawn:
			TNT1 A 0 A_Jump(255, "Spawn2");
		Spawn2:
			BPUF AAAAAAAA 4 A_CountDown;
			Loop;
		Death:
			BPUF AAAAAA 2 BRIGHT A_FadeOut(0.072); // 0.024
			Stop;
	}
}

class BloodPuff2 : BloodPuff1	// LOW BLOOD
{
	Default
	{
		Health 32;
	}
}

class BloodPuff3 : BloodPuff1	// LOTS OF BLOOD
{
	Default
	{
		Health 900;
	}
}

class BoneDebris : BloodPuff1	// SKULL
{
	Default
	{
		Health 1;
		Mass 250;
		Gravity 1.6;
		BounceCount 2;
		BounceFactor 0.32;	//0.64
		Alpha 1.0;
		Scale 1.44;
		+DOOMBOUNCE
		+NOEXTREMEDEATH
	}
	
	States
	{
		Spawn:
			WSKL ABCDEFGH 4 A_CountDown;
			Loop;
		Death:
			WSKL I 16;
			Stop;
	}
}

class BoneDebris2 : BoneDebris	// OTHER BONES
{
	Default
	{
		Health 20;
	}
	
	States
	{
		Spawn:
			WSK2 ABCD 4 A_CountDown;
			Loop;
		Death:
			WSK2 E 16;
			Stop;
	}
}

class BoneDebris3 : BoneDebris2
{
	States
	{
		Spawn:
			WSK3 ABCD 4 A_CountDown;
			Loop;
		Death:
			WSK3 A 16;
			Stop;
	}
}

class BoneDebris4 : BoneDebris2
{
	States
	{
		Spawn:
			WSK4 ABCD 4 A_CountDown;
			Loop;
		Death:
			WSK4 E 16;
			Stop;
	}
}

class BrokenGlass : BoneDebris
{
	States
	{
		Spawn:
			GLAS EFGH 4 A_CountDown;
			Loop;
		Death:
			GLAS I 16;
			Stop;
	}
}

//////////
// REMOVE
//////////

Class TerminatorShoulder : Actor
{
  Default
  {
    Radius 8;
    Height 8;
    Speed 8;
    Mass 1000;
    scale 1.2;
    +DOOMBOUNCE
    +DROPOFF
    +Missile
  }

  States
  {
  Spawn:
    TSHO ABCDEFGH 2;
    loop;
  Death:
    TSHO I -1;
    loop;
  }
}