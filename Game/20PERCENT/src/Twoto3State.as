package  
{
	import org.flixel.*;
	 
	public class Twoto3State extends FlxState
	{	
		public var timer:Boolean;
		
		public function Twoto3State()
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
				FlxG.switchState(PlayState3);
			}
			
		}	
	}
}