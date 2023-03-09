class BJSphere : UpgradeStamina	// MaxHealth
{
	Default
	{
		//$Category Wolfenstein / Health
		Height 12;
		Radius 10;
		Inventory.Amount 25;
		Inventory.MaxAmount 100;
		Inventory.PickupMessage "You absorbed a power sphere (Max Health +25)";
		Inventory.pickupsound "POWRPICK";
		Scale 1.2;
		+FLOATBOB
		+NOGRAVITY
	}
	
	States
	{
		Spawn:
			PWR1 ABCDEFGFEDCB 2 Bright;
			Loop;
	}
}