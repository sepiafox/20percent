package {
 
    import org.flixel.*;
 
    public class EnemyBulletSprite extends FlxSprite {
	
		private var btimer:Number = 0;
		
		private var tofire:Boolean = false; 
		
		//private var diff:Number;
		
		private var ebuRight:Boolean = false;
		private var ebuLeft:Boolean = false;
		
		[Embed(source = "data/bullet2.png")] private var WalkPng:Class;
		
		public function EnemyBulletSprite(X:Number, Y:Number) {
            super(X,Y);
			
			loadGraphic(WalkPng, true, false);
			
			addAnimation("Down", [0, 1, 2], 10, false);
			addAnimation("Right", [3, 4, 5], 10, false);
			addAnimation("Left", [6, 7, 8], 10, false);
			addAnimation("Up", [9, 10, 11], 10, false);
			
        }
        override public function update():void {
			
			
			maxVelocity.x = 0; // prevent sliding
			
			//diff = Math.abs(varSave.playerY - varSave.enemyY);
			
			
			btimer += FlxG.elapsed;
			
			if (btimer > 1)
			{
				tofire = false;
				btimer = 0;
			}
			else
			{
				tofire = true;
			}
			
			if (velocity.x == 0 && ebuRight == false && ebuLeft == false)
			{
				play("Up");
				x = varSave.enemyX;
				y = varSave.enemyY;
				ebuLeft = false;
				ebuRight = false;
			}
			
			if (varSave.enLface == true && tofire == true)//tofire && varSave.enLface == true)
			{
				ebuLeft = true;
				play("Left");
				velocity.x -= 400;
			}
			else
			{
				ebuLeft = false;
			}

			if (varSave.enRface == true && tofire == true)//tofire && varSave.enRface == true)
			{
				ebuRight = true;
				velocity.x += 400;
				play("Right");	 
			}
			else 
			{
				ebuRight = false; 
			}
			
			
			
            super.update();
        }
        
    }
}