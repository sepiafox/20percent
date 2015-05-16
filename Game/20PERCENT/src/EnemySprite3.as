package {
 
    import org.flixel.*;
 
    public class EnemySprite3 extends FlxSprite {
    
        private var jump:Number = 0;
		
		//enemy movement variables
		private var tojump:Boolean = false;
		private var toleft:Boolean = false;
		private var toright:Boolean = false;
		private var totele:Boolean = false;
		
		private var distx:Number;
		private var disty:Number;
		
		private var jtimer:Number = 0;
		
		[Embed(source = "data/walk6.png")] private var WalkPng:Class;
		
		public function EnemySprite3(X:Number, Y:Number) {
            super(X,Y);
			
			//speed enemy
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
			acceleration.y = 200; //gravity 
            maxVelocity.y = 800; //falling max v
			maxVelocity.x = 0; // prevent sliding
			
			tojump = false;
			toleft = false;
			toright = false;
			totele = false;
			
			varSave.enemyX = x;
			varSave.enemyY = y;
			
			distx = Math.abs(varSave.playerX - x);
			disty = Math.abs(varSave.playerY - y);
			
			
			//AI
			if (varSave.playerX > x && distx > 50)
			{
				toleft = false;
				toright = true;
			}
			
			if (varSave.playerX < x && distx > 50)
			{
				toright = false;
				toleft = true;
			}
			
			if (varSave.playerY < y)
			{
				tojump = true;
			}
			else
			{
				tojump = false;
			}
			
			
			//platform jumping, complete with double jumping enabler
			if(velocity.y == 0 && tojump == true && disty > 50)
            { 
				velocity.y = -180;	
            }
			
			
			//movement
			if (toright == true)
			{
				velocity.x += 130;
				play("Right");
				varSave.enLface = false;
				varSave.enRface = true;
				varSave.engoR = true;
			}
			else
			{
				varSave.engoR = false;
			}
			if (toleft == true)
			{
				velocity.x -= 130;
				play("Left");
				varSave.enRface = false;
				varSave.enLface = true;
				varSave.engoR = true;
			}
			else
			{
				varSave.engoL = false;
			}
			//damage
			if (varSave.eneDama == true)
			{
				varSave.ene3hea--;
			}
			
            super.update();
        }
        
    }
}