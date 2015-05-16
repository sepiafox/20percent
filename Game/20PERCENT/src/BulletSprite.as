package {
 
    import org.flixel.*;
 
    public class BulletSprite extends FlxSprite {
    	
		private var buLeft:Boolean; //whether going in a direction
		private var buRight:Boolean;
		
		[Embed(source = "data/bullet.png")] private var WalkPng:Class;
		
		public function BulletSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
			
			maxVelocity.x = 0; // prevent sliding
			
			if (velocity.x == 0 && buLeft == false && buRight == false)
			{
				play("Up");
				x = varSave.playerX;
				y = varSave.playerY;
				buLeft = false;
				buRight = false;
			}
			
			if (FlxG.keys.SPACE && varSave.plLface == true)
			{
				buLeft = true;
				play("Left");
				velocity.x -= 400;
			}
			else
			{
				buLeft = false;
			}

			if (FlxG.keys.SPACE && varSave.plRface == true)
			{
				buRight = true;
				velocity.x += 400;
				play("Right");	 
			}
			else 
			{
				buRight = false; 
			}
			
			
			//unused but saved code
			
			//timer
			//if (pressed = true)
			//{
			//	timer = FlxG.elapsed;
			//}
			//if (timer > 1)
			//{
			//	timer = 0;
			//	pressed = false;
			//}
			
			
			//movement
			//if (pressed == false)
			//{
			//	play("Up");
			//	x = varSave.playerX;
			//	y = varSave.playerY;
			//}
			
            super.update();
        }
        
    }
}
