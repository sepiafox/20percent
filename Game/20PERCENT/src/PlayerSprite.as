package {
 
    import org.flixel.*;
 
    public class PlayerSprite extends FlxSprite {
    
        private var jump:Number;
		private var jumppause:Number;
		[Embed(source = "data/walk3.png")] private var WalkPng:Class;
        private var speed:int = 130;
		
		public function PlayerSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
        }
        override public function update():void {
			
			jump = 0;
			jumppause = 0;
			acceleration.y = 400; //Set the gravity 
            maxVelocity.y = 0;
			maxVelocity.x = 0;
			
			if (jumppause > .5)
			{
				jumppause = 0;
			}
            
			if((jump >= 0) && ((FlxG.keys.W) || FlxG.keys.UP) && (jumppause <= 0)) 
            {
                jump += FlxG.elapsed;
                if(jump > 0.25) jumppause += FlxG.elapsed; //Max jump length time
            }
            //else _jump = -1;
 
            if (jump > 0)
            {
                if(jump < 0.065)
                    velocity.y = -180; //minimum speed of the jump
                else
                    velocity.y -= 50; //general acceleration of the jump
            } else
            {
                velocity.y = 300;  //Make the character fall 
            }
			
			if (FlxG.keys.A || FlxG.keys.LEFT)
			{
				velocity.x -= speed;
				play("Left");
			}
			if (FlxG.keys.D || FlxG.keys.RIGHT)
			{
				velocity.x += speed;
				play("Right");
			}
			
            super.update();
        }
        
    }
}