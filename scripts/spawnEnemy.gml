//spawns an enemy from the enemy stack and returns 0
//or returns a delay from the stack and return the delay in frames.#
//or -1 when end of file was reached.

show_debug_message("I'm about to spawn something!");

spawn0=argument0;   //first spawner
spawn1=argument1;   //second spawner
stackCommand=argument2    //poppep element from stack

var spawnX //x location to spawn enemy at
var spawnY //y location to spawn enemy at

spawnedEnemy=noone //if we spawn an enemy we should save it in this variable
flipAfterSpawn=false//true if using the second spawner

if(spawn0!=spawn1)
{
    if(random(100)>50) //randonly decide which spawner to use
    {
        spawnX=spawn0.x;
        spawnY=spawn0.y;
    }
    else
    {
        spawnX=spawn1.x;
        spawnY=spawn1.y
        flipAfterSpawn=true;
    }
}
show_debug_message("Stack command is "+string(stackCommand));
//the big switch. decide how to interpret the popped command!
switch(stackCommand)
    {
    case(0):
    show_debug_message("Top stack command was 0. WTF.");
    break;
    
    case(1):
    spawnedEnemy=instance_create(spawnX,spawnY,oEnemyBasic);
    break;
    
    case(2):
    spawnedEnemy=instance_create(spawnX,spawnY,oEnemyHelmet);
    break;
    
    case(3):
    spawnedEnemy=instance_create(spawnX,spawnY,oEnemyHeavy);
    break;
    
    case(10):
    return 30;
    break;
    
    case(11):
    return 60;
    break;
    
    case(12):
    return 120;
    break;
    
    case(13):
    return 180;
    break;
    
    case(14):
    return 240;
    break;
    
    case(15):
    return 300;
    break;
    
    case(16):
    return 360;
    break;
    
    case(17):
    return 420;
    break;
    
    case(18):
    return 480;
    break;
    
    case(19):
    return 540;
    break;
    
    case(20):
    return 600;
    break;
    
    case(99):
    return -1;
    
}
//if we reached this point we must have spawned an enemy
if(flipAfterSpawn&&spawnedEnemy!=noone)
    {
    spawnedEnemy.moveDirection*=-1;
    }

return 0;
