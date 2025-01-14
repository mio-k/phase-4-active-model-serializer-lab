class DogsController < ApplicationController
    def index
        dogs = Dog.all 
        render json: dogs
    end
    def show
        dog = Dog.find(params[:id])
        render json: dog, include: ['profile', 'orders', 'orders.items']
    end
end
