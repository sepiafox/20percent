package  
{
	import org.flixel.*;
	 
	public class MapTilemap3 extends FlxTilemap
	{
		[Embed(source = "data/tilemap18.png")] private var tilemapPng:Class;
		
		[Embed(source = "data/map1.txt", mimeType = "application/octet-stream")] private var mapTxt:Class;
			
		public function MapTilemap3() 
		{
			loadMap(new mapTxt, tilemapPng, 16, 16, 0, 0, 0);
		}
		
	}
 
}