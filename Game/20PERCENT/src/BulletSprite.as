package {
 
    import org.flixel.*;
 
    public class BulletSprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		
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
			
			if (damage taken)
			{
				pressed = false;
			}
			
			if (pressed == false)
			{
				play("Up");
				x = xpos;
				y = ypos;
			}
			
			if (spritefacingleft && FlxG.keys.SPACE)
			{
				pressed = true;
				velocity.x -= 130;
				play("Left");
			}
			if (spritefacingright && FlxG.keys.SPACE)
			{
				pressed = true;
				velocity.x += 130;
				play("Right");
			}
			
            super.update();
        }
        
    }
}