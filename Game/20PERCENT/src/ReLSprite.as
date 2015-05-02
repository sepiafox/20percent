package {
 
    import org.flixel.*;
 
    public class ReLSprite extends FlxSprite {
		private var clicked:Boolean = false;
		private var unlocked:Boolean = false;
		
		
		[Embed(source = "data/ReL.png")] private var WalkPng:Class;
		
		public function ReLSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
        }
        override public function update():void {

			
            super.update();
        }
        
    }
}