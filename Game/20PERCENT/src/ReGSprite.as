package {
 
    import org.flixel.*;
 
    public class ReGSprite extends FlxSprite {
		private var clicked:Boolean = false;
		private var unlocked:Boolean = false;
		
		
		[Embed(source = "data/ReG.png")] private var WalkPng:Class;
		
		public function ReGSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
        }
        override public function update():void {

			
            super.update();
        }
        
    }
}