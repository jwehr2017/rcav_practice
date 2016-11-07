Rails.application.routes.draw do
  # Instructions Page
  get('/', { :controller => "calculations", :action => "instructions" })
  # Get Square
  get('/square/:id', { :controller => "calculations", :action => "square" })
  # Get Square Root
  get('/square_root/:id', { :controller => "calculations", :action => "square_root" })
  # Get Random Number
  get('/random/:id_low/:id_high', { :controller => "calculations", :action => "random" })
  # Get Loan Payment
  get('/payment/:rate/:year/:loan', { :controller => "calculations", :action => "payment" })
end
