package  
{
	import org.flixel.*;
	 
	public class MenuState extends FlxState
	{
		private var title:FlxText;
		private var level:FlxText;
		private var restart:FlxText;
		private var restart2:FlxText;
		
		public function MenuState()
		{	
			
		}
		override public function create():void 
		{
			title = new FlxText(0,0,100,"Pause Menu");
			add(title);
			
			level = new FlxText(100,0,100,"Levels:");
			add(level);
			
			restart = new FlxText(200,0,100,"Restart Game");
			add(restart);
			
			restart2 = new FlxText(200,0,100,"Restart Level");
			add(restart2);
		}
		override public function update():void
		{
			super.update(); 
			
		}	
	}
}