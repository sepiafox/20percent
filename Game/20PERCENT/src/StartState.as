package  
{
	import org.flixel.*;
	 
	public class StartState extends FlxState
	{	
		private var title:FlxText;
		private var instru:FlxText;
		
		public var play:PlayState;
		public var menu:MenuState;
		
		public var timer:Number = 0;
		public var timerstring:String;
		public var timertext:FlxText;
		
		public function StartState()
		{	
			
		}
		override public function create():void 
		{	
			play = new PlayState();
			menu = new MenuState();
			
			timerstring = timer + "";
			timertext = new FlxText(130, 125, 500, timerstring);
			
			title = new FlxText(130, 105, 500, "Supercede");
			title.color = 0XCC00FF;
			add(title);
			
			instru = new FlxText(70, 170, 800, "WASD or Arrows to Move, Space to shoot");
			instru.color = 0XC00CCFF;
			add(instru);
		}
		override public function update():void
		{
			super.update(); 
			
			if (FlxG.keys.P)
			{
				FlxG.switchState(menu);
			}
			
			timer += FlxG.elapsed;
			
			if (timer > 4)
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