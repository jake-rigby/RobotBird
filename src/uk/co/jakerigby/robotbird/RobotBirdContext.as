package uk.co.jakerigby.robotbird
{
	import org.robotlegs.mvcs.StarlingContext;
	
	import starling.display.DisplayObjectContainer;
	
	public class RobotBirdContext extends StarlingContext
	{
		public function RobotBirdContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			injector.mapValue(RobotBirdRoot, contextView);
			mappings();
			super.startup();
		}
		
		/**
		 * Entry point - override
		 */
		protected function mappings():void {}
	}
}