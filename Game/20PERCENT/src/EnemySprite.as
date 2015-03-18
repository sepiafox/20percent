package {
 
    import org.flixel.*;
 
    public class EnemySprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		//enemy movement variables
		private var tojump:Boolean = false;
		private var toleft:Boolean = false;
		private var toright:Boolean = false;
		private var totele:Boolean = false;
		[Embed(source = "data/walk3.png")] private var WalkPng:Class;
		
		public function EnemySprite(X:Number, Y:Number) {
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
			if( (jump <= .5) && (tojump == true) )
            {
				if (jump < 0.065) 
				{
                    velocity.y = -120; 
                }
				
				jump += FlxG.elapsed; //timer
            }
			if(jump > .5)
			{
				jumppause += FlxG.elapsed; // jump delay timer
			}
			if (jumppause > .95) //jump delay
			{
				jumppause = 0;
				jump = 0;
			}
			
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
			
			if (toleft == true)
			{
				velocity.x -= 130;
				play("Left");
			}
			if (toright == true)
			{
				velocity.x += 130;
				play("Right");
			}
			
            super.update();
        }
        
    }
}