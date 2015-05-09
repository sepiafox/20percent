package  
{
	import org.flixel.*;
	 
	public class MapTilemap2 extends FlxTilemap
	{
		[Embed(source = "data/tilemap17.png")] private var tilemapPng:Class;
		
		[Embed(source = "data/map1.txt", mimeType = "application/octet-stream")] private var mapTxt:Class;
			
		public function MapTilemap() 
		{
			loadMap(new mapTxt, tilemapPng, 16, 16, 0, 0, 0);
		}
		
	}
 
}