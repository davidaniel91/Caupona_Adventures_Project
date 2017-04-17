class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = @restaurant.reviews.create(review_params)
        redirect_to restaurant_path(@restaurant)
       
    end
    
    
    def destroy
        @review = Review.find(params[:review_id])
        @review.destroy
        redirect_to restaurants_path
    end
    
    
    
    def edit
        @review = Review.find(params[:restaurant_id])
    end
    
    def update
        @review = Review.find(params[:id])
        
        if @review.update(review_params)
            redirect_to restaurant_reviews_path(@review)
        else
            render 'edit'
        end
    end
    
    private
    def review_params
        params.require(:review).permit(:commenter, :review, :rating)
    end
end
