package {
 
    import org.flixel.*;
 
    public class EnemyBulletSprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		
		private var pressed:Boolean = false;
		
		private var timer:Number = 0;
		
		[Embed(source = "data/bullet2.png")] private var WalkPng:Class;
		
		public function EnemyBulletSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
			
			maxVelocity.x = 0; // prevent sliding
			
			if (timer = 0)
			{
				timer += FlxG.elapsed;
			}
			
			if (timer > 1)
			{
				timer = 0;
			}
			
			//movement
			if (timer != 1)
			{
				play("Up");
				//x = xpos;
				//y = ypos;
			}
			
			if (timer = 1)
			{
				pressed = true;
				velocity.x -= 130;
				play("Left");

			}
			if (timer = 1)
			{
				pressed = true;
				velocity.x += 130;
				play("Right");
			}
			
            super.update();
        }
        
    }
}