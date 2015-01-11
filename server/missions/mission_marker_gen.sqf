//////////////////////////////////////////////////////
//////////////Mission Mark Function/Loop//////////////
//////////////////////////////////////////////////////
_markerLoopCounterMission = 1;
MissionMarkerArray = [];

fnc_createMarkerMission = {
  private ["_pos","_m"];
  _pos = _this select 0;
  _m = createMarker [format["marker_Mission%1", _markerLoopCounterMission],_pos];
  _m setmarkerColor (_this select 1);
  _m setMarkerShape "Icon";
  _m setMarkerType "empty";
  //format["%1", _m] setMarkerText format["Mission%1", _markerLoopCounterMission];
};

for "_i" from 0 to 100 do {
    _p = ["mrkMission",0,["mrkBlue","mrkRed","mrkGreen"], 100] call SHK_pos;
    [_p,"ColorBlack"] call fnc_createMarkerMission;
	MissionMarkerArray = MissionMarkerArray + [format["marker_Mission%1", _markerLoopCounterMission]];
	_markerLoopCounterMission = _markerLoopCounterMission + 1;
};
_nul = []execVM "server\missions\mission_1.sqf";
sleep 30;
_nul = []execVM "server\missions\mission_init.sqf";