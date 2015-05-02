package {
 
    import org.flixel.*;
 
    public class Lev2Sprite extends FlxSprite {
		private var clicked:Boolean = false;
		private var unlocked:Boolean = false;
		
		
		[Embed(source = "data/Lev2.png")] private var WalkPng:Class;
		
		public function Lev2Sprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
        }
        override public function update():void {

			
            super.update();
        }
        
    }
}