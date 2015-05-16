package  
{
	import org.flixel.*;
	 
	public class Oneto2State extends FlxState
	{	
		public var timer:Number;
		
		public var play2:PlayState2;
		
		public var text:FlxText;
		
		public function Oneto2State()
		{	
			
		}
		override public function create():void 
		{	
			play2 = new PlayState2();
			
			text = new FlxText(130, 105, 500, "Level 1 Cleared!");
			
			add(text);
		}
		override public function update():void
		{
			super.update(); 
			
			timer = FlxG.elapsed;
			
			if (timer > 4)
			{
				FlxG.switchState(play2);
			}
		}	
	}
}