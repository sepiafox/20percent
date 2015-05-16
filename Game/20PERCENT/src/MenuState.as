package  
{
	import org.flixel.*;
	 
	public class MenuState extends FlxState
	{		
		[Embed(source = "data/Lev1.png")] private var Lev1Png:Class;
		[Embed(source = "data/Lev2.png")] private var Lev2Png:Class;
		[Embed(source = "data/Lev3.png")] private var Lev3Png:Class;
		[Embed(source = "data/Lev4.png")] private var Lev4Png:Class;
		
		[Embed(source = "data/ReG.png")] private var ReGPng:Class;
		[Embed(source = "data/ReL.png")] private var ReLPng:Class;
		
		private var newplay:PlayState;
		
		//demo cheats
		private var win:GameWinState;
		private var over:GameOverState;
		private var t1:Oneto2State;
		private var t2:Twoto3State;
		private var t3:Threeto4State;
		private var le1:PlayState;
		private var le2:PlayState2;
		private var le3:PlayState3;
		private var le4:PlayState4;
		private var begin:StartState;
		
		public function MenuState()
		{	
			
		}
		override public function create():void 
		{
			newplay = new PlayState();
			
			add(new FlxText(0, 0, 300, "Menu")); 
			add(new FlxText(0, 30, 100, "Press 1 for Level 1")); 
			add(new FlxText(0, 50, 100, "Press 2 for Level 2")); 
			add(new FlxText(0, 70, 100, "Press 3 for Level 3")); 
			add(new FlxText(0, 90, 100, "Press 4 for Level 4")); 
			add(new FlxText(0, 110, 700, "(Keypad Numbers Do Not Work)")); 
			
			//add(new FlxSprite(0, 20, Lev1Png)); //more complex sprites to be added later
			//add(new FlxSprite(0, 40, Lev2Png));
			//add(new FlxSprite(0, 60, Lev3Png));
			//add(new FlxSprite(0, 80, Lev4Png));
			
			//add(new FlxSprite(0, 120, ReGPng));
			
			//add(new FlxSprite(0, 170, ReLPng)); 
			
			//demo cheats
			win = new GameWinState;
			over = new GameOverState;
			t1 = new Oneto2State;
			t2 = new Twoto3State;
			t3 = new Threeto4State;
			le1 = new PlayState;
			le2 = new PlayState2;
			le3 = new PlayState3;
			le4 = new PlayState4;
			begin = new StartState;
		}
		override public function update():void
		{
			if (FlxG.keys.P)
			{
				FlxG.switchState(newplay);
			}
			
			//demo cheats
			if (FlxG.keys.W)
			{
				FlxG.switchState(win);
			}
			if (FlxG.keys.O)
			{
				FlxG.switchState(over);
			}
			if (FlxG.keys.ONE && FlxG.keys.T)
			{
				FlxG.switchState(t1);
			}
			if (FlxG.keys.TWO && FlxG.keys.T)
			{
				FlxG.switchState(t2);
			}
			if (FlxG.keys.THREE && FlxG.keys.T)
			{
				FlxG.switchState(t3);
			}
			if (FlxG.keys.ONE && !FlxG.keys.T)
			{
				FlxG.switchState(le1);
			}
			if (FlxG.keys.TWO && !FlxG.keys.T)
			{
				FlxG.switchState(le2);
			}
			if (FlxG.keys.THREE && !FlxG.keys.T)
			{
				FlxG.switchState(le3);
			}
			if (FlxG.keys.FOUR && !FlxG.keys.T)
			{
				FlxG.switchState(le4);
			}
			if (FlxG.keys.B)
			{
				FlxG.switchState(begin);
			}
			
			super.update(); 
			
		}	
	}
}