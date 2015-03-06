package
{
	import org.flixel.*; 
	[SWF(width = "640", height = "480", backgroundColor = "#000000")] 
	[Frame(factoryClass="Preloader")] 
 
	public class HelloWorld extends FlxGame
	{
		public function HelloWorld()
		{
			super(320, 240, PlayState, 2);
			forceDebugger = false; // might not need
		}
	}
}