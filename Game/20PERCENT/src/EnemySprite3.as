package {
 
    import org.flixel.*;
 
    public class EnemySprite3 extends FlxSprite {
		
		[Embed(source = "data/walk6.png")] private var WalkPng:Class;
		
		public function EnemySprite3(X:Number, Y:Number) {
            super(X,Y);
			
			//speed enemy
			
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
			tospeed = false;
			
			//damage
			if (varSave.eneDama == true)
			{
				varSave.ene1hea--;
			}
			
            super.update();
        }
        
    }
}