package  
{
	import org.flixel.*;
	 
	public class Oneto2State extends FlxState
	{	
		public var timer:Boolean;
		
		public function Oneto2State()
		{	
			
		}
		override public function create():void 
		{	
			
		}
		override public function update():void
		{
			super.update(); 
			
			timer = FlxG.elapsed;
			
			if (timer > 4)
			{
				FlxG.switchState(PlayState2);
			}
		}	
	}
}