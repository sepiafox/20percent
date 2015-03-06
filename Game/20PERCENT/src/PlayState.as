package
{
	import mx.core.FlexSprite;
	import org.flixel.*;
	
 
	public class PlayState extends FlxState
	{
		override public function create():void
		{
			FlxG.bgColor = 0xff696969;
			var hello:FlxText = new FlxText(200, 0, 100, "Hello, World!");
			hello.color = 0xff00FFFF;
			add(hello); //adds a 100px wide text field at position 0,0 (upper left)
			
			
			var background:FlxSprite = new FlxSprite();
			background.makeGraphic(100, 100);
			add(background);
			
			
			
			
			
		}
		override public function update():void
		{
			super.update();
		}
	}
}