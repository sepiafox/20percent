package  
{
	import org.flixel.*;
	 
	public class PlayState3 extends FlxState
	{	
		private var map3:MapTilemap3;
		
		public function PlayState3()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap3();//change map
			add(map);
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);
			
		}
		override public function update():void
		{
			super.update(); 
			
		}	
	}
}