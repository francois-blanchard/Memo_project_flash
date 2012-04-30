package  
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;
	/**
	 * ...
	 * @author 
	 */
	public class Memo extends MovieClip
	{
		
		public function Memo() 
		{
			
			this.addEventListener(MouseEvent.MOUSE_UP, onClick);
		}
		
		private function onClick(e:MouseEvent):void 
		{
			if (ExternalInterface.available) {
				ExternalInterface.call("TestAs", "FLASH","HAHA");
			} else {
				e.target.rotation += 15;
			}
			trace ("click");
		}
		
	}

}