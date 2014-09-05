class CuisineController < ApplicationController
  before_filter :load_restaurant

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def create
    @cuisine = @restaurant.cuisines.build(review_params)
    @cuisine.user = current_user

    if @cuisine.save
      redirect_to restaurants_path, notice: "Cuisine added successfully!"
    else
      render 'restaurants/show'
    end
  end

  def edit
  end
  
  def destroy
    @cuisine = Cuisine.find(params[:id])
    @cuisine.destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
