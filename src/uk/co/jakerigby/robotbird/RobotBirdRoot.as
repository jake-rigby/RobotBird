package uk.co.jakerigby.robotbird
{
	import starling.display.Sprite;
	
	public class RobotBirdRoot extends Sprite
	{
		public function RobotBirdRoot()
		{
			super();
			new RobotBirdContext(this);
		}
	}
}