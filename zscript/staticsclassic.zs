class ClassicStaticsBlocking : Actor
{
	Default
	{
		//$Category Decoration / Objects / Classic
		Radius 32;
		Height 32;
		Scale 1.0;
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

class ClassicFloorFlag : ClassicStaticsBlocking
{
	States
	{
		Spawn:
			FFLG A -1;
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

class TableAndChair1 : ClassicStaticsBlocking
{
	Default
	{
		//$Category Decoration / Objects
	}
	
	States
	{
		Spawn:
			TAB1 A -1;
			Stop;
	}
}