class JackStone : Actor
{
	Default
	{
		//$Category NPC
		Radius 22;
		Height 68;
		Mass 3000;
	}
  
	States
	{
	Spawn:
		JSTO A 10 A_Look;
		Loop;
	See:
		JSTO A 3 A_Chase;
		Loop;
	}
}