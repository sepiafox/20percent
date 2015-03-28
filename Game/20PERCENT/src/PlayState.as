package  
{
	import org.flixel.*;
	 
	public class PlayState extends FlxState
	{
		private var player:PlayerSprite;
		private var enemy:EnemySprite;
		private var map:MapTilemap;
		public static var xpos:Number;
		public static var ypos:Number;
		
		public function PlayState()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap();
			add(map);
			
			player = new PlayerSprite(50, 50);
			enemy = new EnemySprite(100,50)
			add(player);
			add(enemy);
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);
			//FlxG.camera.setBounds(0, 0, map.width, map.height, true);
			//FlxG.camera.follow(player);
			
			//player.cameras = new Array(FlxG.camera);
			
			
		}
		override public function update():void
		{
			super.update(); 
			xpos = player.x;
			ypos = player.y;
			FlxG.collide(player, map);
			FlxG.collide(enemy, map);
			FlxG.collide(player, enemy);
			
		}	
	}
}