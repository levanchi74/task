class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update, :show, :destroy]

    def index
        @products=Product.all
    end
     
    def show 
    end
     
    def new 
        get_category
        @product=Product.new
        
    end

    def edit
    end
    
    def create
        @category=Category.find(product_params[:category_id])
        @product=@category.products.create(product_params)
        if @product.save
            redirect_to products_path
        else 
            render 'new'
        end
    end

    def update
        if @product.update(product_params)
            redirect_to products_path
        else
            render 'edit'
        end
    end

    def destroy
        @product.destroy 
        redirect_to products_path
    end

    private
    def get_category
        @categorys=Category.all
    end
    def set_product
        @product=Product.find(param[:id])
    end
    def product_params 
        params.require(:product).permit(:name,:price,:decription,:category_id)
    end
end
