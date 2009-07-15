package org.granite.tide.test.client.event
{
	import org.granite.tide.events.AbstractTideEvent;
	
	public class LoggedInEvent extends AbstractTideEvent
	{
        public var data:Object;
        
        public function LoggedInEvent(data:Object = null):void {
       	    super();
            this.data = data ;
        }

	}
}
