class ReviewController < ApplicationController
    def show
        @review = Review.find(params[:id])
    end
    
    def new
        @review = Review.new
    end
    
    def create
        @review = Review.new(review_params)
        
        if @review.save
            redirect_to @review
        else
            render 'new'
        end
    end
    
    def index
        @reviews = Review.all
    end
    
    def edit
        @review = Review.find(params[:id])
    end
    
    def update
        @review = Review.find(params[:id])
        
        if @review.update(review_params)
               redirect_to @review
        else
            render 'edit'
        end
    end
    
    def destroy
        @review = Article.find(params[:id])
        @review.destroy
        redirect_to review_path
    end
    
    
end

private
def review_params
    params.require(:review).permit(:title, :text)
end
