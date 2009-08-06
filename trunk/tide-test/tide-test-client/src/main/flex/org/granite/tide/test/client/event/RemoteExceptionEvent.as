package org.granite.tide.test.client.event
{
	import org.granite.tide.events.AbstractTideEvent;
	
	public class RemoteExceptionEvent extends AbstractTideEvent
	{
        public var data:Object;
        
        public function RemoteExceptionEvent(data:Object = null):void {
       	    super();
            this.data = data;
        }

	}
}
