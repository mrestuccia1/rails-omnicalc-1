Rails.application.routes.draw do
  get('/', {:controller => "omnicalc", :action => 'render_home'})

  get("/square/new", {:controller => "omnicalc", :action => "square"})

  get("/square_root/new", {:controller => "omnicalc", :action => "square_root"})
  
  get("/random/new", {:controller => "omnicalc", :action => "random"}) 
  
  get("/payment/new", {:controller => "omnicalc", :action => "payment"})

  get("/square/results", {:controller => "omnicalc", :action => "square_res"})
  
  get("/square_root/results", {:controller => "omnicalc", :action => "square_root_res"})
  
  get("/random/results", {:controller => "omnicalc", :action => "random_res"})
  
  get("/payment/results", {:controller => "omnicalc", :action => "payment_res"})
end
