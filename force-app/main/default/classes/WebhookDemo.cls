@RestResource(urlMapping='/pushDetailsDemo/*')
global with sharing class WebhookDemo {
    
    @HttpPost
    global static void handleNotification() {
        System.debug('******* handleNotification method invoked ******');
        try{
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
            
            String hashedval = request.headers.get('X-Hub-Signature-256');
            System.debug('******* Hashed Val******'+hashedval);
            Blob bB = request.requestBody;
            System.debug(bB.toString());
            
            
        }catch(Exception e){
            System.debug('Exception: '+e.getMessage());
        }
        
    }
}