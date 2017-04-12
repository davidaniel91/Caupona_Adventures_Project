class ReviewsController < ApplicationController
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = @restaurant.reviews.create(review_params)
        redirect_to restaurant_path(@restaurant)
    end
    
    
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to restaurants_path
    end
    
    def destroy_comment
        
    end
    
    private
    def review_params
        params.require(:review).permit(:commenter, :review, :rating)
    end
end
