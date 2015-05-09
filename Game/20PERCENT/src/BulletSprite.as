package {
 
    import org.flixel.*;
 
    public class BulletSprite extends FlxSprite {
    	
		private var pressed:Boolean = false;
		
		private var timer:Number = 0;
		
		private var prLeft:Boolean;
		private var prRight:Boolean;
		
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
			if (velocity.x == 0 && prLeft == false && prRight == false)
			{
				play("Up");
				x = varSave.playerX;
				y = varSave.playerY;
				prLeft = false;
				prRight = false;
			}
			
			if (FlxG.keys.SPACE && varSave.plLeft == true)// && timer <= 1)
			{
				prLeft = true;
				play("Left");
				velocity.x -= 400;
			}
			else
			{
				prLeft = false;
			}

			if (FlxG.keys.SPACE && varSave.plRight == true)// && timer <= 1)
			{
				prRight = true;
				velocity.x += 400;
				play("Right");	 
			}
			else 
			{
				prRight = false; 
			}
			
			
            super.update();
        }
        
    }
}
