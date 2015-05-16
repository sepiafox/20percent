package 
{
	 import org.flixel.*;
	
	public class  varSave
	{
		//player stats
		public static var playerX:Number; //coordinate position
		public static var playerY:Number; 
		
		public static var plRface:Boolean; //whether currently facing a direction
		public static var plLface:Boolean; 
		
		public static var plgoR:Boolean; //whether currently going a direction
		public static var plgoL:Boolean;
		
		//public static var playerpow:Number; //power 1 2 or 3 //last if at all, multiple bullet types required
		public static var playerhea:Number = 100; //health 
		
		public static var playDama:Boolean = false; //whether currently being damaged
		
		///enemy stats
		public static var enemyX:Number; 
		public static var enemyY:Number;
		
		public static var enRface:Boolean;
		public static var enLface:Boolean;
		
		public static var engoR:Boolean;
		public static var engoL:Boolean;
		
		public static var ene1hea:Number = 20; //all enemy healths of each level
		public static var ene2hea:Number = 40;
		public static var ene3hea:Number = 60;
		public static var ene4hea:Number = 100;
		
		public static var eneDama:Boolean = false;
		
		//state control
		public static var gameOver:Boolean = false; //game over state link
		public static var gameWin:Boolean = false; //game win state link
		
		//menu control 
		public static var OneLock:Boolean;
		public static var TwoLock:Boolean;
		public static var ThreeLock:Boolean;
		public static var FourLock:Boolean;
		
		
		
	}
	
}