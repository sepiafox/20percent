package  
{
	import org.flixel.*;
	 
	public class PlayState2 extends FlxState
	{
		private var player:PlayerSprite;
		private var enemy:EnemySprite;
		
		private var bullet:BulletSprite;
		private var enebullet:EnemyBulletSprite;
		
		private var map:MapTilemap;
		public static var xpos:Number;
		public static var ypos:Number;
		public static var paused:Boolean;
		
		public function PlayState2()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap();//change map
			add(map);
			
			player = new PlayerSprite(50, 50); //change character
			enemy = new EnemySprite(100, 50); //change character
			bullet = new BulletSprite(50, 50);
			enebullet = new EnemyBulletSprite(100, 50);
			
			add(player);
			add(enemy);
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);
			//FlxG.camera.setBounds(0, 0, map.width, map.height, true);
			//FlxG.camera.follow(player);
			
			//player.cameras = new Array(FlxG.camera);
			
			if (FlxG.keys.P)
			{
				paused = true;
			}
			
			
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