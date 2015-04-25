# 20percent
note: for some reason when GitHub was syncing it committed DevelopmentJournal not on the commit that that i describe it bieng committed to, but on the commit that I updated flixel on - so this was not a mistake in my commit description

April 24 2015: code and code plans written in plain text because of router and cloning problems -

//health and attack variables for character sprites
private var healthbar:Number; //20 for player and enemy. 
private var attack:Number; //3 for player and enemy.

//code for replenishing health over time. doubles as good generic skeleton for some timers in double jump implementation.
private var htimer:Number;
htimer = FlxG.elapsed;
if( htimer == 10 )
{
  healthbar++;
  htimer = 0;
}

//bullet color control booleans. put versions for each sprite character in game class so accessible by all levels, characters, and bullets individually.
private var red:Boolean; //base bullet
private var blue:Boolean; //unlocks at attack 4. give sprite animation slight glow effect
private var yellow:Boolean; //unlocks at attack 5. give even more glow than blue

//generic bullet control code
if(attack = 4)
{
  red = false;
  blue = true;
}
if(attack = 5)
{
  blue = false;
  yellow = true;
}

//wind code is already in playersprite, just commented out. code for compartmentalizing it accross the screen
private var windy:Boolean; //maybe make a effectless semitransparent sprite go on top of the character for a visual wind effect?
if(x > *bottom param* && x < *top param* && y > *right param* && y < *left param*)
{
  windy = true;
}
else
{
  windy = false;
}

//speed boolean
private var morespeed:Boolean;

//teleportation. will have to put tele on a higher level than currently is for access by this
if(tele == true && contains(playerSprite))
{
  removeChild(playerSprite);
}

//for double jump there is already a bunch of messy timer-based code commented out in the player class which I will work with when I have access to editing it
