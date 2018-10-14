#include <a_samp>
#include <sscanf2>
#include <zcmd>
new PlayerText:Speedo_TXD[MAX_PLAYERS][17];
#pragma tabsize 0

main()
{
	print("\n----------------------------------");
	print("  Bare Script\n");
	print("----------------------------------\n");
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

public OnPlayerDeath(playerid, killerid, reason)
{
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

CreatePlayerSpeedo(playerid)
{
	Speedo_TXD[playerid][0] = CreatePlayerTextDraw(playerid, 112.899002, 333.500122, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][0], 0.000000, 8.500732);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][0], 112.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][0], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][0], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][0], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][0], 0);

	Speedo_TXD[playerid][1] = CreatePlayerTextDraw(playerid, 116.647171, 334.666839, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][1], 0.000000, 8.360176);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][1], 116.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][1], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][1], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][1], 0);

	Speedo_TXD[playerid][2] = CreatePlayerTextDraw(playerid, 120.863861, 336.416870, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][2], 0.000000, 8.172767);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][2], 121.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][2], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][2], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][2], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][2], 0);

	Speedo_TXD[playerid][3] = CreatePlayerTextDraw(playerid, 126.017593, 337.583557, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][3], 0.000000, 8.032211);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][3], 126.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][3], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][3], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][3], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][3], 0);

	Speedo_TXD[playerid][4] = CreatePlayerTextDraw(playerid, 130.234283, 339.333557, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][4], 0.000000, 7.844802);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][4], 130.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][4], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][4], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][4], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][4], 0);

	Speedo_TXD[playerid][5] = CreatePlayerTextDraw(playerid, 134.919494, 340.500274, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][5], 0.000000, 7.704246);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][5], 135.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][5], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][5], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][5], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][5], 0);

	Speedo_TXD[playerid][6] = CreatePlayerTextDraw(playerid, 139.604705, 342.250305, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][6], 0.000000, 7.516838);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][6], 140.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][6], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][6], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][6], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][6], 0);

	Speedo_TXD[playerid][7] = CreatePlayerTextDraw(playerid, 144.758438, 343.416931, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][7], 0.000000, 7.376281);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][7], 145.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][7], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][7], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][7], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][7], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][7], 0);

	Speedo_TXD[playerid][8] = CreatePlayerTextDraw(playerid, 149.912170, 344.583618, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][8], 0.000000, 7.282577);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][8], 150.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][8], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][8], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][8], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][8], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][8], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][8], 0);

	Speedo_TXD[playerid][9] = CreatePlayerTextDraw(playerid, 154.597381, 346.916931, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][9], 0.000000, 7.001464);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][9], 155.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][9], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][9], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][9], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][9], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][9], 0);

	Speedo_TXD[playerid][10] = CreatePlayerTextDraw(playerid, 159.282592, 349.250305, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][10], 0.000000, 6.767204);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][10], 160.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][10], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][10], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][10], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][10], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][10], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][10], 0);

	Speedo_TXD[playerid][11] = CreatePlayerTextDraw(playerid, 164.904846, 350.416961, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][11], 0.000000, 6.626647);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][11], 166.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][11], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][11], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][11], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][11], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][11], 0);

	Speedo_TXD[playerid][12] = CreatePlayerTextDraw(playerid, 170.995620, 352.166961, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][12], 0.000000, 6.439239);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][12], 172.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][12], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][12], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][12], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][12], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][12], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][12], 0);

	Speedo_TXD[playerid][13] = CreatePlayerTextDraw(playerid, 177.086395, 353.333587, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][13], 0.000000, 6.298683);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][13], 178.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][13], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][13], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][13], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][13], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][13], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][13], 0);

	Speedo_TXD[playerid][14] = CreatePlayerTextDraw(playerid, 183.177169, 354.500274, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][14], 0.000000, 6.158126);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][14], 184.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][14], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][14], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][14], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][14], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][14], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][14], 0);

	Speedo_TXD[playerid][15] = CreatePlayerTextDraw(playerid, 189.267944, 355.666961, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][15], 0.000000, 6.017570);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][15], 190.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][15], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][15], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][15], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][15], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][15], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][15], 0);

	Speedo_TXD[playerid][16] = CreatePlayerTextDraw(playerid, 195.358718, 356.833648, "box");
	PlayerTextDrawLetterSize(playerid, Speedo_TXD[playerid][16], 0.000000, 5.970718);
	PlayerTextDrawTextSize(playerid, Speedo_TXD[playerid][16], 196.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Speedo_TXD[playerid][16], 1);
	PlayerTextDrawColor(playerid, Speedo_TXD[playerid][16], -1);
	PlayerTextDrawUseBox(playerid, Speedo_TXD[playerid][16], 1);
	PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, Speedo_TXD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, Speedo_TXD[playerid][16], 255);
	PlayerTextDrawFont(playerid, Speedo_TXD[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, Speedo_TXD[playerid][16], 1);
	PlayerTextDrawSetShadow(playerid, Speedo_TXD[playerid][16], 0);
	return 1;
}
 
stock GetVehicleFriendlyName(vehicleid)
{
        new GVFNstring[56];
        format(GVFNstring, sizeof(GVFNstring), VehicleFriendlyNames[GetVehicleModel(vehicleid)-400]);
        return GVFNstring;
}

stock ShowPlayerSpeedo(playerid)
{
	for(new i; i < 17; i++)
	{
		PlayerTextDrawShow(playerid, Speedo_TXD[playerid][i]);
		SetPVarInt(playerid, "ShowSpeedo", 1);
	}
	return 1;
}

stock HidePlayerSpeedo(playerid)
{
	for(new i; i < 17; i++)
	{
		PlayerTextDrawHide(playerid, Speedo_TXD[playerid][i]);
		SetPVarInt(playerid, "ShowSpeedo", 0);
	}
	return 1;
}

forward UpdateSpeedo(playerid,vehicleid);
public UpdateSpeedo(playerid,vehicleid)
{
	if(GetPVarInt(playerid, "ShowSpeedo") == 1)
	{
		new speed = GetVehicleSpeed(vehicleid);
		//Level 1--------------------------------
		if(speed >= 15.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][0], 0xFF41a6f4FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][0]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][0], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][0]);
		}
		if(speed >= 20.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][1], 0xFF41a6f4FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][1]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][1], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][1]);
		}
		if(speed >= 25.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][2], 0xFF41a6f4FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][2]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][2], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][2]);
		}
		if(speed >= 30.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][3], 0xFF41a6f4FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][3]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][3], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][3]);
		}
		if(speed >= 35.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][4], 0xFF41a6f4FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][4]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][4], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][4]);
		}
		//Level 2
		if(speed >= 40.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][5], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][5]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][5], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][5]);
		}
		if(speed >= 45.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][6], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][6]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][6], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][6]);
		}
		//Level 3
		if(speed >= 50.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][4], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][4]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][4], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][4]);
		}
		if(speed >= 55.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][5], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][5]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][5], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][5]);
		}
		if(speed >= 60.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][6], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][6]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][6], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][6]);
		}
		if(speed >= 65.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][7], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][7]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][7], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][7]);
		}
		//Level 4
		if(speed >= 70.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][8], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][8]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][8], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][8]);
		}
		if(speed >= 75.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][9], 0xFF41f449FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][9]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][9], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][9]);
		}
		if(speed >= 80.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][10], 0xFFf4e241FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][10]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][10], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][10]);
		}
		if(speed >= 85.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][11], 0xFFf4e241FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][11]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][11], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][11]);
		}
		if(speed >= 90.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][12], 0xFFf4e241FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][12]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][12], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][12]);
		}
		//Level 5
		if(speed >= 95.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][13], 0xFFf46441FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][13]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][13], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][13]);
		}
		if(speed >= 100.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][14], 0xFFf46441FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][14]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][14], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][14]);
		}
		if(speed >= 105.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][15], 0xFFf46441FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][15]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][15], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][15]);
		}
		if(speed >= 110.0)
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][16], 0xFFf46441FF);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][16]);
		}
		else
		{
			PlayerTextDrawBoxColor(playerid, Speedo_TXD[playerid][16], 255);
			PlayerTextDrawShow(playerid, Speedo_TXD[playerid][16]);
		}
	}
	return 1;
}

stock GetVehicleSpeed(vehicleid)
{
	new Float:X,Float:Y,Float:Z;
	GetVehicleVelocity(vehicleid, Float:X, Float:Y, Float:Z);
	return floatround(floatsqroot(X * X + Y * Y + Z * Z) * 120.00);
}

public OnPlayerUpdate(playerid)
{
	if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid == PLAYER_STATE_DRIVER))
	{
		new vehicleid = GetPlayerVehicleID(playerid);
		if(IsPlayerInVehicle(playerid, vehicleid))
		{
			if(GetPVarInt(playerid, "ShowSpeedo") == 1)
			{
				ShowPlayerSpeedo(playerid);
				SetTimerEx("UpdateSpeedo", 100, false, "ii", playerid,vehicleid);
			}
		}
	}
	return 1;
}

CMD:veh(playerid,params[])
{
	new idveh;
	if(sscanf(params, "i", idveh)) return SendClientMessage(playerid, -1, "/veh [ID]");
	if(idveh < 400 && idveh > 611) return SendClientMessage(playerid, -1, "ID chi tu 400 - 611");

	new Float:x,Float:y,Float:z;
	GetPlayerPos(playerid, Float:x, Float:y, Float:z);
	CreateVehicle(idveh, Float:x, Float:y, Float:z, 0, 0, 0, 0, 0);
	return 1;
}

CMD:speedo(playerid,params[])
{
	SetPVarInt(playerid, "ShowSpeedo", 1);
	return 1;
}
