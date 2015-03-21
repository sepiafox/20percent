package {
 
    import org.flixel.*;
 
    public class PlayerSprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		[Embed(source = "data/walk3.png")] private var WalkPng:Class;
		
		public function PlayerSprite(X:Number, Y:Number) {
            super(X,Y);
			
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
			

			//platform jumping, complete with double jumping enabler
			if(velocity.y == 0 && ((FlxG.keys.W) || (FlxG.keys.UP)))//(jump <= .9)
            {
				//if (jump < 0.065) 
				//{
                    velocity.y = -180; //jump power //was 120
                //}
				
				//jump += FlxG.elapsed; //timer
            }
			//if(jump > .9)
			//{
			//	jumppause += FlxG.elapsed; // jump delay timer
			//}
			//if (jumppause > .95) //jump delay 
			//{
			//	jumppause = 0;
			//	jump = 0;
			//}
			
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
			
			if (FlxG.keys.A || FlxG.keys.LEFT)
			{
				velocity.x -= 130;
				play("Left");
			}
			if (FlxG.keys.D || FlxG.keys.RIGHT)
			{
				velocity.x += 130;
				play("Right");
			}
			
            super.update();
        }
        
    }
}