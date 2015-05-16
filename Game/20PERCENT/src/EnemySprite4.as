package {
 
    import org.flixel.*;
 
    public class EnemySprite4 extends FlxSprite {
		
		[Embed(source = "data/walk7.png")] private var WalkPng:Class;
		
		public function EnemySprite4(X:Number, Y:Number) {
            super(X,Y);
			
			//boss - all three
			
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
			totele = false;
			towind = false;
			tospeed = false;
			
			if (health == 0)
			{
				varSave.gameWin == true;
			}
			
            super.update();
        }
        
    }
}