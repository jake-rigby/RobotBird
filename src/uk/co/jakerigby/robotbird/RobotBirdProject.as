package uk.co.jakerigby.robotbird
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	import starling.core.Starling;
	
	/**
	 * add metadata
	 * [SWF(width="1280",height="720",frameRate="30",backgroundColor="#ffffff")]
	 */	
	public class RobotBirdProject extends Sprite
	{
		public function RobotBirdProject()
		{
			super();
			
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
		}
		
		protected function onAddedToStage(event:Event):void
		{
			Starling.multitouchEnabled = true;
			Starling.handleLostContext = true;
			
			var starling:Starling = new Starling(rootClass, this.stage, new Rectangle(0,0,stage.fullScreenWidth,stage.fullScreenHeight));
			starling.start();
		}
		
		/**
		 * The root class should extent starling.display.Sprite
		 */
		protected function get rootClass():Class
		{
			throw new Error('abstract getter - override');
		}
	}
}