package  
{
	import org.flixel.*;
	 
	public class PlayState2 extends FlxState
	{
		private var player:PlayerSprite;
		private var enemy:EnemySprite2;
		
		private var bullet:BulletSprite;
		private var enebullet:EnemyBulletSprite;
		
		private var paused:Boolean = false;
		
		private var menu:MenuState;
		private var twoto3:Twoto3State;
		private var over:GameOverState;
		
		private var map:MapTilemap2;
		
		private var save:PlayState;
		
		public static var paused:Boolean;
		
		public var cat:CatSprite;
		public var cattimer:Number = 0;
		
		public var playheanum:FlxText;
		public var eneheanum:FlxText;
		public var playstring:String;
		public var enestring:String;
		
		public function PlayState2()
		{	
			
		}
		override public function create():void 
		{
			map = new MapTilemap2();
			add(map);
			
			player = new PlayerSprite(50, 50);
			enemy = new EnemySprite2(100, 50);
			bullet = new BulletSprite(50, 50);
			enebullet = new EnemyBulletSprite(100, 50);
			
			cat = new CatSprite(0,0);
			
			menu = new MenuState();
			twoto3 = new Twoto3State();
			over = new GameOverState();
			
			paused = false;
			
			add(player);
			add(bullet);
			add(enemy);
			add(enebullet);
			
			add(cat);
			
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);	
			
			playstring = varSave.playerhea + "";
			enestring = varSave.ene1hea + "";
			
			playheanum = new FlxText(18, 225, 100, playstring);
			playheanum.color = 0XFF0000;
			eneheanum = new FlxText(280, 225, 100, enestring);
			eneheanum.color = 0X15FE8D;
			
			add(playheanum);
			add(eneheanum);
			
		}
		override public function update():void
		{
			super.update(); 
			
			if ( (varSave.plLface || varSave.plRface) != 0)
			{
				remove(cat);
			}
			
			//save = this;
			
			//menu w/ toggle
			if (FlxG.keys.P)
			{
				FlxG.switchState(menu);
			}

			
			//to next state
			//if ()
			//{
			//	
			//}

			FlxG.collide(player, map);
			FlxG.collide(enemy, map);
			FlxG.collide(player, enemy);
			
			FlxG.collide(bullet, map);
			FlxG.collide(enebullet, map);
			FlxG.collide(bullet, enemy);
			FlxG.collide(enebullet, player);
			
			varSave.eneDama = FlxG.overlap(bullet, enemy);
			varSave.playDama = FlxG.overlap(enebullet, player);
			
			
			playstring = varSave.playerhea + "";
			enestring = varSave.ene2hea + "";
			
			
			remove(playheanum);
			remove(eneheanum);
			
			playheanum = new FlxText(18, 225, 100, playstring);
			playheanum.color = 0XFF0000;
			eneheanum = new FlxText(280, 225, 100, enestring);
			eneheanum.color = 0X15FE8D;
			
			add(playheanum);
			add(eneheanum);
			
			if (varSave.ene2hea == 0)
			{
				FlxG.switchState(twoto3);
			}
			
			if (varSave.playerhea == 0)
			{
				FlxG.switchState(over);
			}
			
		}	
	}
}