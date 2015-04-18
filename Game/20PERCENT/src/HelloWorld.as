package
{
	import org.flixel.*; 
	[SWF(width = "640", height = "480", backgroundColor = "#000000")] 
	[Frame(factoryClass="Preloader")] 
 
	public class HelloWorld extends FlxGame
	{
		private var one:Boolean;
		private var two:Boolean;
		private var three:Boolean;
		private var four:Boolean;
		
		public function HelloWorld()
		{
			super(320, 240, PlayState, 2);
			//if (PlayState.paused = true)
			//{
				//FlxG.switchState(MenuState); //gives error
			//}
			forceDebugger = false; // might not need
		}
	}
}