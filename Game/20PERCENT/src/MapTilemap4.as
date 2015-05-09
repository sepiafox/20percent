package  
{
	import org.flixel.*;
	 
	public class MapTilemap4 extends FlxTilemap
	{
		[Embed(source = "data/tilemap19.png")] private var tilemapPng:Class;
		
		[Embed(source = "data/map1.txt", mimeType = "application/octet-stream")] private var mapTxt:Class;
			
		public function MapTilemap4() 
		{
			loadMap(new mapTxt, tilemapPng, 16, 16, 0, 0, 0);
		}
		
	}
 
}