package  
{
	import org.flixel.*;
	 
	public class PlayState2 extends FlxState
	{	
		private var map2:MapTilemap2;
		
		public function PlayState2()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap2();//change map
			add(map);
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);
			
		}
		override public function update():void
		{
			super.update(); 
			
		}	
	}
}