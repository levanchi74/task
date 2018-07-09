class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update, :show, :destory]

    def index
        @products=Product.all
    end
     
    def show 
    end
     
    def new 
        @product=Product.new
    end

    def edit
    end
    
    def create
        @product=Product.new(product_params)
        if @product.save
            redirect_to products_path
        else 
            render 'new'
        end
    end

    def update
    end

    def destroy
    end

    private
    def set_product
        @product=Product.find(param[:id])
    end
end
