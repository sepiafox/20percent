package  
{
	import org.flixel.*;
	 
	public class Oneto2State extends FlxState
	{	
		public var timer:Number = 0;
		
		public var play:PlayState2;
		public var menu:MenuState;
		
		public var text:FlxText;
		
		public var timerstring:String;
		public var timertext:FlxText;
		
		public function Oneto2State()
		{	
			
		}
		override public function create():void 
		{	
			play = new PlayState2();
			menu = new MenuState();
			
			text = new FlxText(130, 105, 500, "Level 1 Cleared!");
			text.color = 0XE680FF;
			add(text);
			
			timerstring = timer + "";
			
			timertext = new FlxText(130, 125, 500, timerstring);
		}
		override public function update():void
		{
			super.update(); 
			
			if (FlxG.keys.P)
			{
				FlxG.switchState(menu);
			}
			
			timer += FlxG.elapsed;
			
			if (timer > 3)
			{
				FlxG.switchState(play);
			}
			
			remove(timertext);
			timerstring = timer + "";
			timertext = new FlxText(130, 125, 500, timerstring);
			add(timertext);
		}	
	}
}