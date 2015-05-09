package  
{
	import org.flixel.*;
	 
	public class PlayState extends FlxState
	{
		private var player:PlayerSprite;
		private var enemy:EnemySprite;
		
		private var bullet:BulletSprite;
		private var enebullet:EnemyBulletSprite;
		
		private var paused:Boolean = false;
		
		private var menu:MenuState;
		private var map:MapTilemap;
		
		private var save:PlayState;
		
		public static var paused:Boolean;
		
		
		public function PlayState()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap();
			add(map);
			
			player = new PlayerSprite(50, 50);
			enemy = new EnemySprite(100, 50);
			bullet = new BulletSprite(50, 50);
			enebullet = new EnemyBulletSprite(100, 50);
			
			menu = new MenuState();
			
			paused = false;
			
			add(player);
			add(bullet);
			add(enemy);
			add(enebullet);
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);		
			
		}
		override public function update():void
		{
			super.update(); 
			
			//save = this;
			
			//menu w/ toggle
			if (paused == true && FlxG.keys.P)
			{
				paused = false;
				FlxG.switchState(save);
			}
			if (paused == false && FlxG.keys.P)
			{
				paused = true;
				FlxG.switchState(menu); 
			}

			FlxG.collide(player, map);
			FlxG.collide(enemy, map);
			FlxG.collide(player, enemy);
			
			FlxG.collide(bullet, map);
			FlxG.collide(enebullet, map);
			FlxG.(bullet, enemy);
			FlxG.collide(enebullet, player);
			
			varSave.eneDama = FlxG.overlap(bullet, enemy);
			varSave.playDama = FlxG.overlap(enebullet, player);
			
		}	
	}
}