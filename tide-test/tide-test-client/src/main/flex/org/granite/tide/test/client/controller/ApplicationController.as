package org.granite.tide.test.client.controller
{
	import org.granite.tide.test.client.module.MainModule;
	
	import org.granite.tide.Tide;
	import org.granite.tide.spring.Context;
	import org.granite.tide.spring.Spring;
	
	public class ApplicationController
	{
		public static var tideContext:Context;
		
		public function ApplicationController()
		{
		}
		
		public static function preinitialize ():void {
			Spring.getInstance().initApplication();
		}
		
		public static function init():void {
			tideContext = Spring.getInstance().getSpringContext();
			var tide:Tide = Tide.getInstance();
			
           	Spring.getInstance().addModule(MainModule);
		}

	}
}
