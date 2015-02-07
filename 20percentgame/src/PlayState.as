package 
{
	/**
	 * ...
	 * @author sepiafox
	 */
	
	 import org.flixel.system.FlxPreloader;
	 
	public class PlayState 
	{
		
		public function PlayState() extends FlxState
		{
			var background:FlxSprite;//declaring object type of background
			background = new FlxSprite();//assigning background val
			background.makeGraphic(100, 100);//assigning background size
			add(background);//adding the background for use
		}
		
	}

}