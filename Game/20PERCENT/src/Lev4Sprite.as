package {
 
    import org.flixel.*;
 
    public class Lev4Sprite extends FlxSprite {
		private var clicked:Boolean = false;
		private var unlocked:Boolean = false;
		
		
		[Embed(source = "data/Lev4.png")] private var WalkPng:Class;
		
		public function Lev4Sprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
        }
        override public function update():void {

			
            super.update();
        }
        
    }
}