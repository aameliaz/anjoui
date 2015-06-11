class DishesController < ApplicationController
 #  before_action :check_if_owner, only: [:edit, :update, :destroy]

 # def check_if_owner
 #    dish = Dish.find(params[:id])
 #    if dish.profile_id != current_user.id
 #    # send them to another page
 #    redirect_to "/dish", notice: "Access Not Granted"
 #  end
  
  def index
    # if dish.user_id = current_user.id
    @q = Dish.ransack(params[:q])
    @dishes = @q.result
    
  end

  def show
    # if dish.user_id = current_user.id
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new
    @dish.ingredients = params[:ingredients]
    @dish.photo = params[:photo]
    @dish.dish_name = params[:dish_name]
    @dish.date_offered = Chronic.parse(params[:date_offered])
    @dish.price_offered = params[:price_offered]
    @dish.max_guests = params[:max_guests]
    @dish.number_guests_left = @dish.max_guests
    @dish.profile_id = current_user.id
    @dish.cuisine_type = params[:cuisine_type]
    @dish.location = params[:location]
    @dish.dish_description = params[:dish_description]
    @dish.fullname = params[:fullname]

    if @dish.save
      redirect_to "/dishes", :notice => "Dish created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])

    @dish.ingredients = params[:ingredients]
    @dish.photo = params[:photo]
    @dish.dish_name = params[:dish_name]
    @dish.date_offered = Chronic.parse(params[:date_offered])
    @dish.price_offered = params[:price_offered]
    # if params[:max_guests] < @dish.number_guests_left
    #   redirect_to "/dishes/<%= @dish.id %>/edit", :notice => "Note: Others have reserved your dish already, your new availability is below what you previously offered, we will notify other guests"
    # else
    #   @dish.max_guests = params[:max_guests]
    # end
    
    #@dish.number_guests_left = @dish.max_guests
    # @dish.profile_id = current_user.id
    @dish.cuisine_type = params[:cuisine_type]
    @dish.location = params[:location]
    @dish.dish_description = params[:dish_description]
    @dish.fullname = params[:fullname]

    if @dish.save
      redirect_to "/dishes", :notice => "Dish updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dish = Dish.find(params[:id])

    @dish.destroy

    redirect_to "/dishes", :notice => "Dish deleted."
  end
end
