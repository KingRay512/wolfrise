class BJ : DoomPlayer
{
	Default
	{
		Speed 1;
		Health 100;
		Radius 16;
		Height 56;	// Changing from 80 back to more "normal" style (maybe 64 or 56)
		Mass 100;
		Scale 1.125;
		PainChance 255;
		DamageFactor "PlayerZap", 0;
		Player.ViewHeight 40;	// 56
		Player.Face "TWO";
		BloodType "BloodPuff1";
		Player.DisplayName "BJ Blazkowicz";
		Player.StartItem "PlayerHasSilencer", 1;
		Player.StartItem "ClassicLuger";
		Player.StartItem "Knife";
		Player.StartItem "KnifeExtras", 5;
		Player.StartItem "SmallAmmo", 32;
		Player.StartItem "SteelGrenades";
		Player.WeaponSlot 1, "Knife";
		Player.WeaponSlot 2, "ClassicLuger";
		Player.WeaponSlot 3, "ClassicMachinegun";
		Player.WeaponSlot 4, "WolfRailgun", "WolfRifle";
		Player.WeaponSlot 5, "FG42";
		Player.WeaponSlot 6, "SteelGrenades";
		Player.WeaponSlot 7, "Tigerfaust";
		Player.WeaponSlot 8, "GatlingGun";
		Player.WeaponSlot 9, "SuperWeapon", "WolfFlameThrower";
		Player.ForwardMove 0.75, 0.9;	// OLD SPEED 0.88, 1.0
		Player.SideMove 0.75, 0.9;		// OLD SPEED 0.88, 1.0
		Player.JumpZ 12;
		Gravity 1.6;
	}

	States
	{
		Spawn:
			PLAY A -1;
			Loop;
		See:
			PLAY BCDE 4;
			Loop;
		Missile:
			PLAY FG 8;
			Goto Spawn;
		Melee:
			PLAY H 6 BRIGHT;
			Goto Missile;
		Pain:
			PLAY I 4;
			PLAY I 4 A_Pain;
			Goto Spawn;
		Death:
			PLAY H 0 A_PlayerSkinCheck("AltSkinDeath");
		Death1:
			PLAY J 10;
			PLAY K 10 A_PlayerScream;
			PLAY L 10 A_NoBlocking;
			PLAY M 10;
			PLAY N -1;
			Stop;
		XDeath:
			PLAY O 0 A_PlayerSkinCheck("AltSkinXDeath");
		XDeath1:
			PLAY O 5;
			PLAY P 5 A_XScream;
			PLAY Q 5 A_NoBlocking;
			PLAY RSTUV 5;
			PLAY W -1;
			Stop;
		AltSkinDeath:
			PLAY H 6;
			PLAY I 6 A_PlayerScream;
			PLAY JK 6;
			PLAY L 6 A_NoBlocking;
			PLAY MNO 6;
			PLAY P -1;
			Stop;
		AltSkinXDeath:
			PLAY Q 5 A_PlayerScream;
			PLAY R 0 A_NoBlocking;
			PLAY R 5 A_SkullPop;
			PLAY STUVWX 5;
			PLAY Y -1;
			Stop;
	}
}