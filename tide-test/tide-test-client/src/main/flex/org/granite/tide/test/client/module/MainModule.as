package org.granite.tide.test.client.module
{
    import org.granite.tide.ITideModule;
    import org.granite.tide.Tide;
    import org.granite.tide.test.client.controller.AlbumController;
    import org.granite.tide.test.client.controller.LoginController;
    import org.granite.tide.test.client.controller.MainController;
    import mx.logging.Log;
    import mx.logging.targets.TraceTarget;
    
    
    [Bindable]
    public class MainModule implements ITideModule {
        
        public function init(tide:Tide):void {
        	
        	var t:TraceTarget = new TraceTarget();
            t.filters = ["org.granite.*"];
            Log.addTarget(t);
           
           	tide.addComponent("mainController", MainController, false, true, Tide.RESTRICT_YES);
           	tide.addComponent("loginController", LoginController, false, true, Tide.RESTRICT_YES);
           	tide.addComponent("albumController", AlbumController, false, true, Tide.RESTRICT_YES);
            
        }
    }
}
