class CommentController < ApplicationController
    

    def new
        @comment=Comment.new
    end
    def create
        @comment=Comment.new(comment_params)
        if @comment.save
            redirect_to product_path
        else
            render 'new'
        end

    end
    
    def destroy
        @comment.destroy
        redirect_to product_path 
    end

    private

    def comment_params
        params.require(:comment).permit(:body,:user_id,:product_id)
    end

end
