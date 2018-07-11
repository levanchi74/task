class CategoriesController < ApplicationController

    before_action :set_category,only:[:show,:edit,:update,:destroy]

    def index
        @categories=Category.all
        @q = Category.ransack(params[:q])
        @cate = @q.result(distinct: true)
    end

    # def show
    # end

    def new
        @category=Category.new
    end

    def edit
    end

    def create
        @category=Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else
            render 'new'
        end    
    end

    def update
    end

    def destroy
        @category.destroy
        redirect_to categories_path
    end

    private
    def set_category
        @category=Category.find(pamrams[:id])
    end
    def category_params
        params.require(:category).permit(:name)
    end 
end
