package {
 
    import org.flixel.*;
 
    public class PlayerSprite extends FlxSprite {
    
        private var _jump:Number;
		[Embed(source = "data/walk3.png")] private var WalkPng:Class;
        private var speed:int = 130;
		
		public function PlayerSprite(X:Number, Y:Number) {
            super(X,Y);
            acceleration.y = 1200; //Set the gravity 
            maxVelocity.y = 300;
			maxVelocity.x = 50;
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
        }
        override public function update():void {
 
            if((_jump >= 0) && (FlxG.keys.W)) 
            {
                _jump += FlxG.elapsed;
                if(_jump > 0.25) _jump = -1; //Max jump length time
            }
            else _jump = -1;
 
            if (_jump > 0)
            {
                if(_jump < 0.065)
                    velocity.y = -180; //minimum speed of the jump
                else
                    acceleration.y = 50; //general acceleration of the jump
            } else
            {
                velocity.y = 1200;  //Make the character fall 
            }
			
			if (FlxG.keys.A)
			{
				velocity.x -= speed;
				play("Left");
			}
			if (FlxG.keys.D)
			{
				velocity.x += speed;
				play("Right");
			}
			
            super.update();
        }
        
    }
}