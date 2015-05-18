package
{
	import org.flixel.*; 
	[SWF(width = "640", height = "480", backgroundColor = "#000000")] 
	[Frame(factoryClass="Preloader")] 
 
	public class HelloWorld extends FlxGame
	{
		//level save
		private var one:Boolean;
		private var two:Boolean;
		private var three:Boolean;
		private var four:Boolean;
		
		//wind selection
		private var bot:Number;
		private var top:Number;
		private var rig:Number;
		private var lef:Number;
		private var windy:Boolean;
		
		//player save
		private var healthsave:Number;
		private var powsave:Number;
		private var bluesave:Boolean;
		private var yellowsave:Boolean;
		
		
		public function HelloWorld()
		{
			super(320, 240, StartState, 2); //change back to playstate
			//if (PlayState.paused = true)
			//{
				//FlxG.switchState(MenuState); //gives error
			//}
			forceDebugger = false; // might not need
		}
		
		//public function accessWind()
		//{
			
			//if (x > bot && x < top && y > rig && y < lef) 
			//	{ 
			//	windy = true; 
			//}
			//else 
			//{ 
			//	windy = false; 
			//}
		//}
	}
}