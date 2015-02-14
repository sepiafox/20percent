package 
{
	/**
	 * ...
	 * @author sepiafox
	 */
	
	 import.org.flixel.*;
	 [SWF(width = "640", height = "480", backgroundColor = "#000000")]
	 [Frame(factoryClass="PreLoader")]
	public class Supersede extends FlxGame
	{
		
		public function Supersede() 
		{
			super(320,240,PlayState,2);
			forceDebugger = false; // remove later
		}
		
	}

}