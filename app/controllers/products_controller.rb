class ProductsController < ApplicationController
  def new
    @product = Product.new
    @categories = Category.find(:all)
  end

  def create
    #@product = Product.new(params[:product].reject!{|key| key == :categories} )
    #@product.categories << Category.find(params[:product][:categories])
    @product = Product.new(params[:product])
    if @product.save
      
    else
      
    end
  end
end
