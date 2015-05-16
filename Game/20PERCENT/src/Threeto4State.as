package  
{
	import org.flixel.*;
	 
	public class Threeto4State extends FlxState
	{	
		public var timer:Boolean;
		
		public function Threeto4State()
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