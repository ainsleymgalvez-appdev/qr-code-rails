Rails.application.routes.draw do
  # Write your routes here. URLs to support:
  
  # /text
  # /url
  # /wifi
  # /sms

  # MY OWN CODE
  
  get("/", {:controller => "application", :action => "homepage"})

  get("/text", {:controller => "application", :action => "text_qr"})
  
  get("/wifi", {:controller => "application", :action => "wifi_qr"})

  get("/url", {:controller => "application", :action => "url_qr"})

  get("/sms", {:controller => "application", :action => "sms_qr"})
 

  # Solutions below.

  get("/solutions/text", {:controller => "solutions", :action => "text_qr"})

  get("/solutions/url", {:controller => "solutions", :action => "url_qr"})

  get("/solutions/wifi", {:controller => "solutions", :action => "wifi_qr"})

  get("/solutions/sms", {:controller => "solutions", :action => "sms_qr"})

end
