package masksClasses 
{
	import caurina.transitions.Tweener;
	import flash.display.GradientType;
	import flash.display.MovieClip;
	import flash.display.SpreadMethod;
	import flash.geom.Matrix;
	
	/**
	 * ...
	 * @author flashcreed
	 */
	public class close extends MovieClip
	{
		
		private var _line1:MovieClip;
		private var _lineArray:Array;
		private var _backGround1:MovieClip;
		private var _backGround2:MovieClip;
		
		public function close() 
		{
			init();
		}
		
		private function init():void
		{
			addBack();
		}
		
		private function addBack():void
		{
			for (var i:uint = 0; i < 9; i++)
			{
				var radians:Number = 90 * Math.PI / 180; 
				var matr:Matrix = new Matrix();
				matr.createGradientBox(1000, 500, radians, 0, 0);
				_backGround1 = new MovieClip();
				_backGround1.graphics.clear();
				_backGround1.graphics.beginGradientFill(GradientType.LINEAR, [0x800000, 0xFFFFFF], [1, .5], [0, 255], matr, SpreadMethod.PAD);
				_backGround1.graphics.drawRect(0, 0, 1000, 500);
				_backGround1.graphics.endFill();
				
				_backGround1.scaleY = 0;
				this.addChild(_backGround1);
				_backGround1.cacheAsBitmap = true;
				Tweener.addTween(_backGround1, { time:2, scaleY:1, delay:i * .3 } );
				
				_backGround2 = new MovieClip();
				_backGround2.graphics.clear();
				_backGround2.graphics.beginGradientFill(GradientType.LINEAR, [0xFFFFFF, 0x800000], [.5, 1], [255, 0], matr, SpreadMethod.PAD);
				_backGround2.graphics.drawRect(0, -500, 1000, 500);
				_backGround2.graphics.endFill();
				
				_backGround2.scaleY = 0;
				_backGround2.y = 1000;
				this.addChild(_backGround2);
				_backGround2.cacheAsBitmap = true;
				Tweener.addTween(_backGround2, { time:2, scaleY:1,delay:i*.3 } );
			}
		}
	}

}