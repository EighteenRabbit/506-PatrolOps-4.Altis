/*
null=[this] execVM "scripts\box_equipment.sqf";
*/
if (isServer) then {
	_crate = _this select 0;
	 
	clearMagazineCargoGlobal _crate;  
	clearBackpackCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;    
	clearItemCargoGlobal _crate;
	 
	_crate addItemCargoGlobal ["ACE_Vector",50];
	_crate addItemCargoGlobal ["ACE_MX2A",50];
	_crate addItemCargoGlobal ["rhsusf_opscore_mc_cover_pelt",1];
	_crate addItemCargoGlobal ["lerca_1200_black",50];
	_crate addItemCargoGlobal ["lerca_1200_tan",50];
	_crate addItemCargoGlobal ["Laserdesignator",5];
	_crate addItemCargoGlobal ["tf_anprc152",100];
	_crate addItemCargoGlobal ["ItemSMGR", 10];
	_crate addMagazineCargoGlobal["rhsusf_100Rnd_556x45_soft_pouch", 6];
	_crate addMagazineCargoGlobal["rhsusf_100Rnd_762x51", 3];
	_crate addMagazineCargoGlobal["rhsusf_100Rnd_762x51_m80a1epr", 3];
	_crate addMagazineCargoGlobal["rhsusf_100Rnd_762x51_m993", 3];
	_crate addMagazineCargoGlobal["rhs_fgm148_magazine_AT", 1];
    _crate addMagazineCargoGlobal["rhs_mag_maaws_HEAT", 3];
	_crate addMagazineCargoGlobal["Laserbatteries", 10];
};
