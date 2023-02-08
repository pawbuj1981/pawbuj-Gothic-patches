INSTANCE GATE_WOODEN_01			(C_SFX_DEF) {file= "gate_wooden_01.wav";			vol = 130;			};
INSTANCE GATE_WOODEN_02			(C_SFX_DEF) {file= "gate_wooden_02.wav";			vol = 130;			};
INSTANCE GATE_WOODEN_03			(C_SFX_DEF) {file= "gate_wooden_03.wav";			vol = 130;			};
INSTANCE GATE_WOODEN_04			(C_SFX_DEF) {file= "gate_wooden_04.wav";			vol = 130;			};

FUNC VOID GATES_SFX()
{
//var oCMobInter mob; mob = _^ (MEM_SearchVobByName("EVT_OC_MAINGATE01_SWITCH"));
var zCMover mov1; mov1 = _^ (MEM_SearchVobByName ("EVT_OC_MAINGATE01_01"));
var zCMover mov2; mov2 = _^ (MEM_SearchVobByName ("EVT_OC_MAINGATE02_02"));
var zCMover mov3; mov3 = _^ (MEM_SearchVobByName ("EVT_OW_STARTLOCKER_MOVER"));
var zCMover mov4; mov4 = _^ (MEM_SearchVobByName ("EVT_OC_INNERMAINGATE"));
var oCMobInter mob; mob = _^ (MEM_SearchVobByName("CHEST"));
   
mov1.sfxOpenStart  = GATE_WOODEN_O1;
mov1.sfxCloseStart = GATE_WOODEN_O1;

mov2.sfxOpenStart  = GATE_WOODEN_O2;
mov2.sfxCloseStart = GATE_WOODEN_O2; 

mov3.triggerTarget = EVT_STARTLOCKER_MOVER;
mov3.sfxOpenStart  = GATE_WOODEN_O3;
mov3.sfxCloseStart = GATE_WOODEN_O3;

mov4.sfxOpenStart  = GATE_START;
mov4.sfxMoving = GATE_LOOP;
mov4.sfxOpenEnd = GATE_STOP;
mov4.sfxCloseStart  = GATE_START;
mov4.sfxCloseStart  = GATE_START;
};
