package org.granite.tide.test.client.event
{
	import org.granite.tide.events.AbstractTideEvent;
	
	public class LoginEvent extends AbstractTideEvent
	{
        public var data:Object;
        
        public function LoginEvent(data:Object = null):void {
       	    super();
            this.data = data ;
        }

	}
}
