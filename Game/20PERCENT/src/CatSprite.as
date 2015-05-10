package {
 
    import org.flixel.*;
 
    public class CatSprite extends FlxSprite {
		
		[Embed(source = "data/cat.png")] private var WalkPng:Class;
		
		public function CatSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
        }
        override public function update():void {

			
			//a random cat i put in here for my friend Fashion :D
			
            super.update();
        }
        
    }
}