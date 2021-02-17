class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:index, :new, :show, :create]

    def all
      @restaurants = Restaurant.all
    end

    def new
      @restaurant = Restaurant.new
    end

    def show
    #   @restaurant
    end

    def create
      
    end

    private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end

# RestaurantsController
#   GET index
#     assigns all restaurants as @restaurants (FAILED - 1)
#   GET show
#     assigns the requested restaurant as @restaurant (FAILED - 2)
#   GET new
#     assigns a new restaurant as @restaurant (FAILED - 3)
#   POST create
#     with valid params
#       creates a new Restaurant (FAILED - 4)
#       assigns a newly created restaurant as @restaurant (FAILED - 5)
#       redirects to the created restaurant (FAILED - 6)
#     with invalid params
#       assigns a newly created but unsaved restaurant as @restaurant (FAILED - 7)
#       re-renders the 'new' template (FAILED - 8)