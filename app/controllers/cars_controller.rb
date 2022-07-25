class CarsController < ApplicationController
        def index
            @cars = Car.all
        end

        def edit
            @car = Car.find(params[:id])
            
        end

        def show
            @car = Car.find(params[:id])
        end

        def new
            @car = Car.new
        end

        def create
            @car = Car.new(car_params)
            if  @car.save
                redirect_to @car
            else
                render :new , status: unprocessable_entity
            end
        end

        def update
                @car = Car.find(params[:id])
                if @car.save
                    redirect_to @car
                else
                    render :edit ,status: unprocessable_entity
                end
        end

        def destroy
            @car = Car.find(params[:id])
            @car.destroy    
            redirect_to root_path , status: :see_other
        
        end

        private
        def car_params
                params.require(:car).permit(:name ,:buy_year , :number_plate , :color)             
        end
    
end
