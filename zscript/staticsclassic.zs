class ClassicStaticsBlocking : Actor
{
	Default
	{
		//$Category Decoration / Objects / Classic
		Radius 48;
		Height 128;
		Scale 2.0;
		+SOLID
	}
}

class ClassicStatics : ClassicStaticsBlocking
{
	Default
	{
		Height 32;
		Radius 32;
		-SOLID
	}
}

class SteelColumn : ClassicStaticsBlocking
{	
	States
	{
		Spawn:
			SCOL A -1;
			Stop;
	}
}

class ClassicTree : ClassicStaticsBlocking
{
	States
	{
		Spawn:
			TREE A -1;
			Stop;
	}
}

class ClassicBush : ClassicStatics
{
	States
	{
		Spawn:
			SMLB A -1;
			Stop;
	}
}

class FireTorch : ClassicStaticsBlocking
{
	States
	{
		Spawn:
			FTOR ABCD 3;
			Loop;
	}
}