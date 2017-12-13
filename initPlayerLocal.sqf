// Temporary until SquadMod
["InitializePlayer",[player, true]] call BIS_fnc_dynamicGroups;

// PO4 Hints and Tips
["init"] call PO4_fnc_tutorial;

// Move player into any nearby barracks
[] spawn {
	if (hasInterface) then {
		if !(is3DEN) then {
			private _barracks = nearestObjects [(getMarkerPos "respawn_west"),["Land_i_Barracks_V1_F","Land_i_Barracks_V2_F","Land_u_Barracks_V2_F","Land_Barracks_01_grey_F","Land_Barracks_01_camo_F","Land_Barracks_01_dilapidated_F"],50];
			private _positions = [];
			{
				_buildingPos = _x;
				{
					_pos = _x;
					if (_forEachIndex in [2,4,5,6,7,8,9,10,11,12,13,15,16,19,20,21,22,23,24,25,26,27,28,29,30,31,48,49]) then {
						_positions pushBack _pos;
					};
				} forEach _buildingPos;
			} forEach (_barracks apply {[_x] call BIS_fnc_buildingPositions});

			if (count _positions > 0) then {
				{
					private _unit = _x;
					private _position = _positions select (_forEachIndex % (count _positions));
					if (local _x) then { _x setPosATL _position; };
				} forEach (playableUnits + switchableUnits);
			};
		};
	};
};

[["PatrolOps4","BeginPO4"]] call BIS_fnc_advHint;
["Tutorial_VirtualArmoury","Assigned",true] call MPSF_fnc_updateTaskState;
// Team Killer Rating Neutraliser
["Player_onHandleRating_EH","onHandleRating",{ if (rating player <= 0) then { player addRating ((abs rating player)+1); }; }] call MPSF_fnc_addEventHandler;

waituntil {! isnull player};

//Remove all gear from player and add what is needed
if (player == player) then { 

 view = player addAction ["Settings", "scripts\Viewdistance.sqf", [],-98,false,false];

 } else {};
