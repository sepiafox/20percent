package {
 
    import org.flixel.*;
 
    public class TextSprite extends FlxSprite {
    
        private var jump:Number = 0;
		private var jumppause:Number = 0;
		private var ttime:Number = 0;
		private var djump:Boolean = false; //double jump
		
		//enemy movement variables
		private var tojump:Boolean = false;
		private var toleft:Boolean = false;
		private var toright:Boolean = false;
		private var totele:Boolean = false;
		
		private var timer:Number = 0;
		
		private var distance:Number;
		private var jumpfail:Boolean = false; //checks if the jump was succesful in going up 
		private var fallfail:Boolean = false; // does the same as jumpfail for hopping down
		private var shootfail:Boolean = false; //checks to see if enemy bullet sprite was blocked by wall
		
		//[Embed(source = "data/menutxt.png")] private var WalkPng:Class; create menutext
		
		public function TextSprite(X:Number, Y:Number) {
            super(X,Y);
			
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
            super.update();
        }
        
    }
}