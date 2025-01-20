class WolfScore : Inventory
{
	Default
	{
		Inventory.Amount 1;
		Inventory.MaxAmount 9999999;
	}
}

class WolfTreasure : CustomInventory
{
	Default
	{
		//$Category Wolfenstein / Treasure
		Radius 10;
		Height 16;
		Scale 1.0;
		Inventory.Pickupsound "FINDGOLD";
		+INVENTORY.ALWAYSPICKUP
		+COUNTITEM
	}
}

class WolfCross : WolfTreasure
{
	Default
	{
		Inventory.Pickupsound "adlib/bonus1";
		Inventory.PickupMessage "You picked up a Gold Cross (+100 points)";
	}
	
	States
	{
		Spawn:
			CROS A -1 BRIGHT A_GiveInventory("WolfScore", 100);
			stop;
		Pickup:
			TNT1 A 0;
	}
}

class WolfChalice : WolfTreasure
{
	Default
	{
		Inventory.Pickupsound "adlib/bonus2";
		Inventory.PickupMessage "You picked up a Gold Chalice (+500 points)";
	}
	
	States
	{
		Spawn:
			CHAL A -1 BRIGHT A_GiveInventory("WolfScore", 500);
			stop;
		Pickup:
			TNT1 A 0;
	}
}

class WolfGoldChest : WolfTreasure
{
	Default
	{
		Inventory.Pickupsound "adlib/bonus3";
		Inventory.PickupMessage "You picked up a box full of treasure! (+1000 points)";
	}
	
	States
	{
		Spawn:
			TRES A -1 BRIGHT A_GiveInventory("WolfScore", 1000);
			stop;
		Pickup:
			TNT1 A 0;
	}
}

class WolfCrown : WolfTreasure
{
	Default
	{
		Inventory.Pickupsound "adlib/bonus4";
		Inventory.PickupMessage "You picked up a Royal Crown! (+5000 points)";
	}
	
	States
	{
		Spawn:
			CROW A -1 BRIGHT A_GiveInventory("WolfScore", 5000);
			stop;
		Pickup:
			TNT1 A 0;
	}
}