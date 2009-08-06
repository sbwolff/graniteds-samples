package org.granite.tide.test.client.module
{
    import mx.logging.Log;
    import mx.logging.targets.TraceTarget;
    
    import org.granite.tide.ITideModule;
    import org.granite.tide.Tide;
    import org.granite.tide.test.client.controller.ArtistController;
    import org.granite.tide.test.client.controller.AlbumController;
    import org.granite.tide.test.client.controller.LoginController;
    import org.granite.tide.test.client.controller.MainController;
    import org.granite.tide.test.client.exceptions.AccessDeniedExceptionHandler;
    import org.granite.tide.test.client.exceptions.NotLoggedInExceptionHandler;
    import org.granite.tide.test.client.exceptions.OptimisticLockExceptionHandler;
    import org.granite.tide.test.client.exceptions.SecurityExceptionHandler;
    import org.granite.tide.test.client.exceptions.ServerExceptionHandler;
    import org.granite.tide.validators.ValidatorExceptionHandler;
    
    
    [Bindable]
    public class MainModule implements ITideModule {
        
        public function init(tide:Tide):void {
        	
        	var t:TraceTarget = new TraceTarget();
            t.filters = ["org.granite.*"];
            Log.addTarget(t);
            
           	tide.addExceptionHandler(ServerExceptionHandler);
           	tide.addExceptionHandler(AccessDeniedExceptionHandler);
           	tide.addExceptionHandler(NotLoggedInExceptionHandler);
           	tide.addExceptionHandler(OptimisticLockExceptionHandler);
           	tide.addExceptionHandler(SecurityExceptionHandler);
           	
			tide.addExceptionHandler(ValidatorExceptionHandler);
           	
           	tide.addComponent("mainController", MainController, false, true, Tide.RESTRICT_YES);
           	tide.addComponent("loginController", LoginController, false, true, Tide.RESTRICT_YES);
           	tide.addComponent("albumController", AlbumController, false, true, Tide.RESTRICT_YES);
           	tide.addComponent("artistController", ArtistController, false, true, Tide.RESTRICT_YES);
            
        }
    }
}
