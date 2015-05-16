package  
{
	import org.flixel.*;
	 
	public class GameWinState extends FlxState
	{	
		public var congr:FlxText;
		public var youw:FlxText;
		public var instru:FlxText;
		
		public function GameWinState()
		{	
			
		}
		override public function create():void 
		{	
			congr = new FlxText(130, 105, 500, "Congratulations - ");
			congr.color = 0XCC00FF;
			youw = new FlxText(130, 125, 500, "You Won!");
			youw.color = 0XCC00FF;
			instru = new FlxText(130, 155, 200, "Press P for Menu");
			instru.color = 0XCC00FF;
			
			add(congr);
			add(youw);
			add(instru);
		}
		override public function update():void
		{
			super.update(); 
			
		}	
	}
}