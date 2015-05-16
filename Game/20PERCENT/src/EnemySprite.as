package {
 
    import org.flixel.*;
 
    public class EnemySprite extends FlxSprite {
    
        private var jump:Number = 0;
		
		//enemy movement variables
		private var tojump:Boolean = false;
		private var toleft:Boolean = false;
		private var toright:Boolean = false;
		private var totele:Boolean = false;
		
		private var distx:Number;
		private var disty:Number;
		
		private var jtimer:Number = 0;
		
		[Embed(source = "data/walk4.png")] private var WalkPng:Class;
		
		public function EnemySprite(X:Number, Y:Number) {
            super(X,Y);
			
			//teleportation enemy
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
			acceleration.y = 200; //gravity 
			//acceleration.x = 50; //wind mechanic if ever needed...
            maxVelocity.y = 800; //falling max v
			maxVelocity.x = 0; // prevent sliding
			
			tojump = false;
			toleft = false;
			toright = false;
			totele = false;
			
			varSave.enemyX = x;
			varSave.enemyY = y;
			
			distx = Math.abs(varSave.playerX - x);
			disty = Math.abs(varSave.playerY - y);
			
			
			//AI
			if (varSave.playerX > x && distx > 50)
			{
				toleft = false;
				toright = true;
			}
			
			if (varSave.playerX < x && distx > 50)
			{
				toright = false;
				toleft = true;
			}
			
			if (varSave.playerY < y)
			{
				tojump = true;
			}
			else
			{
				tojump = false;
			}
			
			
			//platform jumping, complete with double jumping enabler
			if(velocity.y == 0 && tojump == true && disty > 50)
            { 
				velocity.y = -180;	
            }
			
			
			//movement
			if (toright == true)
			{
				velocity.x += 130;
				play("Right");
				varSave.enLface = false;
				varSave.enRface = true;
				varSave.engoR = true;
			}
			else
			{
				varSave.engoR = false;
			}
			if (toleft == true)
			{
				velocity.x -= 130;
				play("Left");
				varSave.enRface = false;
				varSave.enLface = true;
				varSave.engoR = true;
			}
			else
			{
				varSave.engoL = false;
			}
			//damage
			if (varSave.eneDama == true)
			{
				varSave.ene1hea--;
			}
			
			//unused but saved code
			
			//private var jumppause:Number = 0;
			//private var ttime:Number = 0;
			//private var djump:Boolean = false; //double jump
			
			//private var jumpfail:Boolean = false; //checks if the jump was succesful in going up 
			//private var fallfail:Boolean = false; // does the same as jumpfail for hopping down
			//private var oldy:Boolean; //old y value to compare for fail checks
			//private var shootfail:Boolean = false; //checks to see if enemy bullet sprite was blocked by wall
			
			//more AI - jumpfail and fallfail
			//if (tojump == true && y == oldy) 
			//{
			//	jumpfail = true;
			//}
			
			//if (ypos < y && y == oldy)
			//{
			//	fallfail = true;
			//}
			
						//if (timer < 4 && timer > 3)//ypos > y && jumpfail == false)
			//{
			//	tojump = true;
			//	toleft = true;
			//}
			
			//if (timer < 2 && timer > 1)//ypos > y && jumpfail == true)
			//{
			//	tojump = true;
			//	toright = true;
			//	jumpfail = false;
			//}
			
			//if (ypos < y && fallfail == false)
			//{
			//	toleft = true;
			//}
			
			//if (ypos < y && fallfail == true)
			//{
			//	toright = true;
			//	fallfail = false;
			//}
			
			//if (jtimer >= 1)
			//{
			//	
			//	jtimer = 0;
			//}
			
			
			//teleportion
			//if (FlxG.keys.SHIFT)
			//{
			//	velocity.x = 1200;
			//	ttime += FlxG.elapsed; //time it takes to "teleport"
			//}
			//if(ttime > .065)
			//{
			//	velocity.x = 0;
			//	ttime = 0;
			//}
			
			//if (timer == 0)
			//{
			//	timer += FlxG.elapsed;
			//}
			
			//if (timer > 10)
			//{
			//	timer = 0;
			//}
			
            super.update();
        }
        
    }
}