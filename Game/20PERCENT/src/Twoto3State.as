package  
{
	import org.flixel.*;
	 
	public class Twoto3State extends FlxState
	{	
		public var timer:Number;
		
		public var play3:PlayState3;
		
		public var text:FlxText;
		
		public function Twoto3State()
		{	
			
		}
		override public function create():void 
		{	
			play3 = new PlayState3();
			
			text = new FlxText(130, 105, 500, "Level 2 Cleared!");
		}
		override public function update():void
		{
			super.update(); 
			
			timer = FlxG.elapsed;
			
			if (timer > 4)
			{
				FlxG.switchState(play3);
			}
		}	
	}
}