package org.granite.tide.test.client.model
{
	
	[Bindable]
	[RemoteClass(alias="org.granite.tide.test.domain.model.User")]
	public class User
	{
		public function User()
		{
		}
		
		public var Login:String;
		public var name:String;

	}
}
