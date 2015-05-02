package {
 
    import org.flixel.*;
 
    public class Lev1Sprite extends FlxSprite {
		private var clicked:Boolean = false;
		private var unlocked:Boolean = false;
		
		
		[Embed(source = "data/Lev1.png")] private var WalkPng:Class;
		
		public function Lev1Sprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
        }
        override public function update():void {

			
            super.update();
        }
        
    }
}