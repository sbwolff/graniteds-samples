package org.granite.tide.test.client.controller
{
	import org.granite.tide.test.client.event.LoggedInEvent;
	import org.granite.tide.test.client.event.LoginEvent;
	
	import org.granite.tide.events.TideFaultEvent;
	import org.granite.tide.events.TideResultEvent;
	import org.granite.tide.spring.Identity;
	
	[Name("loginController")]
	[Bindable]
	public class LoginController
	{
			[In]
	        public var loginUI:Object;
			
			[In]
			public var identity:Identity;
			
			[Observer]   
			public function tryLogin(event:LoginEvent):void {
				identity.login(loginUI.username.text, loginUI.password.text, loginResult, loginFault);        
			}
			  
			public function loginResult(event:TideResultEvent):void {
				loginUI.message = null;
				dispatchEvent(new LoggedInEvent());
			}
			   
			public function loginFault(event:TideFaultEvent):void {
				loginUI.message = event.fault.faultString;
			}
	}
					
}
