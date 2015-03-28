package {
 
    import org.flixel.*;
 
    public class EnemySprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		
		//enemy movement variables
		private var tojump:Boolean = false;
		private var toleft:Boolean = false;
		private var toright:Boolean = false;
		private var totele:Boolean = false;
		
		private var distance:Number;
		private var jumpfail:Boolean = false; //checks if the jump was succesful in going up 
		private var fallfail:Boolean = false; // does the same as jumpfail for hopping down
		private var shootfail:Boolean = false; //checks to see if enemy bullet sprite was blocked by wall
		
		[Embed(source = "data/walk4.png")] private var WalkPng:Class;
		
		public function EnemySprite(X:Number, Y:Number) {
            super(X,Y);
			
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
			tojump = false;
			toleft = false;
			toright = false;
			totele = false;
			
			distance = xpos - x;
			oldy = y;
			
			//AI
			if (xpos > x && distance > 10)
			{
				toright = true;
			}
			
			if (xpos < x && distance > 10)
			{
				toleft = true;
			}
			
			if (ypos > y && jumpfail == false)
			{
				tojump = true;
				toleft = true;
			}
			
			if (ypos > y && jumpfail == true)
			{
				tojump = true;
				toright = true;
				jumpfail = false;
			}
			
			if (ypos < y && fallfail == false)
			{
				toleft = true;
			}
			
			if (ypos < y && fallfail == true)
			{
				toright = true;
				fallfail = false;
			}
			
			
			acceleration.y = 200; //gravity 
			//acceleration.x = 50; //wind mechanic if ever needed...
            maxVelocity.y = 800; //falling max v
			maxVelocity.x = 0; // prevent sliding
			

			//platform jumping, complete with double jumping enabler
			if(velocity.y == 0 && tojump == true) //(jump <= .9)
            {
                    velocity.y = -180; 
            }
			
			//teleportion
			if (FlxG.keys.SHIFT)
			{
				velocity.x = 1200;
				ttime += FlxG.elapsed; //time it takes to "teleport"
			}
			if(ttime > .065)
			{
				velocity.x = 0;
				ttime = 0;
			}
			
			if (toleft == true)
			{
				velocity.x -= 130;
				play("Left");
			}
			if (toright == true)
			{
				velocity.x += 130;
				play("Right");
			}
			
			//more AI - jumpfail and fallfail
			if (tojump == true && y == oldy) 
			{
				jumpfail = true;
			}
			
			if (ypos < y && y == oldy)
			{
				fallfail = true;
			}
			
            super.update();
        }
        
    }
}