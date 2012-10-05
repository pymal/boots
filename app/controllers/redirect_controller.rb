class RedirectController < ApplicationController
  def index
    #render :text => params.inspect
    #render :text => request.env['PATH_INFO']
    product = Product.find(:first, :conditions => ["name LIKE ?", "#{params[:path]}%"])
    raise params[:path].exclude("/")
    redirect_to product_path(product)
  end
end
