package  
{
	import org.flixel.*;
	 
	public class Threeto4State extends FlxState
	{	
		public var timer:Number;
		
		public var play4:PlayState4;
		
		public var text:FlxText;
		
		public function Threeto4State()
		{	
			
		}
		override public function create():void 
		{	
			play4 = new PlayState4();
			
			text = new FlxText(130, 105, 500, "Level 3 Cleared!");
		}
		override public function update():void
		{
			super.update(); 
			
			timer = FlxG.elapsed;
			
			if (timer > 4)
			{
				FlxG.switchState(play4);
			}
		}	
	}
}