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
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = @restaurant.reviews.find(params[:id])
        @review.destroy
        redirect_to restaurant_path(@restaurant)
    end
    
    
    
    def edit
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = @restaurant.reviews.find(params[:id])
    end
    
    def update
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = @restaurant.reviews.find(params[:id])
        
        if @review.update(review_params)
            redirect_to @restaurant
        else
            render 'edit'
        end
    end    
    
    private
    def review_params
        params.require(:review).permit(:commenter, :review, :rating)
    end
end
