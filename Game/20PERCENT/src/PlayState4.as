	import org.flixel.*;
	 
	public class PlayState4 extends FlxState
	{	
		private var menu:MenuState;
		private var map3:MapTilemap3;
		
		public function PlayState4()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap3();//change map
			add(map);
			
			menu = new MenuState();
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);
			
		}
		override public function update():void
		{
			super.update(); 
			
			if (FlxG.keys.P)
			{
				FlxG.switchState(menu);
			}
		}	
	}
}