class WolfArmour : BasicArmorBonus
{
	Default
	{
		//$Category Armour
		Radius 20;
		Height 16;
		Scale 0.64;
		Inventory.Pickupmessage "You picked up some armour! (+100 Armour)";
		Armor.Savepercent 100; //75
		Armor.Saveamount 100;
		Armor.Maxsaveamount 100;
		-INVENTORY.ALWAYSPICKUP
	}
	
	States
	{
		Spawn:
		ARMP B -1;
		stop;
	}
}

class BlackArmour : WolfArmour
{
	Default
	{
		//$Category Armour
		Radius 20;
		Height 20;
		Scale 0.5;
		DamageFactor "Flame", 0.2;
		DamageFactor "ExplosiveDamage", 0.2;
		Inventory.Pickupmessage "EISEN ARMOUR! (+250 Armour)";
		Armor.Savepercent 100; //75
		Armor.Saveamount 250;
		Armor.Maxsaveamount 250;
		+FLOATBOB
		+NOGRAVITY
		-INVENTORY.ALWAYSPICKUP
	}
	
	States
	{
		Spawn:
		BARM ABCDEFEDCB 3;
		Loop;
	}
}

class WolfSmallHelmet : WolfArmour
{
	Default
	{
		//$Category Armour
		Radius 16;
		Height 16;
		Inventory.Pickupmessage "You picked up a light space helmet (+5 Armour)";
		Armor.Savepercent 50;
		Armor.Saveamount 10;
		Armor.Maxsaveamount 100;
		Inventory.PickupSound "pickups/armour";
		Scale 1.2;
		+FLOATBOB
		+NOGRAVITY
	}
	
	States
	{
		Spawn:
		ARMP C -1 BRIGHT;
		stop;
	}
}

class WolfSmallHelmet2 : WolfArmour
{
	Default
	{
		//$Category Armour
		Radius 8;
		Height 8;
		Inventory.Pickupmessage "You picked up a light helmet (+10 Armour)";
		Armor.Savepercent 50;
		Armor.Saveamount 10;
		Armor.Maxsaveamount 100;
		Inventory.PickupSound "pickups/armour";
		Scale 1.25;
		+FLOATBOB
		+NOGRAVITY
	}
	
	States
	{
		Spawn:
		HLMT ABCDEFGH 3 BRIGHT;
		Loop;
	}
}