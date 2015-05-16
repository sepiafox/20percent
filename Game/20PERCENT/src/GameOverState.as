package  
{
	import org.flixel.*;
	 
	public class GameOverState extends FlxState
	{	
		public var title:FlxText;
		public var instru:FlxText;
		
		public var menu:MenuState;
		
		public function GameOverState()
		{	
			
		}
		override public function create():void 
		{	
			title = new FlxText(130, 105, 500, "Game Over");
			instru = new FlxText(115, 125, 200, "Press P for Menu");
			instru.color = 0X15FE8D;
			
			add(title);
			add(instru);
			
			menu = new MenuState();
		}
		override public function update():void
		{
			super.update(); 
			
			//menu w/ toggle
			if (FlxG.keys.P)
			{
				FlxG.switchState(menu);
			}
			
		}	
	}
}