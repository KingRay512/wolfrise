class SmallAmmo : Ammo
{
	Default
	{
		//$Category Ammo
		Radius 20;
		Height 24;
		Scale 1.92;
		Inventory.Amount 12;
		Inventory.MaxAmount 160;
		Inventory.PickUpSound "PICKAMMO";
		Inventory.Pickupmessage "You picked up a clip";
	}
	
	States
	{
		Spawn:
			CLIP A -1;
			stop;
	}
}

class BoxAmmo : SmallAmmo
{
	Default
	{
		//$Category Ammo
		Radius 16;
		Height 24;
		Scale 1.2;
		Inventory.Amount 24;
		Inventory.Pickupmessage "You picked up an ammo box";
	}
	
	States
	{
		Spawn:
			CLI4 A -1;
			stop;
	}
}

class HeavyAmmo : Ammo
{
	Default
	{
		//$Category Ammo
		Inventory.Amount 50;
		Inventory.MaxAmount 500;
		Inventory.PickUpSound "PICKAMMO";
		Inventory.Pickupmessage "You picked up Chaingun Ammo";
		Scale 1.44;
		Radius 32;
		Height 40;
	}
	
	States
	{
		Spawn:
			CLI3 A -1;
			stop;
	}
}

class WolfRockets : Ammo
{
	Default
	{
		//$Category Ammo
		Inventory.Amount 5;
		Inventory.MaxAmount 25;
		Inventory.Pickupmessage "You picked up a box of rockets (+5 Rockets)";
		Scale 1.36;
	}
	
	States
	{
		Spawn:
			BOXR A -1;
			stop;
	}
}

class RifleAmmo : Ammo
{
	Default
	{
		//$Category Ammo
		Inventory.Amount 5;
		Inventory.MaxAmount 50;
		Inventory.Pickupmessage "You picked up a Rifle clip (+5 Rounds)";
	}
	
	States
	{
		Spawn:
			CLI3 A -1;
			stop;
	}
}

class PulseAmmo : Ammo
{
	Default
	{
		Inventory.Amount 10;
		Inventory.MaxAmount 300;
		Inventory.PickupMessage "You picked up some Pulse cells";
	}
}

class GasCan : Ammo
{
	Default
	{
		Scale 1.28;
		Radius 18;
		Height 24;
		Inventory.Amount 20;
		Inventory.MaxAmount 500;
		Inventory.PickupMessage "You picked up a gas can (+20 Flame Ammo)";
	}
	
	States
	{
		Spawn:
			GCAN A -1;
			Stop;
	}
}