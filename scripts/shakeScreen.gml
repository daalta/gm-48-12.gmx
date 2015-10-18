///shakeScreen(strength,tempo,decay)

//überall kann 0 für die standartwerte verwendet werden.

//wie weit der bildschirm maximal wackelt
strength=argument0 

//wie schnell der Bildschirm wachelt
tempo=argument1

//wie langsam das Wackeln abnimmt
decay=argument2

if(strength!=0)
{
    global.screenshakeStrength=strength;
} else global.screenshakeStrength=15;

if(tempo!=0)
{
    global.screenshakeSpeed=tempo;
} else global.screenshakeSpeed=0.5

if(decay!=0)
{
    global.screenshakeDecay=decay;
} else global.screenshakeDecay=0.5;


return true;
