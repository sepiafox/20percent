package {
 
    import org.flixel.*;
 
    public class PlayerSprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		
		private var goingLeft:Boolean;
		private var goingRight:Boolean;
		
		private var htimer:Number;

		//player's bullet types
		private var blue:Boolean; //unlocks at power 4
		private var yellow:Boolean;//unlocks at power 5
		
		[Embed(source = "data/walk3.png")] private var WalkPng:Class;
		
		public function PlayerSprite(X:Number, Y:Number) {
            super(X, Y);
			
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
			varSave.playerhea = 100;
			//varSave.playerpow = 1;
			
        }
        override public function update():void {
			
			varSave.playerX = x;
			varSave.playerY = y;
			
				
			acceleration.y = 200; //gravity 
			//acceleration.x wind mechanic 
            maxVelocity.y = 800; //falling max v
			maxVelocity.x = 0; // prevent sliding
			
			
			
			//bullet level
			//if (varSave.playerpow == 2) 
			//{ 
			//	blue = true; 
			//}
			//if (varSave.playerpow == 3) 
			//{
			//	blue = false; yellow = true; 
			//}
			
			
			//movement
			if (FlxG.keys.A || FlxG.keys.LEFT)
			{
				velocity.x -= 130;
				play("Left");
				varSave.plRface = false;
				varSave.plLface = true;
				varSave.plgoL = true;
			}
			else 
			{
				varSave.plgoL = false;
			}

			if (FlxG.keys.D || FlxG.keys.RIGHT)
			{
				velocity.x += 130;
				play("Right");
				varSave.plLface = false;
				varSave.plRface = true;
				varSave.plgoR = true;
			}
			else
			{
				varSave.plgoR = false;
			}
			if(velocity.y == 0 && ((FlxG.keys.W) || (FlxG.keys.UP)) )
            {
                velocity.y = -180; 
            }
			
			//health control
			if (varSave.playDama == true)
			{
				health--;
			}
			
			htimer = FlxG.elapsed; 
			
			if ( htimer == 10 ) 
			{
				varSave.playerhea++; 
				htimer = 0; 
			}
			
			if (health == 0)
			{
				varSave.gameOver == true;
			}
			
		//powers
		
			//teleportion
			if (FlxG.keys.SHIFT)
			{
				velocity.x = 1200;
				ttime += FlxG.elapsed; 
			}
			if(ttime > .065)
			{
				velocity.x = 0;
				ttime = 0;
			}
			
			
			//unused but saved code
			
			//platform jumping, complete with double jumping enabler
			//if(velocity.y == 0 && ((FlxG.keys.W) || (FlxG.keys.UP)) )//(jump <= .9)
            //{
				//if (jump < 0.065) 
				//{
            //        velocity.y = -180; //jump power //was 120
                //}
				
				//jump += FlxG.elapsed; //timer
            //}
			//if(jump > .9)
			//{
			//	jumppause += FlxG.elapsed; // jump delay timer
			//}
			//if (jumppause > .95) //jump delay 
			//{
			//	jumppause = 0;
			//	jump = 0;
			//}
			
            super.update();
        }
        
    }
}