class ExploreController < ApplicationController
  def index
   # if dish.profile_id != current_profile_id.id
    @q = Dish.ransack(params[:q])
    @dishes = @q.result
  end

  def show
    # if dish.user_id != current_user.id
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
    @dish.date_offered = params[:date_offered]
    @dish.price_offered = params[:price_offered]
    @dish.max_guests = params[:max_guests]
    @dish.number_guests_left = params[:number_guests_left]
    @dish.profile_id = params[:profile_id]
    @dish.cuisine_type = params[:cuisine_type]
    @dish.location = params[:location]
    @dish.dish_description = params[:dish_description]

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
    @dish.date_offered = params[:date_offered]
    @dish.price_offered = params[:price_offered]
    @dish.max_guests = params[:max_guests]
    @dish.number_guests_left = params[:number_guests_left]
    @dish.profile_id = params[:profile_id]
    @dish.cuisine_type = params[:cuisine_type]
    @dish.location = params[:location]
    @dish.dish_description = params[:dish_description]

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

   def confirmation
    
 end
end
