package  
{
	import org.flixel.*;
	 
	public class PlayState extends FlxState
	{
		private var player:PlayerSprite;		
		private var map:MapTilemap;
		
		public function PlayState()
		{	
			map = new MapTilemap();
			add(map);
			
			player = new PlayerSprite(50,50);
			add(player);
		}
		override public function update():void
		{
			super.update(); 
			FlxG.collide(player, map);
		}	
	}
}