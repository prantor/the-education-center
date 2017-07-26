package masksClasses 
{
	import caurina.transitions.Tweener;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.GradientType;
	import flash.display.MovieClip;
	import flash.display.SpreadMethod;
	import flash.events.Event;
	import flash.geom.Matrix;
	
	/**
	 * ...
	 * @author flashcreed
	 */
	public class boxes extends MovieClip
	{
		
		private var box1:MovieClip;
		private var box2:MovieClip;
		var i:uint = 0;
		
		public function boxes() 
		{
			init();
		}
		
		private function init():void
		{
			for (i = 0; i < 7; i++)
			{
				var radians:Number = 90 * Math.PI / 180; 
				var matr:Matrix = new Matrix();
				matr.createGradientBox(1000, 500, radians, 0, 0);
				box1 = new MovieClip();
				box1.graphics.clear();
				box1.graphics.beginGradientFill(GradientType.RADIAL, [0x800000, 0xFFFFFF], [i*.2, i*.2], [0, 255], matr, SpreadMethod.PAD);
				box1.graphics.drawRect( -500, -500, 1000, 1000);
				box1.graphics.endFill();
				
				box1.scaleX = 0;
				box1.scaleY = 0;
				box1.x = box1.y = 500;
				box1.cacheAsBitmap = true;
				this.addChild(box1);
				
				Tweener.addTween(box1, { time:2, scaleX:1, scaleY:1, delay:i * .2} );
			}
		}
	}

}