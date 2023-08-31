class DogFood : Health
{
	Default
	{
		//$Category Wolfenstein / Health
		Inventory.Amount 5;
		Inventory.PickupMessage "You ate some dog food (+5 Health)";
		Inventory.pickupsound "EATFOOD";
		Scale 2.0;
	}
	
	States
	{
		Spawn:
			DFOD A -1;
			Stop;
	}
}

// Food

class Food1 : Health
{
	Default
	{
		//$Category Wolfenstein / Health
		Inventory.Amount 10;
		Inventory.PickupMessage "You ate some food (+10 Health)";
		Inventory.pickupsound "EATFOOD";
	}
	
	States
	{
		Spawn:
			FOOD A -1;
			Stop;
	}
}

// Medikit

class MiniFA : Health
{
	Default
	{
		//$Category Wolfenstein / Health
		Inventory.Amount 10;
		Inventory.PickupMessage "You picked up a stimpack (+10 Health)";
		Inventory.pickupsound "GRABHLTH";
	}
	
	States
	{
	Spawn:
		MEDK B -1;
		Stop;
	}
}

// First Aid Kit

class FirstAid1 : Health
{
	Default
	{
		//$Category Wolfenstein / Health
		Inventory.Amount 25;
		Inventory.PickupMessage "You picked up a First Aid Kit (+25 Health)";
		Inventory.pickupsound "GRABHLTH";
	}
	
	States
	{
	Spawn:
		MEDK A -1;
		Stop;
	}
}

// Portable Health

class PortableFA : Ammo
{
	Default
	{
		//$Category Wolfenstein / Health
		Radius 25;
		Height 28;
		Inventory.Amount 1;
		Inventory.MaxAmount 4;
		Inventory.PickupMessage "You picked up a Portable First Aid Kit (+25 Health)";
		Inventory.pickupsound "GRABHLTH";
	}
	
	States
	{
		Spawn:
			MEDK A -1;
			Stop;
	}
}