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
		
		public function MenuState()
		{	
			
		}
		override public function create():void 
		{
			add(new FlxText(0,0,100,"Menu")); 
			
			add(new FlxSprite(0, 20, Lev1Png)); //more complex sprites to be added later
			add(new FlxSprite(0, 40, Lev2Png));
			add(new FlxSprite(0, 60, Lev3Png));
			add(new FlxSprite(0, 80, Lev4Png));
			
			add(new FlxSprite(0, 120, ReGPng));
			
			add(new FlxSprite(0, 170, ReLPng)); 
		}
		override public function update():void
		{
			super.update(); 
			
		}	
	}
}