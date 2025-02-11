Rails.application.routes.draw do
  get("/", {:controller => "calculation", :action => "homepage"})
  get("/square/new", {:controller => "calculation", :action => "square"})
  get("/square_root/new", {:controller => "calculation", :action => "square_root"})
  get("/random/new", {:controller => "calculation", :action => "random"})
  get("/payment/new", {:controller => "calculation", :action => "payment"})

  get("/square/results", {:controller => "calculation", :action => "do_square"})
  get("/square_root/results", {:controller => "calculation", :action => "do_square_root"})
  get("/random/results", {:controller => "calculation", :action => "do_random"})
  get("/payment/results", {:controller => "calculation", :action => "do_payment"})
end 
