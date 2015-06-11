class ReservationsController < ApplicationController
  before_action :check_if_owner, only: [:edit, :update, :destroy]
#can add :show above if you don't want them to see that too
  def check_if_owner
    reservation = Reservation.find(params[:id])
    if reservation.profile_id != current_user.id
    # send them to another page
    redirect_to "/reservations", notice: "Access Not Granted"
  end
end
  def index
    # @dishes = Dish.all
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create_review
    @reservation = current_reservation.id
    @reservation.status = params[:status]
    @reservation.review_score = params[:review_score]
    @reservation.profile_id = current_user.id
    @reservation.review_comments = params[:review_comments]
    @reservation.fullname = params[:fullname]

    if @reservation.save
      redirect_to "/reservations", :notice => "Review created successfully."
    else
      render 'new'
    end

end 
  def create
    @reservation = Reservation.new
    @reservation.status = "Reserved"
    @reservation.review_score = params[:review_score]
    @reservation.profile_id = current_user.id
    @reservation.dish_id = params[:dish_id]
    @reservation.review_comments = params[:review_comments]
    @reservation.fullname = params[:fullname]    
    # @reservation.dish.number_guests_left = reservation.dish.number_guests_left-1
    if @reservation.profile_id != current_user.id
    @reservation.dish.number_guests_left = @reservation.dish.number_guests_left-1
    @dish.save
end 
    if @reservation.save
      redirect_to "/reservations", :notice => "Reservation created successfully."
    else
      render 'new'
    end

  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])

    @reservation.status = params[:status]
    @reservation.review_score = params[:review_score]
    @reservation.profile_id = params[:profile_id]
    @reservation.dish_id = params[:dish_id]
    @reservation.review_comments = params[:review_comments]

    if @reservation.save
      redirect_to "/reservations", :notice => "Reservation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    @reservation.destroy

    redirect_to "/reservations", :notice => "Reservation deleted."
  end
end
