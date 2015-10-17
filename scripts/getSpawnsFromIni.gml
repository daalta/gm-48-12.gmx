//Liest eine .ini-Datei, um eine Liste von Spawns und Verzögerungen
//zwischen Spawns zu erhalten.
//Zurückgegeben wird ein Stack mit den Spawns!

//Commands:
//0=End of file

//Enemy types:
//1=walker
//2=next enemy type

//Delays:
//10=0.5 seconds
//11=1 second
//12=2 seconds
//13=3 seconds
//...
//20=20 seconds

ini_open(spawns.ini);

//Read the section declared in the argument
sectionToRead=argument0;
//count how many enemies were spawned so far
enemyNumber=0;

//create a stack to save all enemies to
enemyStack=ds_stack_create();

while(ds_stack_top(enemyStack)!=0)
    {
    ds_stack_push(ini_read_string(argument0,enemyNumber,0));
    }
return enemyStack;

