package  
{
	import org.flixel.*;
	 
	public class StartState extends FlxState
	{	
		private var title:FlxText;
		
		public function StartState()
		{	
			
		}
		override public function create():void 
		{	
			title = new FlxText(130, 105, 500, "Supercede");
			title.color = 0XCC00FF;
		}
		override public function update():void
		{
			super.update(); 
			
			
		}	
	}
}