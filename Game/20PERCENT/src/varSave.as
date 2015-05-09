package 
{
	 import org.flixel.*;
	
	public class  varSave
	{
		//player stats
		public static var playerX:Number; //position
		public static var playerY:Number; //position
		public static var plRight:Boolean; //whether currently moving right
		public static var plLeft:Boolean; //whether currently moving left
		public static var playerpow:Number; //power 1 2 or 3
		public static var playerhea:Number; //health
		
		//damage
		public static var playDama:Boolean = false;
		public static var eneDama:Boolean = false;
		
		//state switching
		public static var gameOver:Boolean = false;
		public static var unlocklevs:Number; //level
		
	}
	
}