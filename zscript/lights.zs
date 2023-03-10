class LightSwitch : SwitchableDecoration
{
	Default
	{
		//$Arg0 Light On/Off
		//$Arg0Type 11
		//$Arg0Enum OffOn
		//$Arg1 Affected Lights (Tag)
		//$Arg1Type 14
		Radius 20;
		Height 32;
		Activation THINGSPEC_Switch;
		+USESPECIAL
		+FLATSPRITE
		+NOGRAVITY
	}

	States
	{
		Spawn:
			TNT1 A 0 A_JumpIf(args[0] == 0, "Inactive");
			TNT1 A 0 A_JumpIf(args[0] == 1, "Active");
			SWTC A -1;
			Stop;
		Inactive:
			TNT1 A 0 Thing_Deactivate(args[1]);
			TNT1 A 0 A_PlaySound("movers/switch1");
			SWTC A -1;
			Stop;
		Active:
			TNT1 A 0 Thing_Activate(args[1]);
			TNT1 A 0 A_PlaySound("movers/switch1");
			SWTC B -1;
			Stop;
	}
}

class CeilingLight1 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		// Height 13;
		Radius 8;
		Height 51;
		+NOGRAVITY
		+SPAWNCEILING
	}

	States
	{
		Spawn:
			LAM3 A -1;
			Stop;
	}
}

class CeilingLight2 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 14;
		Height 24;
		Scale 1.6;
		+SOLID
		+NOGRAVITY
		+SPAWNCEILING
	}
	
	States
	{
		Spawn:
			BUL1 A 0 A_Jump(255, "On");
		On:
			BUL1 A -1;
			Stop;
		Off:
			BUL1 B -1;
			Stop;
	}
}

class CeilingLight3 : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 16;
		Height 20;
		Scale 1.44;
		+SOLID
		+NOGRAVITY
		+SPAWNCEILING
	}
	
	States
	{
		Spawn:
			BUL2 A 0 A_Jump(255, "On");
		On:
			BUL2 A -1;
			Stop;
		Off:
			BUL2 B -1;
			Stop;
	}
}

class Klaxon : Actor
{
	Default
	{
		//$Category Decoration / Objects
		Radius 8;
		Height 16;
		+SOLID
		+NOGRAVITY
		+SPAWNCEILING
	}
	
	states
	{
		Spawn:
			TNT1 A 0 A_Jump(255, "Off");
		Off:
			KLAX C -1;
			Stop;
		On:
			KLAX ABCD 2 BRIGHT;
			Loop;
	}
}