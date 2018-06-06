public with sharing class Unsing_lightningcomponent_invf {
     public String RenderedContentType {get;set;}
    public String RenderingService {get; set;}
 public void setRenderAs() {
        RenderedContentType = 'application/pdf';
       RenderingService = 'Pdf';
    }
}