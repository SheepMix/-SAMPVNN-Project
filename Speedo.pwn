#include <a_samp>
#include <streamer>
#include <sscanf2>
#include <zcmd>
new PlayerText:TDEditor_PTD[MAX_PLAYERS][9]; //Speedo
#pragma tabsize 0

main()
{
	print("\n----------------------------------");
	print("  Bare Script\n");
	print("----------------------------------\n");
}

stock CreatePlayerSpeedo(playerid)
{
	TDEditor_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 640.453979, 347.500000, "box");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][0], 0.000000, 10.327964);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][0], 471.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, TDEditor_PTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][0], 101);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][0], 0);

	TDEditor_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 478.345550, 387.749969, "box");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][1], 0.000000, 5.830162);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][1], 481.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][1], 0);

	TDEditor_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 487.715972, 381.333282, "box");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][2], 0.000000, 6.579795);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][2], 492.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][2], 255);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][2], 0);

	TDEditor_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 498.960327, 370.833251, "box");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][3], 0.000000, 7.751098);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][3], 503.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][3], 255);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][3], 0);

	TDEditor_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 509.736450, 359.749877, "box");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][4], 0.000000, 8.969253);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][4], 514.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][4], 255);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][4], 0);

	TDEditor_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 520.981018, 351.583160, "box");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][5], 0.000000, 9.906295);
	PlayerTextDrawTextSize(playerid, TDEditor_PTD[playerid][5], 524.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][5], 255);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][5], 0);

	TDEditor_PTD[playerid][6] = CreatePlayerTextDraw(playerid, 533.631042, 351.000030, "THONG_TIN_XE");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][6], 0.336281, 1.699167);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][6], 0);

	TDEditor_PTD[playerid][7] = CreatePlayerTextDraw(playerid, 528.008972, 368.499877, "LOAI_XE:_Infernus");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][7], 0.201346, 1.360832);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][7], 0);

	TDEditor_PTD[playerid][8] = CreatePlayerTextDraw(playerid, 527.540283, 382.499969, "TOC_DO:_50/MPH");
	PlayerTextDrawLetterSize(playerid, TDEditor_PTD[playerid][8], 0.254289, 1.611667);
	PlayerTextDrawAlignment(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, TDEditor_PTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, TDEditor_PTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, TDEditor_PTD[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, TDEditor_PTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, TDEditor_PTD[playerid][8], 0);
	return 1;
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~w~SA-MP: ~r~Bare Script",5000,5);
	CreatePlayerSpeedo(playerid);
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid,0);
	TogglePlayerClock(playerid,0);
	return 1;
}

SetupPlayerForClassSelection(playerid)
{
 	SetPlayerInterior(playerid,14);
	SetPlayerPos(playerid,258.4893,-41.4008,1002.0234);
	SetPlayerFacingAngle(playerid, 270.0);
	SetPlayerCameraPos(playerid,256.0815,-43.0475,1004.0234);
	SetPlayerCameraLookAt(playerid,258.4893,-41.4008,1002.0234);
}

public OnPlayerRequestClass(playerid, classid)
{
	SetupPlayerForClassSelection(playerid);
	return 1;
}

public OnGameModeInit()
{
	SetGameModeText("Bare Script");
	ShowPlayerMarkers(1);
	ShowNameTags(1);
	AllowAdminTeleport(1);

	AddPlayerClass(265,1958.3783,1343.1572,15.3746,270.1425,0,0,0,0,-1,-1);
	return 1;
}
//Speedo-------------------------------------------------------------------------
new VehicleFriendlyNames[212][] = {
        {"Landstalker"},{"Bravura"},{"Buffalo"},{"Linerunner"},{"Perrenial"},{"Sentinel"},
        {"Dumper"},{"Firetruck"},{"Trashmaster"},{"Stretch"},{"Manana"},{"Infernus"},{"Voodoo"},
        {"Pony"},{"Mule"},{"Cheetah"},{"Ambulance"},{"Leviathan"},{"Moonbeam"},{"Esperanto"},{"Taxi"},
        {"Washington"},{"Bobcat"},{"Mr. Whoopee"},{"BF. Injection"},{"Hunter"},{"Premier"},{"Enforcer"},
        {"Securicar"},{"Banshee"},{"Predator"},{"Bus"},{"Rhino"},{"Barracks"},{"Hotknife"},{"Article Trailer"},
        {"Previon"},{"Coach"},{"Cabbie"},{"Stallion"},{"Rumpo"},{"RC Bandit"},{"Romero"},{"Packer"},{"Monster"},
        {"Admiral"},{"Squalo"},{"Seasparrow"},{"Pizzaboy"},{"Tram"},{"Article Trailer 2"},{"Turismo"},{"Speeder"},
        {"Reefer"},{"Tropic"},{"Flatbed"},{"Yankee"},{"Caddy"},{"Solair"},{"Berkley's RC Van"},{"Skimmer"},
        {"PCJ-600"},{"Faggio"},{"Freeway"},{"RC Baron"},{"RC Raider"},{"Glendale"},{"Oceanic"},{"Sanchez"},
        {"Sparrow"},{"Patriot"},{"Quad"},{"Coastguard"},{"Dinghy"},{"Hermes"},{"Sabre"},{"Rustler"},{"ZR-350"},
        {"Walton"},{"Regina"},{"Comet"},{"BMX"},{"Burrito"},{"Camper"},{"Marquis"},{"Baggage"},{"Dozer"},
        {"Maverick"},{"News Chopper"},{"Rancher"},{"FBI Rancher"},{"Virgo"},{"Greenwood"},{"Jetmax"},{"Hotring"},
        {"Sandking"},{"Blista Compact"},{"Police Maverick"},{"Boxville"},{"Benson"},{"Mesa"},{"RC Goblin"},
        {"Hotring Racer A"},{"Hotring Racer B"},{"Bloodring Banger"},{"Rancher"},{"Super GT"},{"Elegant"},
        {"Journey"},{"Bike"},{"Mountain Bike"},{"Beagle"},{"Cropdust"},{"Stunt"},{"Tanker"},{"Roadtrain"},
        {"Nebula"},{"Majestic"},{"Buccaneer"},{"Shamal"},{"Hydra"},{"FCR-900"},{"NRG-500"},{"HPV1000"},
        {"Cement Truck"},{"Tow Truck"},{"Fortune"},{"Cadrona"},{"FBI Truck"},{"Willard"},{"Forklift"},
        {"Tractor"},{"Combine"},{"Feltzer"},{"Remington"},{"Slamvan"},{"Blade"},{"Freight"},{"Streak"},
        {"Vortex"},{"Vincent"},{"Bullet"},{"Clover"},{"Sadler"},{"Firetruck LA"},{"Hustler"},{"Intruder"},
        {"Primo"},{"Cargobob"},{"Tampa"},{"Sunrise"},{"Merit"},{"Utility"},{"Nevada"},{"Yosemite"},{"Windsor"},
        {"Monster A"},{"Monster B"},{"Uranus"},{"Jester"},{"Sultan"},{"Stratum"},{"Elegy"},{"Raindance"},
        {"RC Tiger"},{"Flash"},{"Tahoma"},{"Savanna"},{"Bandito"},{"Freight Flat"},{"Streak Carriage"},
        {"Kart"},{"Mower"},{"Dunerider"},{"Sweeper"},{"Broadway"},{"Tornado"},{"AT-400"},{"DFT-30"},{"Huntley"},
        {"Stafford"},{"BF-400"},{"Newsvan"},{"Tug"},{"Article Trailer 3"},{"Emperor"},{"Wayfarer"},{"Euros"},{"Mobile Hotdog"},
        {"Club"},{"Freight Carriage"},{"Trailer 3"},{"Andromada"},{"Dodo"},{"RC Cam"},{"Launch"},{"Police Car (LSPD)"},
        {"Police Car (SFPD)"},{"Police Car (LVPD)"},{"Police Ranger"},{"Picador"},{"S.W.A.T Van"},{"Alpha"},
        {"Phoenix"},{"Glendale"},{"Sadler"},{"Luggage Trailer A"},{"Luggage Trailer B"},{"Stair Trailer"},
        {"Boxville"},{"Farm Plow"},{"Utility Trailer"}
};
 
stock GetVehicleFriendlyName(vehicleid)
{
        new GVFNstring[56];
        format(GVFNstring, sizeof(GVFNstring), VehicleFriendlyNames[GetVehicleModel(vehicleid)-400]);
        return GVFNstring;
}

stock GetVehicleSpeed(vehicleid)
{
	new Float:Pos[3];
	GetVehicleVelocity(vehicleid, Pos[0], Pos[1], Pos[2]);
	return floatround(floatsqroot(Pos[0] * Pos[0] + Pos[1] * Pos[1] + Pos[2] * Pos[2]) * 96.00);
}

stock ShowTextDrawSpeedo(playerid)
{
	for(new i; i < 9; i++)
	{
		PlayerTextDrawShow(playerid, TDEditor_PTD[playerid][i]);
	}
	return 1;
}

stock HideTextDrawSpeedo(playerid)
{
	for(new i; i < 9; i++)
	{
		PlayerTextDrawHide(playerid, TDEditor_PTD[playerid][i]);
	}
	return 1;
}

stock CheckSpeedo(playerid,vehicleid)
{
	if(GetVehicleSpeed(vehicleid) >= 20.0)
	{
		PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][1], 0xFFb3f442FF);
	}
	else return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][1], 255);
	if(GetVehicleSpeed(vehicleid) >= 40.0)
	{
		PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][2], 0xFF41a9f4FF);
	}
	else return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][2], 255);
	if(GetVehicleSpeed(vehicleid) >= 60.0)
	{
		PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][3], 0xFFf49441FF);
	}
	else return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][3], 255);
	if(GetVehicleSpeed(vehicleid) >= 80.0)
	{
		PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][4], 0xFFdb1a55FF);
	}
	else return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][4], 255);
	if(GetVehicleSpeed(vehicleid) >= 99.0)
	{
		PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][5], 0xFFc92626FF);
	}
	else return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][5], 255);
	//Sua Loi Bug--------------------------------------------------------------------------------------------------|
       	if(GetVehicleSpeed(vehicleid) < 20.0) return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][2], 255); |
	if(GetVehicleSpeed(vehicleid) < 40.0) return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][2], 255); |
	if(GetVehicleSpeed(vehicleid) < 60.0) return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][3], 255); |
	if(GetVehicleSpeed(vehicleid) < 80.0) return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][4], 255); |
	if(GetVehicleSpeed(vehicleid) < 100.0) return PlayerTextDrawBoxColor(playerid, TDEditor_PTD[playerid][5], 255);|
	//Eng----------------------------------------------------------------------------------------------------------|
	return 1;
}

stock ShowSpeedoIn(playerid,vehicleid)
{
	new string[255],string2[255];
	format(string2, 255, "LOAI XE: %s", GetVehicleFriendlyName(vehicleid));
	format(string, 255, "TOC DO: %d/MPH", GetVehicleSpeed(vehicleid));
	PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][7], string2);
	PlayerTextDrawSetString(playerid, TDEditor_PTD[playerid][8], string);
	ShowTextDrawSpeedo(playerid);
	CheckSpeedo(playerid,vehicleid);
	return 1;
}

public OnPlayerUpdate(playerid)
{
	if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid == PLAYER_STATE_DRIVER))
	{
		new vehicleid = GetPlayerVehicleID(playerid);
		if(IsPlayerInVehicle(playerid, vehicleid))
		{
			ShowSpeedoIn(playerid,vehicleid);
		}
	}
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	HideTextDrawSpeedo(playerid);
	return 1;
}
