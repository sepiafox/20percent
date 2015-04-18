package  
{
	import org.flixel.*;
	 
	public class MenuState extends FlxState
	{
		private var title:FlxSprite;
		private var level:FlxSprite;
		private var restart:FlxSprite;
		private var restart2:FlxSprite;
		
		public function MenuState()
		{	
			
		}
		override public function create():void 
		{
			title = new FlxSprite(0,0,100,"Pause Menu");
			add(title);
			
			level = new FlxSprite(100,0,100,"Levels:");
			add(level);
			
			restart = new FlxSprite(200,0,100,"Restart Game");
			add(restart);
			
			restart2 = new FlxSprite(200,0,100,"Restart Level");
			add(restart2);
		}
		override public function update():void
		{
			super.update(); 
			
		}	
	}
}